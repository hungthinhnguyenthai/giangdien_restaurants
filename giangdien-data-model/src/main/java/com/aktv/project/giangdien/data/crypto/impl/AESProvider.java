package com.aktv.project.giangdien.data.crypto.impl;


import com.aktv.project.giangdien.data.crypto.EncryptProvider;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class AESProvider implements EncryptProvider {

  private final Cipher cipher;

  public AESProvider(byte[] key) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
    cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    SecretKeySpec keySpec = new SecretKeySpec(key, "AES");
    cipher.init(Cipher.ENCRYPT_MODE, keySpec);

  }

  @Override
  public byte[] encrypt(byte[] data) throws BadPaddingException, IllegalBlockSizeException {
    return cipher.doFinal(data);
  }

}
