package com.aktv.project.giangdien.mybatis.mapper;

import com.aktv.project.giangdien.data.model.Area;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * TableMapper -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Mapper
public interface AreaMapper extends AbstractDataMapper<Area> {

    List<Area> selectInRangeAll(@Param("serviceId") String serviceId,@Param("index") Integer index,@Param("resultSize") Integer resultSize);
}
