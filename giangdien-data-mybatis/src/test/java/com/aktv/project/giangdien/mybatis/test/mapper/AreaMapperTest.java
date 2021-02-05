package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.AreaMapper;
import com.aktv.project.giangdien.data.model.Area;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import static org.assertj.core.api.Assertions.assertThat;

/**
 * AreaMapperTest
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class)
public class AreaMapperTest {


    private static final String ID = "1001";

    @Autowired
    private AreaMapper areaMapper;

    @Before
    public void createTestData(){
        Area area = new Area();
        area.setId(ID);
        area.setName("com/aktv/project/giangdien/mybatis/test");
        assertThat(areaMapper.insert(area)).isEqualTo(1);
    }

    @After
    public void deleteTestData(){
        assertThat(areaMapper.deleteByPrimaryKey(ID)).isEqualTo(1);
        assertThat(areaMapper.selectByPrimaryKey(ID)).isNull();
    }


    @Test
    public void test_selecte_all() throws Exception {
        assertThat(areaMapper.selectInRangeAll(null, null, null)).isNotEmpty();
    }
}
