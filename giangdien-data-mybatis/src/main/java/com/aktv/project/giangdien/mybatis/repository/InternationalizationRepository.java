package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.InternationalizationMapper;
import com.aktv.project.giangdien.data.model.Internationalization;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * CategoryRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class InternationalizationRepository extends AbstractRepository<Internationalization, InternationalizationMapper> {


    @Autowired
    private InternationalizationMapper internationalizationMapper;

    public List<Internationalization> selectByGroupType(String id){
        return internationalizationMapper.selectByGroupType(id);
    }

    @Override
    public InternationalizationMapper getDataMapper() {
        return internationalizationMapper;
    }
}
