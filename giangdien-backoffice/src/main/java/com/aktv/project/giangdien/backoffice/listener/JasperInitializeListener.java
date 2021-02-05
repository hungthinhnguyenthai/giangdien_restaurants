package com.aktv.project.giangdien.backoffice.listener;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * JasperInitializeListener -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Slf4j
public class JasperInitializeListener implements ServletContextListener {
    public void contextDestroyed(ServletContextEvent sce) {
    }

    public void contextInitialized(ServletContextEvent sce) {
        try {
            Class.forName("org.apache.jasper.compiler.JspRuntimeContext");
        } catch (Exception e) {
            log.error("Error:", e);
        }
    }

}
