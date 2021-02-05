package com.aktv.project.giangdien.backoffice.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 * com.aktv.project.giangdien.backoffice.config.SpringMvcBOConfig -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Configuration
@ImportResource({"classpath:/META-INF/spring/application-context-mvc-bo.xml"})
@ComponentScan(basePackages = {"com.aktv.project.giangdien.backoffice.controller"})
public class SpringMvcBOConfig {
}
