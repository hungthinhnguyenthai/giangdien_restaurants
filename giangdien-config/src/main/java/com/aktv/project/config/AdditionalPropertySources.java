package com.aktv.project.config;

import com.google.common.base.Optional;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.PropertySource;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import java.util.Arrays;
import java.util.List;

import static com.google.common.base.Preconditions.checkState;

public class AdditionalPropertySources {

  private static final Logger LOGGER = LoggerFactory.getLogger(AdditionalPropertySources.class);

  private static final Optional<String> YAML_LOCATION = Optional.<String>absent()
    .or(Optional.fromNullable(System.getProperty("giangdien.env.yaml_properties")))
    .or(Optional.fromNullable(System.getenv("giangdien_env_yaml_properties")));

  private static final String COMMON_PROPERTIES_URL = "classpath:config/common.properties";

  private static final ResourceLoader RESOURCE_LOADER = new DefaultResourceLoader();

  private static Resource getResource(String url) {
    try {
      return RESOURCE_LOADER.getResource(url);
    } catch (Exception e) {
      throw new IllegalStateException("Can't load resource with url = " + url, e);
    }
  }

  private static PropertySource getYamlPropetySource(String name, String resourcePath) {
    Resource resource = getResource(resourcePath);
    LOGGER.info("Will try to load Yaml property source [{}] resource with resource [{}]", name, resource.getDescription());
    return new YamlPropertiesSource(name, resource);
  }

  private static PropertySource getPropertiesPropertySource(String name, String resourcePath) {
    Resource resource = getResource(resourcePath);
    LOGGER.info("Will try to load Properties property source [{}] resource with resource [{}]", name, resource.getDescription());
    return new CustomResourcePropertySource(name, resource);
  }

  private static Optional<PropertySource> getPlatformPropertySource(String activeProfile) {
//    if ("local".equals(activeProfile)) {
//      return Optional.of(getYamlPropetySource(
//        "Local platform (hardcoded.yaml in classpath) properties",
//        "classpath:/config/local/platform.yaml"
//      ));
//    } else if ("integration_tests".equals(activeProfile)) {
//      return Optional.of(getYamlPropetySource(
//        "Integration tests platform.yaml (hardcoded in classpath) properties",
//        "classpath:/config/integration_tests/platform.yaml"
//      ));
//    } else if (YAML_LOCATION.isPresent()) {
//      return Optional.of(getYamlPropetySource(
//        "Platform properties",
//        YAML_LOCATION.get()
//      ));
//    } else {
//      LOGGER.warn("No platform property source ???");
//      return Optional.absent();
//    }

//    if (YAML_LOCATION.isPresent()) {
//      return Optional.of(getYamlPropetySource(
//              "Platform properties",
//              YAML_LOCATION.get()
//      ));
//    }
//    else {
//      LOGGER.warn("No platform property source ???");
      return Optional.absent();
//          }
  }


  /**
   * http://blog.springsource.org/2011/02/15/spring-3-1-m1-unified-property-management/
   *
   * @return
   */
  public static List<PropertySource> get(String activeProfile) {
    List<PropertySource> propertySourceList = Lists.newLinkedList();
    try {
      String profilePropertiesUrl = "classpath:config/" + activeProfile + "/" + activeProfile + ".properties";

      Optional<PropertySource> platformProperties = getPlatformPropertySource(activeProfile);
      PropertySource profileProperties = getPropertiesPropertySource("Profile " + activeProfile + " properties", profilePropertiesUrl);
      PropertySource commonProperties = getPropertiesPropertySource("Common properties", COMMON_PROPERTIES_URL);
      if (platformProperties.isPresent()) {
        propertySourceList.add(platformProperties.get());
      }
      propertySourceList.add(profileProperties);
      propertySourceList.add(commonProperties);
    } catch (Exception e) {
        LOGGER.error("", e);
        throw new IllegalStateException("Unable to get additional property sources", e);
    }
    return propertySourceList;
  }

  private static String activeProfile(ConfigurableEnvironment env) {
    String activeProfile = Optional.<String>absent()
      .or(Optional.fromNullable(pickFirstProfile(System.getProperty("spring.profiles.active"))))
      .or(Optional.fromNullable(pickFirstProfile(System.getenv("spring_profiles_active"))))
      .or(Optional.fromNullable(pickFirstProfile(env)))
      .orNull();

    checkState(
      activeProfile != null,
      "The spring profile for GiangDien couldn't be found! You can either:\n" +
        "- Use JVM option '-Dspring.profiles.active=myprofile'\n" +
        "- Use env 'export spring_profiles_active=myprofile'\n" +
        "- use @ActiveProfiles on your unit test (before the @ContextConfiguration annotation)'\n" +
        " If this happens on a developper computer, you should add 'export spring_profiles_active=dev' in your .bash_rc"
    );

    return activeProfile;
  }

  /**
   * Gets the first spring active profile from the environment
   * @param env the spring configurable environment
   * @return the first profile
   */
  private static String pickFirstProfile(ConfigurableEnvironment env) {
    return pickFirstProfile(env.getActiveProfiles());
  }

  /**
   * Gets the first spring active profile from a string of profiles
   * @param profiles a string containing a comma-separated list of profiles
   * @return the first profile
   */
  private static String pickFirstProfile(String profiles) {
    if (profiles == null) {
      return null;
    }
    String[] profilesArray = profiles.split(",");
    return pickFirstProfile(profilesArray);
  }

  /**
   * Gets the first spring active profile from an array of profiles
   * @param profiles an array of profiles
   * @return the first profile
   */
  private static String pickFirstProfile(String[] profiles) {
    return Iterables.getFirst(Arrays.asList(profiles), null);
  }

  public static void appendTo(ConfigurableEnvironment env) {
    String activeProfile = activeProfile(env);
    for (PropertySource propertySource : env.getPropertySources()) {
      LOGGER.info("Already registered PropertySource found = {}", propertySource);
    }
    for (PropertySource propertySource : get(activeProfile)) {
      LOGGER.info("Adding PropertySource to MutablePropertySources = {}", propertySource);
      env.getPropertySources().addLast(propertySource);
    }
    PropertiesLogger.logEffectiveIterableProperties(env);
  }


}
