package com.aktv.project.giangdien.security;

import com.aktv.project.giangdien.data.model.Employee;
import com.aktv.project.giangdien.jpa.repository.EmployeeRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.SpringSecurityMessageSource;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * BackOfficeUserDetails -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class BackOfficeUserDetails implements UserDetailsService {

    private static final Logger LOGGER = LoggerFactory.getLogger(BackOfficeUserDetails.class);

    protected MessageSourceAccessor messages = SpringSecurityMessageSource.getAccessor();

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public UserDetails loadUserByUsername(String username) {
        Employee user = safelyGetAdminAccount(username);

        if (user == null) {
            throw new UsernameNotFoundException("Cannot find the user " + username);
        }

        return user;
    }

    private Employee safelyGetAdminAccount(String username) {
        try {
            return employeeRepository.findByLogin(username);
        } catch (Exception e) {
            LOGGER.error("Something went wrong with the database when trying to perform the authentication.", e);
            throw new InternalAuthenticationServiceException(
                    messages.getMessage("BackOfficeUserDetails.technicalError",
                            "Something went wrong with the database when trying to perform the authentication. " +
                                    "Please contact the administrator of this application."),
                    e
            );
        }
    }

}
