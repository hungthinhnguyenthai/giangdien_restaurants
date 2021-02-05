package com.aktv.project.giangdien.data.generator;

import com.google.common.base.Preconditions;

import java.security.SecureRandom;
import java.util.Random;

public class ValidationCodeGenerator {

  private static final char[] DEFAULT_SYMBOLS = "01234567ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  public static final ValidationCodeGenerator DEFAULT_CODE_GENERATOR = new ValidationCodeGenerator(DEFAULT_SYMBOLS, 8, true);
  private final char[] symbols;
  private final int length;
  private final boolean rotate01;


  public ValidationCodeGenerator(char[] symbols, int length, boolean rotate01) {
    this.symbols = Preconditions.checkNotNull(symbols, "symbol table cannot be null");
    this.length = length;
    this.rotate01 = rotate01;
  }

  public static String generateWithDefault() {
    return DEFAULT_CODE_GENERATOR.generate();
  }


  public String generate() {
    Random secureRandom = new SecureRandom();

    char[] newValidationCode = new char[length];
    for (int i = 0; i < length; i++) {
      int selectedSymbolIndex = secureRandom.nextInt(symbols.length);

      newValidationCode[i] = rotate01IfNecessary(symbols[selectedSymbolIndex]);
    }

    return new String(newValidationCode);
  }


  private char rotate01IfNecessary(char c) {
    if(!rotate01) {
      return c;
    }

    char rotated = c;
    switch (c) {
      case '0': rotated = 'O'; break;
      case '1': rotated = 'I'; break;
      default:
    }
    return rotated;
  }
}
