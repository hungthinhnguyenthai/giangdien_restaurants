package com.aktv.project.giangdien.security.impl;

import com.aktv.project.giangdien.security.generator.impl.AESKeyGenerator;
import org.junit.Test;

import java.security.NoSuchAlgorithmException;

import static org.assertj.core.api.Assertions.assertThat;

public class AESKeyGeneratorServiceTest {

  @Test
  public void generated_key_has_good_format() throws NoSuchAlgorithmException {
    AESKeyGenerator keyGenerator = new AESKeyGenerator();
    byte[] key = keyGenerator.generateKey();
  }

  @Test
  public void generated_keys_are_different() throws NoSuchAlgorithmException {
    AESKeyGenerator keyGenerator1 = new AESKeyGenerator();
    AESKeyGenerator keyGenerator2 = new AESKeyGenerator();

    byte[] key1 = keyGenerator1.generateKey();
    byte[] key2 = keyGenerator1.generateKey();
    byte[] key3 = keyGenerator2.generateKey();

    assertThat(key1).isNotEqualTo(key2);
    assertThat(key1).isNotEqualTo(key3);
    assertThat(key2).isNotEqualTo(key3);
  }
}
