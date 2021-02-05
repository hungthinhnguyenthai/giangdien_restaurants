package com.aktv.project.config;

import com.google.common.base.Preconditions;
import org.springframework.core.env.PropertiesPropertySource;
import org.springframework.core.io.Resource;
import org.springframework.util.StringUtils;
import org.yaml.snakeyaml.DumperOptions;
import org.yaml.snakeyaml.DumperOptions.ScalarStyle;
import org.yaml.snakeyaml.Yaml;
import org.yaml.snakeyaml.constructor.Constructor;
import org.yaml.snakeyaml.nodes.Tag;
import org.yaml.snakeyaml.representer.Representer;
import org.yaml.snakeyaml.resolver.Resolver;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

/**
 * http://stackoverflow.com/questions/2561947/spring-to-understand-properties-in-yaml
 */

public class YamlPropertiesSource extends PropertiesPropertySource {

  public YamlPropertiesSource(String name, Resource yamlResource) {
    super(name, getPropertySource(yamlResource, StandardCharsets.UTF_8));
  }

  public YamlPropertiesSource(String name, Resource yamlResource, Charset charset) {
    super(name, getPropertySource(yamlResource, charset));
  }

  private static Properties getPropertySource(Resource yamlResource, Charset charset) {
    Preconditions.checkArgument(yamlResource != null, "no yaml resource provided");
    Preconditions.checkArgument(charset != null, "no charset provided");
    try {
      InputStream is = yamlResource.getInputStream();
      Properties properties = new Properties();
      InputStreamReader reader = new InputStreamReader(is, charset);
      load(properties, reader);
      return properties;
    } catch (Exception e) {
      throw new IllegalStateException("Can't get PropertySource from YAML resource=" + yamlResource, e);
    }
  }

  private static void load(Properties props, Reader reader) throws IOException {
    Yaml yaml = instanceOfYaml();
    @SuppressWarnings("unchecked")
    Map<String, Object> map = (Map<String, Object>) yaml.load(reader);
    // now we can populate supplied props
    assignProperties(props, map, null);
  }

  @SuppressWarnings("unchecked")
  private static void assignProperties(Properties props, Map<String, Object> map, String path) {
    if (map != null) {
      for (Entry<String, Object> entry : map.entrySet()) {
        String key = entry.getKey();
        if (StringUtils.hasLength(path)) {
          key = path + "." + key;
        }
        Object val = entry.getValue();
        if (val == null) {
          props.put(key, "");
        } else if (val instanceof Map) {
          assignProperties(props, (Map<String, Object>) val, key);
        } else {
          props.put(key, val);
        }
      }
    }
  }

  private static Yaml instanceOfYaml() {
    DumperOptions options = new DumperOptions();
    options.setDefaultFlowStyle(DumperOptions.FlowStyle.BLOCK);
    options.setDefaultScalarStyle(ScalarStyle.DOUBLE_QUOTED);
    return new Yaml(new Constructor(), new Representer(), new DumperOptions(), new CustomResolver());
  }


  private static class CustomResolver extends Resolver {
    /**
     * @see Resolver#addImplicitResolvers()
     */
    @Override
    protected void addImplicitResolvers() {
      addImplicitResolver(Tag.BOOL, Resolver.BOOL, "yYnNtTfFoO");
      // disable resolving of floats and integers
      // addImplicitResolver(Tags.FLOAT, FLOAT, "-+0123456789.");
      // addImplicitResolver(Tag.INT, INT, "-+0123456789");
      addImplicitResolver(Tag.MERGE, Resolver.MERGE, "<");
      addImplicitResolver(Tag.NULL, Resolver.NULL, "~nN\0");
      addImplicitResolver(Tag.NULL, Resolver.EMPTY, null);
      addImplicitResolver(Tag.TIMESTAMP, Resolver.TIMESTAMP, "0123456789");
    }
  }


}