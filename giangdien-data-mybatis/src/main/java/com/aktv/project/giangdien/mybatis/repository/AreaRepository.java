package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.AreaMapper;
import com.aktv.project.giangdien.data.model.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * AreaRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class AreaRepository extends AbstractRepository<Area, AreaMapper> {

    @Autowired
    private AreaMapper areaMapper;

    public List<Area> selectInRangeAll(String serviceId, Integer index, Integer resultSize){
        return areaMapper.selectInRangeAll(serviceId, index, resultSize);
    }

    @Override
    public AreaMapper getDataMapper() {
        return areaMapper;
    }
}
