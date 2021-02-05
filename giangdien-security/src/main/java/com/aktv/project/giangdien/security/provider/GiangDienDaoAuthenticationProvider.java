package com.aktv.project.giangdien.security.provider;

import com.aktv.project.giangdien.data.security.AuthenticatedUser;
import com.aktv.project.giangdien.security.password.HashMacPasswordEncoder;
import com.aktv.project.giangdien.security.password.HashMacPasswordEncoderFactoryBean;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Strings;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * GiangDienDaoAuthenticationProvider -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class GiangDienDaoAuthenticationProvider extends DaoAuthenticationProvider implements UserAuthenticationService {

    @Getter
    @Value("${api.user.password.encryption.algo}")
    @VisibleForTesting
    String passwordEncryptionAlgorithm;

    private HashMacPasswordEncoderFactoryBean passwordEncoderFactoryBean;


    @Override
    public boolean userHasValidCredentials(UserDetails userDetails, String credentials) {
        try {
            additionalAuthenticationChecks(
                    userDetails,
                    new UsernamePasswordAuthenticationToken(userDetails.getUsername(), credentials)
            );
            return true;
        } catch (AuthenticationException e) {
            return false;
        }
    }


    @Override
    public String encryptCredentials(UserDetails userDetails, String passwordToEncrypt) {
        Object salt = getSaltFrom(userDetails);
        HashMacPasswordEncoder encoder = passwordEncoderFactoryBean.getInstance(passwordEncryptionAlgorithm);

        return encoder.encodePassword(passwordToEncrypt, salt);
    }


    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken authentication) {
        Object salt = getSaltFrom(userDetails);

        if (authentication.getCredentials() == null) {
            logger.debug("Authentication failed: no credentials provided");

            throw new BadCredentialsException(messages.getMessage(
                    "AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
        }

        String presentedPassword = authentication.getCredentials().toString();

        PasswordEncoder passwordEncoder = getPasswordEncoder(userDetails);
        if (userDetails.getPassword() == null) {
            logger.warn("The user " + userDetails.getUsername() + " hasn't password");
        }
        if (!passwordEncoder.isPasswordValid(userDetails.getPassword(), presentedPassword, salt)) {
            logger.debug("Authentication failed: password does not match stored value");

            throw new BadCredentialsException(messages.getMessage(
                    "AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
        }
    }


    private Object getSaltFrom(UserDetails userDetails) {
        return getSaltSource() != null ? getSaltSource().getSalt(userDetails) : null;
    }

    public PasswordEncoder getPasswordEncoder(UserDetails userDetails) {
        if (userDetails instanceof AuthenticatedUser && !Strings.isNullOrEmpty(((AuthenticatedUser) userDetails).getPasswordEncryption())) {
            return passwordEncoderFactoryBean.getInstance(((AuthenticatedUser) userDetails).getPasswordEncryption());
        } else {
            return getPasswordEncoder();
        }
    }


    public void setPasswordEncoderFactoryBean(HashMacPasswordEncoderFactoryBean passwordEncoderFactoryBean) {
        this.passwordEncoderFactoryBean = passwordEncoderFactoryBean;
    }

}
