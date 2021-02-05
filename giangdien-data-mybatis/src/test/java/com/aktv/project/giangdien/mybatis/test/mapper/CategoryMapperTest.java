package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.CategoryMapper;
import com.aktv.project.giangdien.data.model.Category;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * CategoryMapperTest -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class)
public class CategoryMapperTest {

    private static final String ID = "1001";

    @Autowired
    private CategoryMapper categoryMapper;

    @Before
    public void createTestData(){
        Category category = new Category();
        category.setId(ID);
        category.setName("com/aktv/project/giangdien/mybatis/test");
        category.setDescription("test description");
        assertThat(categoryMapper.insert(category)).isEqualTo(1);
    }

    @Test
    public void test_delete_an_catagory() throws Exception {
        assertThat(categoryMapper.deleteByPrimaryKey(ID)).isEqualTo(1);
        assertThat(categoryMapper.selectByPrimaryKey(ID)).isNull();
    }

    @Test
    public void test_update_an_catagory() throws Exception {
        String testData = "test101";
        Category test = categoryMapper.selectByPrimaryKey(ID);
        assertThat(test).isNotNull();
        test.setDescription(testData);
        categoryMapper.updateByPrimaryKey(test);
        assertThat(categoryMapper.selectByPrimaryKey(ID).getDescription()).isEqualToIgnoringCase(testData);
        assertThat(categoryMapper.deleteByPrimaryKey(ID)).isEqualTo(1);
    }
}
