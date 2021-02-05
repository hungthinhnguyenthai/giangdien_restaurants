package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.GDTableMapper;
import com.aktv.project.giangdien.data.model.TableLocation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * TableRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class TableRepository extends AbstractRepository<TableLocation, GDTableMapper> {

    @Autowired
    private GDTableMapper gdTableMapper;

    @Override
    public GDTableMapper getDataMapper() {
        return gdTableMapper;
    }
}
