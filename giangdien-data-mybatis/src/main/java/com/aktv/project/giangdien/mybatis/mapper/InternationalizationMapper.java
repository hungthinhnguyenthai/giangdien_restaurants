package com.aktv.project.giangdien.mybatis.mapper;

import com.aktv.project.giangdien.data.model.Internationalization;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * TableMapper -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Mapper
public interface InternationalizationMapper extends AbstractDataMapper<Internationalization> {

    List<Internationalization> selectByGroupType(@Param("id") String id);
}
