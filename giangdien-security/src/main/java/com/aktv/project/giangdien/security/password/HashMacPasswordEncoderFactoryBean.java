package com.aktv.project.giangdien.security.password;

import com.aktv.project.giangdien.data.crypto.HmacHasher;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.Assert;

import javax.annotation.PostConstruct;
import java.util.Map;

/**
 * HashMacPasswordEncoderFactoryBean -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class HashMacPasswordEncoderFactoryBean {

    @VisibleForTesting
    @Value("${pinpad_password_cipher}")
    @Setter
    String passwordCipher;

    private Map<String, HashMacPasswordEncoder> instances = Maps.newHashMapWithExpectedSize(2);


    public HashMacPasswordEncoderFactoryBean() {
    }

    @VisibleForTesting public HashMacPasswordEncoderFactoryBean(String passwordCipher) {
        this.passwordCipher = passwordCipher;
    }


    public HashMacPasswordEncoder getInstance(String hashAlgorithm) {
        switch (hashAlgorithm) {
            case "SHA-1":
                return instances.get(HmacHasher.HMAC_SHA_1);
            case "SHA-256":
                return instances.get(HmacHasher.HMAC_SHA_256);
            default:
                throw new IllegalStateException("Unsupported hash " + hashAlgorithm + ", available hashes are 'SHA-1' and 'SHA-256'");
        }
    }

    @PostConstruct
    public void afterPropertiesSet() throws Exception {
        Assert.notNull(passwordCipher, "The cipher cannot be null, check property 'pinpad_password_cipher'");
        instances.put(HmacHasher.HMAC_SHA_1, new HashMacPasswordEncoder(HmacHasher.HMAC_SHA_1, passwordCipher));
        instances.put(HmacHasher.HMAC_SHA_256, new HashMacPasswordEncoder(HmacHasher.HMAC_SHA_256, passwordCipher));
    }
}
