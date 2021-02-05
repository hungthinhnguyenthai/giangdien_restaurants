package com.aktv.project.giangdien.security.provider;

import org.springframework.security.core.userdetails.UserDetails;

/**
 * userAuthenticationService -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public interface UserAuthenticationService {

    boolean userHasValidCredentials(UserDetails userDetails, String credentials);

    String encryptCredentials(UserDetails userDetails, String passwordToEncrypt);

    String getPasswordEncryptionAlgorithm();
}
