package com.aktv.project.giangdien.data.generator;

import com.aktv.project.giangdien.data.file.HashAlgo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Random;

public class TimeBasedCodeGenerator {

  private static final Logger LOGGER = LoggerFactory.getLogger(TimeBasedCodeGenerator.class);
  /**
   * use to improve uniqueness (same time in differents hosts return differents code)
   */
  private static String HOST_NAME_STRING;
  static{
    try {
      HOST_NAME_STRING = InetAddress.getLocalHost().getHostAddress().split("\\.")[3];
    } catch (UnknownHostException e) {
      LOGGER.error("cannot use host to improve unicity during code generation",e);
      HOST_NAME_STRING =String.valueOf(new Random().nextInt(100));
    }
  }

  public synchronized String generate() {
    long currentTimeMillis = System.currentTimeMillis();
    return generate(currentTimeMillis);
  }

  public String generate(long currentTimeMillis) {
    String timeToMillis = String.valueOf(currentTimeMillis);
    long toConvert = Long.parseLong(HOST_NAME_STRING.concat(timeToMillis));
    String shortId = Long.toString(toConvert, 36);
    shortId= HashAlgo.MD5.compute(shortId);
    return shortId.substring(0,8).toUpperCase();
  }

}
