package com.aktv.project.giangdien.security.password;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Sha1PasswordEncoder -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class Sha1PasswordEncoder implements PasswordEncoder {


    /**
     * {@inheritDoc}
     */
    @Override
    public String encode(CharSequence rawPassword) {
        return DigestUtils.sha1Hex(rawPassword.toString());
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        return encode(rawPassword).equals(encodedPassword);
    }

}
