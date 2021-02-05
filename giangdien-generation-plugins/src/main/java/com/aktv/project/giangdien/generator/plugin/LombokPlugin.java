package com.aktv.project.giangdien.generator.plugin;


import org.mybatis.generator.api.IntrospectedColumn;
import org.mybatis.generator.api.IntrospectedTable;
import org.mybatis.generator.api.PluginAdapter;
import org.mybatis.generator.api.dom.java.Method;
import org.mybatis.generator.api.dom.java.TopLevelClass;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Properties;

/**
 * This plugins allows MyBatis to skip setters and getters generation and
 * to place a Lombok annotation on the generated class.
 *
 * <p>
 *   Options are :
 *   <ul>
 *     <li><code>generateGetters</code> will generate the getters if set to true, default to false</li>
 *     <li><code>generateSetters</code> will generate the setters if set to true, default to false</li>
 *     <li><code>lombokAnnotationsString</code> Unqualified Lombok annotations, for example <code>&#64;Data</code></li>
 *   </ul>
 * </p>
 *
 * @author Brice Dutheil
 */
public class LombokPlugin extends PluginAdapter {
  private static final Logger logger = LoggerFactory.getLogger(LombokPlugin.class);
  private boolean generateGetters = false;
  private boolean generateSetters = false;
  private String lombokAnnotationsString = "";


  @Override
  public boolean validate(List<String> warnings) {
    return true;  // nothing to configure
  }

  @Override
  public void setProperties(Properties properties) {
    super.setProperties(properties);
    generateGetters = Boolean.valueOf(properties.getProperty("generateGetters", "false"));
    generateSetters = Boolean.valueOf(properties.getProperty("generateSetters", "false"));
    lombokAnnotationsString = properties.getProperty("lombokAnnotationsString", "");
  }

  @Override
  public boolean modelGetterMethodGenerated(Method method, TopLevelClass topLevelClass, IntrospectedColumn introspectedColumn, IntrospectedTable introspectedTable, ModelClassType modelClassType) {
    return generateGetters;
  }

  @Override
  public boolean modelSetterMethodGenerated(Method method, TopLevelClass topLevelClass, IntrospectedColumn introspectedColumn, IntrospectedTable introspectedTable, ModelClassType modelClassType) {
    return generateSetters;
  }

  @Override
  public boolean modelBaseRecordClassGenerated(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
    annnotateWithLombok(topLevelClass);
    return true;
  }

  @Override
  public boolean modelPrimaryKeyClassGenerated(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
    annnotateWithLombok(topLevelClass);
    return true;
  }

  private void annnotateWithLombok(TopLevelClass topLevelClass) {
    if (!lombokAnnotationsString.isEmpty()) {
      topLevelClass.addImportedType("lombok.*");
      topLevelClass.addAnnotation(decodeNewline(lombokAnnotationsString));
    }
  }

  private String decodeNewline(String string) {
    return string.replaceAll("\\\\n", "\n");
  }
}
