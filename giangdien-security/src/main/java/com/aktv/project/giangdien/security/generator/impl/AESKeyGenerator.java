package com.aktv.project.giangdien.security.generator.impl;

import com.aktv.project.giangdien.security.generator.KeyGeneratorService;

import javax.crypto.KeyGenerator;
import java.security.NoSuchAlgorithmException;

/**
 * AESKeyGenerator -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class AESKeyGenerator implements KeyGeneratorService {

    private static final int KEY_LENGTH = 128;

    private KeyGenerator kgen = KeyGenerator.getInstance("AES");

    public AESKeyGenerator() throws NoSuchAlgorithmException {
        kgen = javax.crypto.KeyGenerator.getInstance("AES");
        kgen.init(KEY_LENGTH);
    }

    @Override
    public byte[] generateKey() {
        return kgen.generateKey().getEncoded();
    }

}
