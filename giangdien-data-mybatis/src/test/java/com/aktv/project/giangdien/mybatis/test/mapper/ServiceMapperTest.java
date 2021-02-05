package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.data.model.Business;
import com.aktv.project.giangdien.mybatis.mapper.ServiceMapper;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
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
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class)
public class ServiceMapperTest {

    private static final String ID = "1001";

    @Autowired
    private ServiceMapper serviceMapper;

    public void createTestData(){
        Business business = new Business();
        business.setId(ID);
        business.setName("com/aktv/project/giangdien/mybatis/test");
        assertThat(serviceMapper.insert(business)).isEqualTo(1);
    }

    public void deleteTestData(){
        assertThat(serviceMapper.deleteByPrimaryKey(ID)).isEqualTo(1);
        assertThat(serviceMapper.selectByPrimaryKey(ID)).isNull();
    }


    @Test
    public void test_select_all() throws Exception {
        assertThat(serviceMapper.selectInRangeAll(null, null)).isNotEmpty();
    }

    @Test
    public void test_select_all_gallery() throws Exception {
        assertThat(serviceMapper.selectGallery()).isNotEmpty();
    }

}
