package com.aktv.project.config;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.EnumerablePropertySource;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.env.PropertySource;
import org.springframework.util.StringUtils;

import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Pattern;

public class PropertiesLogger {

  // Properties dont les valeurs seront remplacées
  public static final String PROPERTIES_TO_NOT_LOG_LIST_KEY = "properties.to.not.log.list";
  public static final String PROPERTIES_TO_NOT_LOG_REGEX_KEY = "properties.to.not.log.regex";
  // Properties dont les valeurs seront masquées
  public static final String PROPERTIES_TO_HIDE_LIST_KEY = "properties.to.hide.list";
  public static final String PROPERTIES_TO_HIDE_REGEX_KEY = "properties.to.hide.regex";
  private static final Logger LOGGER = LoggerFactory.getLogger(PropertiesLogger.class);

  public static void logEffectiveIterableProperties(ConfigurableEnvironment env) {
    try {
      logEffectiveIterablePropertiesInternal(env);
    } catch (Exception e) {
      LOGGER.error("Can't log effective iterable properties", e);
    }
  }


  private static void logEffectiveIterablePropertiesInternal(ConfigurableEnvironment env) {
    if (!LOGGER.isInfoEnabled()) {
      return;
    }
    Map<String, String> map = getPropertiesToLog(env);
    Map<String, String> orderedMap = new TreeMap<>(map);
    logProperties(orderedMap);
  }


  @VisibleForTesting
  static Map<String, String> getPropertiesToLog(ConfigurableEnvironment env) {
    Map<String, String> effectiveProperties = getEffectiveIterableProperties(env);
    return filterProperties(effectiveProperties);
  }


  private static void logProperties(Map<String, String> propertiesToLog) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Effective iterable properties are:\n");
    for (Map.Entry<String, String> entry : propertiesToLog.entrySet()) {
      stringBuilder
              .append("Key=[").append(entry.getKey()).append("]").append(" ")
              .append("Value=[").append(escapeColorsProperties(entry)).append("]\n");
    }
    LOGGER.info(stringBuilder.toString());
  }

  private static String escapeColorsProperties(Map.Entry<String, String> entry) {
    if (entry.getKey().startsWith("TEXT_")
            || entry.getKey().startsWith("BACKGROUND_")
            || entry.getKey().startsWith("UNDERLINE_")
            || entry.getKey().equals("BOLD")
            ) {
      return "";
    } else {
      return entry.getValue();
    }
  }

  private static Map<String, String> getEffectiveIterableProperties(ConfigurableEnvironment env) {
    Set<String> allIterablePropertyNames = getAllIterableProperties(env.getPropertySources());
    Map<String, String> effectiveProperties = Maps.newHashMap();
    for (String propertyName : allIterablePropertyNames) {
      String propertyValue;
      try {
        propertyValue = env.getProperty(propertyName);
      } catch (Exception e) {
        // Une exception peut etre levée si par exemple on a une property xxx=${basedir}/subfolder et que ${basedir} n'existe pas...
        LOGGER.warn("It seems the property with name [" + propertyName + "] has an unresolvable value. " +
                "It may be because this property value contains itself another unreachable placeholder. Message=" + e.getMessage());
        propertyValue = "UNRESOLVABLE_PROPERTY_VALUE";
      }
      effectiveProperties.put(propertyName, propertyValue);
    }
    return ImmutableMap.copyOf(effectiveProperties);
  }


  private static Map<String, String> filterProperties(Map<String, String> effectiveProperties) {
    LOGGER.debug("Start of filtering properties");
    // On utilise une copie car on ne peut pas supprimer une clé d'une map sur laquelle on itere...
    Map<String, String> copy = Maps.newHashMap();
    copy.putAll(effectiveProperties);
    ///////////////////////////////////////
    String propertiesList = effectiveProperties.get(PROPERTIES_TO_NOT_LOG_LIST_KEY);
    if (StringUtils.hasText(propertiesList)) {
      Set<String> propertiesToRemove = Sets.newHashSet(Splitter.on(";").split(propertiesList));
      for (String propertyName : effectiveProperties.keySet()) {
        if (propertiesToRemove.contains(propertyName)) {
          String newValue = "LOGGING DISABLED BECAUSE OF PROPERTY " + PROPERTIES_TO_NOT_LOG_LIST_KEY;
          LOGGER.debug("Value modified for property {} = {}", propertyName, newValue);
          copy.put(propertyName, newValue);
        }
      }
    }
    ///////////////////////////////////////
    String propertiesRegex = effectiveProperties.get(PROPERTIES_TO_NOT_LOG_REGEX_KEY);
    if (StringUtils.hasText(propertiesRegex)) {
      Pattern regexPattern = Pattern.compile(propertiesRegex);
      for (String propertyName : effectiveProperties.keySet()) {
        if (regexPattern.matcher(propertyName).matches()) {
          String newValue = "LOGGING DISABLED BECAUSE OF PROPERTY " + PROPERTIES_TO_NOT_LOG_REGEX_KEY;
          LOGGER.debug("Value modified for property {} = {}", propertyName, newValue);
          copy.put(propertyName, newValue);
        }
      }
    }
    ///////////////////////////////////////
    String propertiesToHideList = effectiveProperties.get(PROPERTIES_TO_HIDE_LIST_KEY);
    if (StringUtils.hasText(propertiesToHideList)) {
      Set<String> propertiesToHide = Sets.newHashSet(Splitter.on(";").split(propertiesToHideList));
      LOGGER.debug("Properties removed for properties {}", propertiesToHide);
      copy.keySet().removeAll(propertiesToHide);
    }
    ///////////////////////////////////////
    String propertiesToHideRegex = effectiveProperties.get(PROPERTIES_TO_HIDE_REGEX_KEY);
    if (StringUtils.hasText(propertiesToHideRegex)) {
      Pattern regexPattern = Pattern.compile(propertiesToHideRegex);
      for (String propertyName : effectiveProperties.keySet()) {
        if (regexPattern.matcher(propertyName).matches()) {
          LOGGER.debug("Property removed for property {}", propertyName);
          copy.remove(propertyName);
        }
      }
    }
    LOGGER.debug("End of filtering properties");
    return ImmutableMap.copyOf(copy);
  }


  private static Set<String> getAllIterableProperties(MutablePropertySources propertySources) {
    Set<String> allIterableProperties = Sets.newHashSet();
    for (PropertySource propertySource : propertySources) {
      if (propertySource instanceof EnumerablePropertySource) {
        EnumerablePropertySource enumerablePropertySource = (EnumerablePropertySource) propertySource;
        Set<String> currentPropertySourceProperties = Sets.newHashSet(enumerablePropertySource.getPropertyNames());
        allIterableProperties.addAll(currentPropertySourceProperties);
      }
    }
    return allIterableProperties;
  }


}