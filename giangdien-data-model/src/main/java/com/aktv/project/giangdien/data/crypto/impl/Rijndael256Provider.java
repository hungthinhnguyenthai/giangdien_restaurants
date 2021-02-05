package com.aktv.project.giangdien.data.crypto.impl;


import com.aktv.project.giangdien.data.crypto.DecryptProvider;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.io.ByteStreams;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.RijndaelEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PKCS7Padding;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;

import java.io.IOException;

public class Rijndael256Provider implements DecryptProvider {
  private static final Logger LOGGER = LoggerFactory.getLogger(Rijndael256Provider.class);


  private Resource key;
  private byte[] iv;

  public Rijndael256Provider(Resource key, byte[] iv) throws IOException {
    this.key = key;
    this.iv = iv.clone();

  }

  /**
   * {@inheritDoc}
   */
  public byte[] decrypt(byte[] data) {
    Preconditions.checkArgument(data != null, "The data to decrypt is null!");

    PaddedBufferedBlockCipher decryptCipher = getCipherInstance();

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
  }
  private PaddedBufferedBlockCipher getCipherInstance() {
    Preconditions.checkNotNull(key, "The key is required");
    Preconditions.checkNotNull(iv, "The IV is required");
    PaddedBufferedBlockCipher decryptCipher = new PaddedBufferedBlockCipher(new CBCBlockCipher(new RijndaelEngine(256)), new PKCS7Padding());
    try {
      decryptCipher.init(false, new ParametersWithIV(new KeyParameter(ByteStreams.toByteArray(key.getInputStream())), iv));
    } catch (IOException e) {
      LOGGER.error("Cannot init cipher", e);
      throw Throwables.propagate(e);
    }
    return decryptCipher;
  }
}
