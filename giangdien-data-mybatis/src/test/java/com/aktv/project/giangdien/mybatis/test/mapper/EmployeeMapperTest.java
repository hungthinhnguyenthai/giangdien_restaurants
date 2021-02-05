package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.EmployeeMapper;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import org.assertj.core.api.Assertions;
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
public class EmployeeMapperTest {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Test
    public void testSelectByUsername() throws Exception {
        Assertions.assertThat(employeeMapper.selectByUserName("superadmin")).isNotNull();
    }

}
