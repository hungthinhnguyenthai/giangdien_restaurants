package com.aktv.project.giangdien.backoffice.spring;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * GiangDienDespatcherServlet -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Slf4j
public class GiangDienDespatcherServlet extends DispatcherServlet {

    @Override
    protected WebApplicationContext initWebApplicationContext() {
        try {
            return super.initWebApplicationContext();
        } catch ( Exception e ) {
            log.error("Can't load application context -> The JVM will be killed",e);
            System.exit(1); // devrait marcher si pas de SecurityManager l'en empêchant
            throw new IllegalStateException("Application startup failed",e);
        }
    }
}
