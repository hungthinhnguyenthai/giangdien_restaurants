package com.aktv.project.giangdien.data.generator;

import java.util.Random;

public class SupportDataCodeGenerator {
  private static Random random = new Random();

  public static String generate() {
    int c = random.nextInt(26) + 65;
    return Character.toString((char) c);
  }

}
