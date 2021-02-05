package com.aktv.project.giangdien.jpa.test.repository;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import com.aktv.project.giangdien.data.model.Category;
import com.aktv.project.giangdien.jpa.repository.CategoryRepository;
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
 * CategoryRepositoryTest -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class, initializers = ApplicationContextInitializerImpl.class)
public class CategoryRepositoryTest {

    private static final String ID = "1001";
    private static final String SERVICE_ID = "SERVICE_ID";

    @Autowired
    private CategoryRepository categoryRepository;

    @Before
    public void createTestData(){
        Category category = new Category();
        category.setId(ID);
        category.setName("com/aktv/project/giangdien/mybatis/test");
        category.setDescription("test description");
        assertThat(categoryRepository.save(category)).isNotNull();
    }


    @Test
    public void test_find_by_service() throws Exception {
        assertThat(categoryRepository.findByBusinessId(SERVICE_ID)).hasSize(1);

    }
}
