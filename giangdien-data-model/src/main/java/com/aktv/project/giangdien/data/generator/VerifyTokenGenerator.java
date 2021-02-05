package com.aktv.project.giangdien.data.generator;

import com.google.common.base.Preconditions;
import com.google.common.collect.Iterables;

import java.security.SecureRandom;
import java.util.Iterator;

public class VerifyTokenGenerator {

  private static final char[] CONSONANTS = "bcdfjlmnprstvxz".toCharArray();
  private static final char[] VOWELS = "aeiou".toCharArray();

  public static final VerifyTokenGenerator DEFAULT_TOKEN_GENERATOR = new VerifyTokenGenerator(6, CONSONANTS, VOWELS);
  private final int length;
  private final Iterable<char[]> alternableSymbolTables;


  public VerifyTokenGenerator(int length, char[]... symbolTables) {
    Preconditions.checkNotNull(symbolTables, "symbol table cannot be null");
    Preconditions.checkState(symbolTables.length >= 1, "there must be at least one symbol table");

    this.alternableSymbolTables = Iterables.cycle(symbolTables);
    this.length = length;
  }



  public static String generate() {
    return DEFAULT_TOKEN_GENERATOR.generateNewToken();
  }


  private String generateNewToken() {
    SecureRandom secureRandom = new SecureRandom();

    char[] newToken = new char[length];

    Iterator<char[]> iterator = alternableSymbolTables.iterator();
    for (int i = 0; i < length; i++) {
      char[] currentSymbolTable = iterator.next();
      int selectedSymbolIndex = secureRandom.nextInt(currentSymbolTable.length);

      newToken[i] = currentSymbolTable[selectedSymbolIndex];
    }

    return new String(newToken);
  }
}
