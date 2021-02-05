package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.AbstractDataMapper;
import com.aktv.project.giangdien.data.UIDBaseEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * AbstractRespository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public abstract class AbstractRepository<T extends UIDBaseEntity, R extends AbstractDataMapper<T>> {

    public abstract R getDataMapper();

    public T selectByPrimaryKey(String id) {
        return getDataMapper().selectByPrimaryKey(id);
    }

    @Transactional
    public int insertOrUpdate(T record) {
        int r;
        if (record.getId() != null && !record.getId().isEmpty()) {
            r = update(record);
        } else {
            r = insert(record);
        }

        return r;
    }

    @Transactional
    public int update(T record) {
        return getDataMapper().updateByPrimaryKey(record);
    }

    @Transactional
    public int insert(T record) {
        return getDataMapper().insert(record);
    }

    @Transactional
    public int insertRetainValueOnly(T record) {
        return getDataMapper().insertSelective(record);
    }

    @Transactional
    public int delete(String id) {
        return getDataMapper().deleteByPrimaryKey(id);
    }

    @Transactional
    public int updateRetainValueOnly(T record) {
        return getDataMapper().updateByPrimaryKeySelective(record);
    }

    @Transactional
    public boolean updateValues(List<T> records) {
        return getDataMapper().updateValues(records) != 0;
    }

}
