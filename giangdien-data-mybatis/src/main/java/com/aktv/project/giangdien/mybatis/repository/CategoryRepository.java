package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.CategoryMapper;
import com.aktv.project.giangdien.data.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * CategoryRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class CategoryRepository extends AbstractRepository<Category, CategoryMapper> {
    @Autowired
    private CategoryMapper categoryMapper;

    public List<Category> selectFullMenu(String serviceId, Integer index, Integer resultSize){
        return categoryMapper.selectFullMenu(serviceId, index, resultSize);
    }


    @Override
    public CategoryMapper getDataMapper() {
        return categoryMapper;
    }
}
