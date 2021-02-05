package com.aktv.project.giangdien.mybatis.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * AbstractDataMapper -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Mapper
public interface AbstractDataMapper<R> {

    R selectByPrimaryKey(@Param("id") String id);

    int updateByPrimaryKey(R record);

    int updateByPrimaryKeySelective(R record);

    int insert(R record);

    int insertSelective(R record);

    int deleteByPrimaryKey(@Param("id") String id);

    int updateValues(List<R> values);

    int insertValues(List<R> values);

}
