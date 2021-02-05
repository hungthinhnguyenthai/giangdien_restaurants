package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.GalleryMapper;
import com.aktv.project.giangdien.data.model.Gallery;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import org.assertj.core.api.Assertions;
import org.junit.After;
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
public class GalleryMapperTest {

    private static final String ID = "1001";

    @Autowired
    private GalleryMapper galleryMapper;

    @Before
    public void createTestData(){
        Gallery gallery = new Gallery();
        gallery.setId(ID);
        gallery.setImageUrl("com/aktv/project/giangdien/mybatis/test");
        Assertions.assertThat(galleryMapper.insert(gallery)).isEqualTo(1);
    }

    @After
    public void test_delete_an_gallery() throws Exception {
        Assertions.assertThat(galleryMapper.deleteByPrimaryKey(ID)).isEqualTo(1);
        Assertions.assertThat(galleryMapper.selectByPrimaryKey(ID)).isNull();
    }

    @Test
    public void test_update_an_gallery() throws Exception {
        String testData = "test101";
        Gallery test = galleryMapper.selectByPrimaryKey(ID);
        Assertions.assertThat(test).isNotNull();
        test.setImageUrl(testData);
        galleryMapper.updateByPrimaryKey(test);
        Assertions.assertThat(galleryMapper.selectByPrimaryKey(ID).getImageUrl()).isEqualToIgnoringCase(testData);
    }
}
