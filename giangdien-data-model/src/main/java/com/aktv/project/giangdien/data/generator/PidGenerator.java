package com.aktv.project.giangdien.data.generator;

import org.apache.commons.lang3.RandomStringUtils;

public class PidGenerator {

  public static String generate() {
    return RandomStringUtils.random(1, '1', '2', '3', '4', '5', '6', '7', '8', '9')
            + RandomStringUtils.random(6, '0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
  }

}
