package com.aktv.project.giangdien.mybatis.mapper;


import com.aktv.project.giangdien.data.model.Business;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ServiceMapper extends AbstractDataMapper<Business> {

    List<Business> selectInRangeAll(@Param("index") Integer index, @Param("resultSize") Integer resultSize);
    Business selectByName(@Param("name") String name);
    List<Business> selectGallery();
}