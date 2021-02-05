package com.aktv.project.giangdien.backoffice.spring;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;

import javax.servlet.ServletContextEvent;

/**
 * FailFastContextLoaderListener -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Slf4j
public class FailFastContextLoaderListener extends ContextLoaderListener {

    public FailFastContextLoaderListener() {

    }

    public FailFastContextLoaderListener(WebApplicationContext context) {
        super(context);
    }


    public void contextInitialized(ServletContextEvent event) {
        try {
            super.contextInitialized(event);
        } catch ( Exception e ) {
            log.error("Can't load application context -> The JVM will be killed",e);
            System.exit(1);
        }
    }
}
