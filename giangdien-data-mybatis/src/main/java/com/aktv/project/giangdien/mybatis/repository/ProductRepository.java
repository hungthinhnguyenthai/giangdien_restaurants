package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.ProductMapper;
import com.aktv.project.giangdien.data.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 * com.aktv.project.giangdien.data.repository.ProductRepository
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class ProductRepository extends AbstractRepository<Product, ProductMapper> {

    @Autowired
    private ProductMapper productMapper;

    public Product getProductDetailById(String id){
        return getDataMapper().selectDetail(id);
    }

    @Override
    public ProductMapper getDataMapper() {
        return productMapper;
    }
}
