package com.aktv.project.giangdien.jpa.test.repository;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import com.aktv.project.giangdien.jpa.repository.ProductRepository;
import com.aktv.project.giangdien.jpa.test.config.TestDbConfiguration;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * CategoryRepositoryTest -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Ignore
@ContextConfiguration(classes = TestDbConfiguration.class, initializers = ApplicationContextInitializerImpl.class)
public class ProductRepositoryTest {

    private static final String ID = "1001";

    @Autowired
    private ProductRepository productRepository;
}
