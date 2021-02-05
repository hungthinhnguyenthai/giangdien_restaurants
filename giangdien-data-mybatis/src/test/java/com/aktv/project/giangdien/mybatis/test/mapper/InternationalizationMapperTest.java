package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.InternationalizationMapper;
import com.aktv.project.giangdien.data.model.Internationalization;
import org.assertj.core.api.Assertions;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import com.google.common.collect.Lists;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Locale;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * InternationalizationMapperTest
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class)
public class InternationalizationMapperTest {


    private static final String ID = "1001";

    @Autowired
    private InternationalizationMapper internationalizationMapper;

    @Test
    public void create_list_data() throws Exception {
        List<Internationalization> list = Lists.newArrayList();
        String group = "BASE_INFO";
        String lang = Locale.ENGLISH.getLanguage();
        list.add(setData("BUSINESS_SLOGAN","Get the best dining experience", lang, group));

/*        for(Internationalization internationalization : list) {
            internationalizationMapper.insert(internationalization);
        }*/
//        internationalizationMapper.insertValues(list);
    }

    public void test_select() throws Exception {
        List<Internationalization> result = internationalizationMapper.selectByGroupType("BASE_INFO");
        Assertions.assertThat(result.isEmpty());
    }

    protected Internationalization setData(String name, String text, String lang, String group) {
        Internationalization internationalization = new Internationalization();
        internationalization.setKeyCode(name);
        internationalization.setText(text);
        internationalization.setLang(lang);
        internationalization.setGroupType(group);
        return internationalization;
    }
}
