package com.aktv.project.giangdien.backoffice.spring;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class GiangDienClasspathXmlApplicationContext extends ClassPathXmlApplicationContext {
  
  private static final Logger LOGGER = LoggerFactory.getLogger(GiangDienClasspathXmlApplicationContext.class);

  private final ApplicationContextInitializerImpl initializer = new ApplicationContextInitializerImpl();


  public GiangDienClasspathXmlApplicationContext(String[] configLocations, boolean refresh, ApplicationContext parentApplicationContext) {
    super(configLocations, false, parentApplicationContext);
    LOGGER.info("Initializing GiangDienClasspathXmlApplicationContext with configLocations={}, " +
            "refresh={} and parentApplicationContext={}",configLocations,refresh,parentApplicationContext);
    initializer.initialize(this);
    if ( refresh ) {
      this.refresh();
    }
  }

  public GiangDienClasspathXmlApplicationContext(String... configLocations) {
    this( configLocations , true , null );
  }

}
