package com.aktv.project.giangdien.jpa.test.repository;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import com.aktv.project.giangdien.data.model.Internationalization;
import com.aktv.project.giangdien.jpa.repository.InternationalizationRepository;
import com.aktv.project.giangdien.jpa.test.config.TestDbConfiguration;
import com.google.common.collect.Lists;
import org.junit.Before;
import org.junit.Ignore;
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
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class, initializers = ApplicationContextInitializerImpl.class)
public class InternationalizationRepositoryTest {


    private static final String ID = "1001";

    @Autowired
    private InternationalizationRepository internationalizationRepository;

    @Before
    public void create_list_data() throws Exception {
        List<Internationalization> list = Lists.newArrayList();
        String group = "BASE_INFO";
        String lang = Locale.ENGLISH.getLanguage();
        list.add(setData("BUSINESS_SLOGAN","Get the best dining experience", lang, group));
        internationalizationRepository.save(list);
/*        for(Internationalization internationalization : list) {
            internationalizationMapper.insert(internationalization);
        }*/
//        internationalizationMapper.insertValues(list);
    }

    @Test
    public void test_select() throws Exception {
        assertThat(internationalizationRepository.findByGroupType("BASE_INFO")).hasSize(1);
    }

    protected Internationalization setData(String name, String text, String lang, String group) {
        Internationalization internationalization = new Internationalization();
        internationalization.setId("1001");
        internationalization.setKeyCode(name);
        internationalization.setText(text);
        internationalization.setLang(lang);
        internationalization.setGroupType(group);
        return internationalization;
    }
}
