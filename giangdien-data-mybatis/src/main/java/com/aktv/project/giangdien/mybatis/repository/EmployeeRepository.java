package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.EmployeeMapper;
import com.aktv.project.giangdien.data.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * EmployeeRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class EmployeeRepository extends AbstractRepository<Employee, EmployeeMapper> {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public EmployeeMapper getDataMapper() {
        return employeeMapper;
    }

    public Employee selectByUserName(String userName) {
        return employeeMapper.selectByUserName(userName);
    }
}
