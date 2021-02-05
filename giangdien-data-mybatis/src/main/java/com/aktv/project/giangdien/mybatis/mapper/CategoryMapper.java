package com.aktv.project.giangdien.mybatis.mapper;


import com.aktv.project.giangdien.data.model.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CategoryMapper extends AbstractDataMapper<Category> {

    List<Category> selectFullMenu(@Param("serviceId") String serviceId,@Param("index") Integer index,@Param("resultSize") Integer resultSize);

}