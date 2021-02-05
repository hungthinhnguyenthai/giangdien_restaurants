package com.aktv.project.giangdien.mybatis.test.mapper;

import com.aktv.project.giangdien.mybatis.mapper.AbstractDataMapper;
import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.aktv.project.giangdien.mybatis.test.config.TestDbConfiguration;
import org.junit.After;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * AbstractMapperTest
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class)
public abstract class AbstractMapperTest<M extends AbstractDataMapper, D extends UIDBaseEntity> {

    protected static final String ID = "1001";
    protected abstract M getMapper();
    protected abstract D iniData();

    @Before
    public void createTestData(){
        assertThat(getMapper().insert(iniData())).isEqualTo(1);
    }

    @After
    public void deleteTestData(){
        assertThat(getMapper().deleteByPrimaryKey(ID)).isEqualTo(1);
        assertThat(getMapper().selectByPrimaryKey(ID)).isNull();
    }

}
