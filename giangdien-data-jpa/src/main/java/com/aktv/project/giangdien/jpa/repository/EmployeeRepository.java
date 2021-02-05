package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * EmployeeRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, String> {
    Employee findByLogin(String username);
}
