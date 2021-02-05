package com.aktv.project.config;


import com.google.common.base.Preconditions;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.io.Resource;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Properties;

public class CustomResourcePropertySource extends PropertiesPropertySource {

  /**
   * Create a PropertySource having the given name based on Properties
   * loaded from the given resource.
   */
  public CustomResourcePropertySource(String name, Resource resource, Charset charset) {
    super(name, loadPropertiesForResource(resource, charset));
  }

  /**
   * Create a PropertySource having the given name based on Properties
   * loaded from the given resource.
   */
  public CustomResourcePropertySource(String name, Resource resource) {
    super(name, loadPropertiesForResource(resource, StandardCharsets.UTF_8));
  }

  /**
   * Create a PropertySource based on Properties loaded from the given resource.
   * The name of the PropertySource will be generated based on the
   * {@link Resource#getDescription() description} of the given resource.
   */
  public CustomResourcePropertySource(Resource resource) {
    this(getNameForResource(resource), resource);
  }


  // Methode modifiée qui permet de spécifier le charset!
  private static Properties loadPropertiesForResource(Resource resource, Charset charset) {
    try {
      Preconditions.checkNotNull(resource);
      Preconditions.checkNotNull(charset);
      Properties props = new Properties();
      try (InputStream is = resource.getInputStream(); InputStreamReader reader = new InputStreamReader(is, charset)) {
        props.load(reader);
      }
      return props;
    } catch (IOException e) {
      throw new IllegalStateException("Can't load propertySource for resource " + resource.getDescription());
    }
  }

  /**
   * Returns the description string for the resource, and if empty returns
   * the class name of the resource plus its identity hash code.
   */
  private static String getNameForResource(Resource resource) {
    String name = resource.getDescription();
    if (!StringUtils.hasText(name)) {
      name = resource.getClass().getSimpleName() + "@" + System.identityHashCode(resource);
    }
    return name;
  }

}
