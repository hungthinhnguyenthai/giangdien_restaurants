package com.aktv.project.giangdien.security.pinpad;

import com.aktv.project.giangdien.data.crypto.DecryptProvider;
import com.aktv.project.giangdien.data.crypto.impl.Rijndael256Provider;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

import java.io.IOException;

/**
 * PinpadConfig -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Configuration
public class PinpadConfig {

    @Value("${pinpad_crypto_iv}")
    private String pinpadIv;

    @Value("${pinpad.key}")
    private Resource pinpadKey;

    @Bean
    public DecryptProvider pinpadDecryptProvider() throws IOException {
        return new Rijndael256Provider(pinpadKey, pinpadIv.getBytes());
    }

    @Bean
    public PinpadHelper pinpadHelper() throws IOException {
        return new PinpadHelper(pinpadDecryptProvider());
    }
}
