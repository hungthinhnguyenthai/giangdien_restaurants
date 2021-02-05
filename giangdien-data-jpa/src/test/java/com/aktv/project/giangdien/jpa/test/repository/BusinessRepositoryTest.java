package com.aktv.project.giangdien.jpa.test.repository;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import com.aktv.project.giangdien.data.model.Business;
import com.aktv.project.giangdien.jpa.repository.BusinessRepository;
import com.aktv.project.giangdien.jpa.test.config.TestDbConfiguration;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * ServiceMapperTest -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class, initializers = ApplicationContextInitializerImpl.class)
public class BusinessRepositoryTest {

    private static final String ID = "1001";
    private static final String SERVICE_NAME = "SERVICE_NAME";

    @Autowired
    private BusinessRepository businessRepository;

    @Before
    public void createTestData(){
        Business business = new Business();
        business.setId(ID);
        business.setName(SERVICE_NAME);
        assertThat(businessRepository.save(business)).isNotNull();
    }


    @Test
    public void test_find_by_name() throws Exception {
        assertThat(businessRepository.findByName(SERVICE_NAME)).isNotNull();
    }

}
