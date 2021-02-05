package com.aktv.project.giangdien.mybatis.test.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 * TestDbConfiguration -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Configuration
@ImportResource({"test-configuration.xml",
        "/flyway/default-flyway-context.xml"})
public class TestDbConfiguration {

}
