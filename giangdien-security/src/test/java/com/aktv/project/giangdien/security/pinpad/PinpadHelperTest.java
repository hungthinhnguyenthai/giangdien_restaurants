package com.aktv.project.giangdien.security.pinpad;

import com.aktv.project.giangdien.data.crypto.DecryptProvider;
import com.aktv.project.giangdien.data.crypto.impl.Rijndael256Provider;
import org.junit.Before;
import org.junit.Test;
import org.springframework.core.io.ClassPathResource;

import javax.crypto.NoSuchPaddingException;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

import static org.assertj.core.api.Assertions.assertThat;

public class PinpadHelperTest {

  private PinpadHelper helper;

  @Before
  public void before() throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IOException, NoSuchProviderException, InvalidAlgorithmParameterException {
    DecryptProvider provider = new Rijndael256Provider(new ClassPathResource("/config/giangdien.pinpad.aes.key"), "XvAxkgiCY9nrYrRRGku8uq76FfnmPJvJ".getBytes());
    helper = new PinpadHelper(provider);
  }

  @Test
  public void test_decrypt() {
    // avec la sequence 0653182794
    testInput("000000","000000");
    testInput("000001","000004");
    testInput("000002","000006");
    testInput("000003","000003");
    testInput("000004","000009");
    testInput("000005","000002");
    testInput("000006","000001");
    testInput("000007","000007");
    testInput("000008","000005");
    testInput("000009","000008");
  }

  private void testInput(String input, String password) {
    String encryptedData = "g3Z0VbjGPZDWKNiPlMB+OdQbN4t7FQA0d6RL/8T2Gl3dacmPkFK36zsfLQzK+6DXYqoquU2e+sF4Jkdf1ZU9Jg==";

    Pinpad pinpad = helper.decryptInput(input, encryptedData);

    assertThat(pinpad.getPassword()).isEqualTo(password);
    assertThat(pinpad.getSequence()).isEqualTo("0653182794");
    assertThat(pinpad.getCreationDate().getMillis()).isEqualTo(1369839816L*1000);
    assertThat(pinpad.getInput()).isEqualTo(input);

  }
}
