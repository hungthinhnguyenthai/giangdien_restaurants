package com.aktv.project.giangdien.jpa.test.repository;

import com.aktv.project.config.sping.ApplicationContextInitializerImpl;
import com.aktv.project.giangdien.data.model.Employee;
import com.aktv.project.giangdien.jpa.repository.EmployeeRepository;
import com.aktv.project.giangdien.jpa.test.config.TestDbConfiguration;
import org.assertj.core.api.Assertions;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * ServiceMapperTest -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDbConfiguration.class, initializers = ApplicationContextInitializerImpl.class)
public class EmployeeRepositoryTest {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Before
    public void createUser() {
        Employee employee = new Employee();
        employee.setId("1001");
        employee.setLogin("test_user");
        employeeRepository.save(employee);
    }

    @Test
    public void testSelectByUsername() throws Exception {
        Assertions.assertThat(employeeRepository.findByLogin("test_user")).isNotNull();
    }

}
