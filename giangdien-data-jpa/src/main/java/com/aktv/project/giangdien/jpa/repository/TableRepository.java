package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.TableLocation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * TableRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public interface TableRepository extends JpaRepository<TableLocation, String> {

}
