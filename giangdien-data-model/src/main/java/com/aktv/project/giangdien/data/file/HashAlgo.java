package com.aktv.project.giangdien.data.file;

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import lombok.Getter;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.springframework.util.StringUtils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public enum HashAlgo {

  MD5(MessageDigestAlgorithms.MD5) {
    @Override
    public String computeInternal(String valueToCheck) {
      return String.valueOf(Hex.encodeHex(DigestUtils.getMd5Digest().digest(valueToCheck.getBytes())));
    }
  },
  SHA1(MessageDigestAlgorithms.SHA_1){
    @Override
    public String computeInternal(String valueToCheck) {
      return String.valueOf(Hex.encodeHex(DigestUtils.getSha1Digest().digest(valueToCheck.getBytes())));
    }
  },
  SHA256(MessageDigestAlgorithms.SHA_256){
    @Override
    public String computeInternal(String valueToCheck) {
      return String.valueOf(Hex.encodeHex(DigestUtils.getSha256Digest().digest(valueToCheck.getBytes())));
    }
  },
  SHA384(MessageDigestAlgorithms.SHA_384){
    @Override
    public String computeInternal(String valueToCheck) {
      return String.valueOf(Hex.encodeHex(DigestUtils.getSha384Digest().digest(valueToCheck.getBytes())));
    }
  },
  SHA512(MessageDigestAlgorithms.SHA_512){
    @Override
    public String computeInternal(String valueToCheck) {
      return String.valueOf(Hex.encodeHex(DigestUtils.getSha512Digest().digest(valueToCheck.getBytes())));
    }
  };

  @Getter
  private final String messageDigestAlgorithm;

  private HashAlgo(String messageDigestAlgorithm) {
    Preconditions.checkArgument(messageDigestAlgorithm != null);
    this.messageDigestAlgorithm = messageDigestAlgorithm;
  }

  public MessageDigest getMessageDigest() {
    try {
      return MessageDigest.getInstance(messageDigestAlgorithm);
    } catch (NoSuchAlgorithmException e) {
      throw Throwables.propagate(e);
    }
  }

  public static HashAlgo fromString(String algoString) {
    return HashAlgo.valueOf(algoString.replace("-", "")); // le replace permet d'etre compatible avec les MessageDigestAlgorithms si besoin...
  }

  public String compute(String valueToEncode) {
    Preconditions.checkArgument(StringUtils.hasText(valueToEncode),"The value to encode with " + this + " is null or empty");
    return computeInternal(valueToEncode);
  }

  protected abstract String computeInternal(String valueToEncode);

  public static final HashAlgo FASTEST = HashAlgo.MD5;


}
