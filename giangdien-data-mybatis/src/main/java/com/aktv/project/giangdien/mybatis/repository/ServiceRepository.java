package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.data.model.Business;
import com.aktv.project.giangdien.mybatis.mapper.ServiceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * ServiceRespository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class ServiceRepository extends AbstractRepository<Business, ServiceMapper> {

    @Autowired
    private ServiceMapper serviceMapper;

    public List<Business> selectInRangeAll(Integer index, Integer resultSize){
        return serviceMapper.selectInRangeAll(index, resultSize);
    }

    public Business selectByName(String name) {
        return serviceMapper.selectByName(name);
    }

    public List<Business> selectGallery() {
        return serviceMapper.selectGallery();
    }

    public ServiceMapper getDataMapper() {
        return serviceMapper;
    }

}
