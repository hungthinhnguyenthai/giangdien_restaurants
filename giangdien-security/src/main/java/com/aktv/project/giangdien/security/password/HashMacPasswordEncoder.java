package com.aktv.project.giangdien.security.password;

import com.aktv.project.giangdien.data.crypto.HmacHasher;
import org.springframework.security.authentication.encoding.PasswordEncoder;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

/**
 * HashMacPasswordEncode -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class HashMacPasswordEncoder implements PasswordEncoder {

    private HmacHasher mac;
    private String passwordCipher;

    public HashMacPasswordEncoder(String hashAlgorithm, String passwordCipher) throws NoSuchAlgorithmException, InvalidKeyException {
        mac = new HmacHasher(hashAlgorithm);
        this.passwordCipher = passwordCipher;
    }

    @Override
    public String encodePassword(String rawPass, Object salt) {
        return mac.hash((rawPass + salt), passwordCipher);
    }

    @Override
    public boolean isPasswordValid(String encPass, String rawPass, Object salt) {
        String rawPassEncoded = encodePassword(rawPass, salt);
        return encPass.equals(rawPassEncoded);
    }

}
