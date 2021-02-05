package com.aktv.project.giangdien.backoffice.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 * @author Charles Fleury <fleury@fullsix.com>
 */
@Configuration
@ImportResource({"classpath:/META-INF/spring/application-context-mvc-api.xml"})
@ComponentScan(basePackages = {"com.aktv.project.giangdien.backoffice.api"})
public class SpringMvcAPIConfig {

}
