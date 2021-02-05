package com.aktv.project.giangdien.mybatis.mapper;

import com.aktv.project.giangdien.data.model.Employee;

@Mapper
public interface EmployeeMapper extends AbstractDataMapper<Employee> {

    Employee selectByUserName(String username);
}