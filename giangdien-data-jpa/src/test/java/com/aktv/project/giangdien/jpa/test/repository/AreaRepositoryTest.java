package com.aktv.project.giangdien.jpa.test.repository;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import com.aktv.project.giangdien.data.model.Area;
import com.aktv.project.giangdien.jpa.repository.AreaRepository;
import com.aktv.project.giangdien.jpa.test.config.TestDbConfiguration;
import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.runner.RunWith;

import static org.assertj.core.api.Assertions.assertThat;
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class, initializers = ApplicationContextInitializerImpl.class)
public class AreaRepositoryTest {

    private static final String ID = "1001";
    private static final String SERVICE_ID = "SERVICE_ID";

    @Autowired
    private AreaRepository areaRepository;

    @Before
    public void createTestData(){
        Area area = new Area();
        area.setId(ID);
        area.setName("test");
        assertThat(areaRepository.save(area)).isNotNull();
    }

    @After
    public void deleteTestData(){
        Area area = areaRepository.findOne(ID);
        areaRepository.delete(area);
        assertThat(areaRepository.findOne(ID)).isNull();
    }


    @Test
    public void test_selecte_all() throws Exception {
        assertThat(areaRepository.findAll()).isNotEmpty();
        assertThat(areaRepository.findByBusiness(SERVICE_ID)).isNotEmpty();
    }

}
