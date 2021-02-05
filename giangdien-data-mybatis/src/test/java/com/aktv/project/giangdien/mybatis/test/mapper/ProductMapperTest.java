package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.ProductMapper;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * CategoryMapperTest -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class)
public class ProductMapperTest {

    private static final String ID = "1001";

    @Autowired
    private ProductMapper productMapper;


    @Test
    public void test_select_a_product() throws Exception {
        //do not thing here
//        productMapper.selectDetail("01");
    }
}
