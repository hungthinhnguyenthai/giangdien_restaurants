package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Area;
import com.aktv.project.giangdien.data.model.Business;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AreaRepository extends JpaRepository<Area, String> {

    List<Area> findByBusiness(String service);
    List<Area> findByBusiness(Business business);
}
