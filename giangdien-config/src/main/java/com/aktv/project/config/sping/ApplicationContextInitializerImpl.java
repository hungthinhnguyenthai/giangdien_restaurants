package com.aktv.project.config.sping;

import com.aktv.project.config.AdditionalPropertySources;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;

public class ApplicationContextInitializerImpl implements ApplicationContextInitializer<ConfigurableApplicationContext> {

  private static final Logger LOGGER = LoggerFactory.getLogger(ApplicationContextInitializerImpl.class);

  @Override
  public void initialize(ConfigurableApplicationContext applicationContext) {
    LOGGER.info("Active spring profiles are: {}",applicationContext.getEnvironment().getActiveProfiles());
    AdditionalPropertySources.appendTo(applicationContext.getEnvironment());
    Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
      @Override
      public void uncaughtException(Thread t, Throwable e) {
          LOGGER.error("Uncaught exception :", e);
      }
    });
  }

}
