package com.aktv.project.giangdien.mybatis.mapper;

import com.aktv.project.giangdien.data.model.Product;
import org.apache.ibatis.annotations.Param;

/**
 * ProductMapper -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Mapper
public interface ProductMapper extends AbstractDataMapper<Product> {

    Product selectDetail(@Param("id") String id);
}
