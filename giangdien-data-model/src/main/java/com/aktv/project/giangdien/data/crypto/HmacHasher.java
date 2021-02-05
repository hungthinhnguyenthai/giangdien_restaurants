package com.aktv.project.giangdien.data.crypto;

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import org.apache.commons.codec.binary.Hex;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

public class HmacHasher {
  private static final Logger LOGGER = LoggerFactory.getLogger(HmacHasher.class);

  public static final String HMAC_SHA_256 = "HmacSHA256";
  public static final String HMAC_SHA_1 = "HmacSHA1";

  private final Mac mac;
  private String algorithm;

  public HmacHasher() {
    this(HMAC_SHA_256);
  }


  public HmacHasher(String algorithm) {
    Preconditions.checkNotNull(algorithm);
    this.algorithm = algorithm;
    try {
      mac = Mac.getInstance(algorithm);

    } catch (NoSuchAlgorithmException e) {
      LOGGER.error("Bad hmac algorithm", e);
      throw Throwables.propagate(e);
    }
  }


  public String hash(String input, String key) {
    return hash(input, key.getBytes());
  }


  public String hash(String input, byte[] key) {
    Preconditions.checkNotNull(input, "no data to hash");
    Preconditions.checkNotNull(key, "no key to hash");

    SecretKeySpec keySpec = new SecretKeySpec(key, algorithm);

    try {
      mac.init(keySpec);
    } catch (InvalidKeyException e) {
      LOGGER.error("Bad key", e);
      throw Throwables.propagate(e);
    }

    byte[] result = mac.doFinal(input.getBytes());
    return Hex.encodeHexString(result);
  }


}
