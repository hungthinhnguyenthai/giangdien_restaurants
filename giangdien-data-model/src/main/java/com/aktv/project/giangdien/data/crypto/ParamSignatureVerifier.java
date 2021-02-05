package com.aktv.project.giangdien.data.crypto;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ParamSignatureVerifier {

  private static final Logger LOGGER = LoggerFactory.getLogger(ParamSignatureVerifier.class);

  public static final String URI_PREFIX_REGEXP = "\\?";
  public static final String URI_BASE_REGEXP = "(.*)";
  public static final String URI_SIGN_REGEXP = "&sign=.*";

  private String query;
  private String hmacHash;

  public ParamSignatureVerifier(String uri) {
    StringBuilder regexp = new StringBuilder();
    if (uri.contains("?")) {
      regexp.append(URI_PREFIX_REGEXP);
    }
    regexp.append(URI_BASE_REGEXP);
    if (uri.contains("sign=")) {
      regexp.append(URI_SIGN_REGEXP);
    }
    Matcher matcher = Pattern.compile(regexp.toString()).matcher(uri);
    matcher.find();
    this.query = matcher.group(1);
    LOGGER.debug("url to hash for check signature {}", query);
  }

  public ParamSignatureVerifier compute(byte[] key) {
    hmacHash = new HmacHasher(HmacHasher.HMAC_SHA_1).hash(query, key);
    return this;
  }

  public boolean matchWith(String expectedHash) {
    boolean match = hmacHash.equals(expectedHash);
    if (!match) {
      LOGGER.info("Incorrect signature, expect {} but query hash was {}", hmacHash, expectedHash);
    }
    return match;
  }

  @Override
  public String toString() {
    return hmacHash;
  }
}
