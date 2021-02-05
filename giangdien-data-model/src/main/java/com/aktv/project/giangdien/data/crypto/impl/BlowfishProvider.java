package com.aktv.project.giangdien.data.crypto.impl;

import com.aktv.project.giangdien.data.crypto.DecryptProvider;
import com.aktv.project.giangdien.data.crypto.EncryptProvider;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import org.apache.commons.codec.binary.Base64;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.BlowfishEngine;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.paddings.ZeroBytePadding;
import org.bouncycastle.crypto.params.KeyParameter;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public class BlowfishProvider implements EncryptProvider, DecryptProvider {

  public static class BlowfishProviderException extends RuntimeException {
    public BlowfishProviderException(String message, Throwable cause) {
      super(message, cause);
    }
  }

  private PaddedBufferedBlockCipher encryptCipher;

  private PaddedBufferedBlockCipher decryptCipher;

  private static final Charset CHARSET = StandardCharsets.UTF_8;

  public BlowfishProvider(String key) throws IOException {
    byte[] keyBytesArray = key.getBytes(CHARSET);
    createCiphers(keyBytesArray);
  }

  private void createCiphers(byte[] key) throws IOException {
    encryptCipher = new PaddedBufferedBlockCipher(new BlowfishEngine(), new ZeroBytePadding());
    encryptCipher.init(true, new KeyParameter(key));
    decryptCipher = new PaddedBufferedBlockCipher(new BlowfishEngine(), new ZeroBytePadding());
    decryptCipher.init(false, new KeyParameter(key));
  }

  public String encrypt(String text) {
    Preconditions.checkArgument(text != null, "The text to encrypt is null");
    try {
      byte[] encryptedByteArray = encrypt(text.getBytes());
      String encryptedText = Base64.encodeBase64String(encryptedByteArray);
      return encryptedText.replaceAll("\\+","-").replaceAll("/","_");
    } catch ( Exception e ) {
      throw new BlowfishProviderException("Unable to encrypt text="+text,e);
    }
  }

  public String decrypt(String encryptedText) {
    Preconditions.checkArgument(encryptedText != null,"The text to decryp is null");
    try {
      String formattedEncryptedText =  encryptedText.replaceAll("-","\\+").replaceAll("_","/");
      byte[] encryptedTextByteArray = Base64.decodeBase64(formattedEncryptedText);
      byte[] decryptedByteArray = decrypt(encryptedTextByteArray);
      return new String(decryptedByteArray);
    } catch ( Exception e ) {
      throw new BlowfishProviderException("Unable to decrypt text="+encryptedText,e);
    }
  }

  @Override
  public byte[] encrypt(byte[] data) {
    try {
      int size = encryptCipher.getOutputSize(data.length);
      byte[] result = new byte[size];
      int olen = encryptCipher.processBytes(data, 0, data.length, result, 0);
      try {
        olen += encryptCipher.doFinal(result, olen);
      } catch (InvalidCipherTextException e) {
        throw Throwables.propagate(e);
      }
      if (olen < size) {
        byte[] tmp = new byte[olen];
        System.arraycopy(result, 0, tmp, 0, olen);
        result = tmp;
      }
      return result;
    } catch ( Exception e ) {
      throw new BlowfishProviderException("Unable to encrypt data",e);
    }
  }

  @Override
  public byte[] decrypt(byte[] data) {
    try {
      int size = decryptCipher.getOutputSize(data.length);
      byte[] result = new byte[size];
      int olen = decryptCipher.processBytes(data, 0, data.length, result, 0);
      try {
        olen += decryptCipher.doFinal(result, olen);
      } catch (InvalidCipherTextException e) {
        throw Throwables.propagate(e);
      }
      if (olen < size) {
        byte[] tmp = new byte[olen];
        System.arraycopy(result, 0, tmp, 0, olen);
        result = tmp;
      }
      return result;
    } catch ( Exception e ) {
      throw new BlowfishProviderException("Unable to decrypt data",e);
    }
  }



}