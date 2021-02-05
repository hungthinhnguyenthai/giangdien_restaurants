package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Business;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * ServiceRespository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public interface BusinessRepository extends JpaRepository<Business, String> {

    Business findByName(String name);
}
