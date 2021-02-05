package com.aktv.project.giangdien.data.generator;

import com.aktv.project.giangdien.data.specification.RG;
import com.google.common.base.CharMatcher;
import org.apache.commons.lang3.RandomStringUtils;

public abstract class ManagerPasswordGenerator {

  private static final int LENGTH = 8;
  private static final String ESCAPE = "\\\\";

  private static final char[] CHARS = new char[]{'~', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', '!', '"',
          '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
          ':', ';', '<', '=', '>', '?', '@',
          'A', 'B', 'C', 'D', 'E', 'D', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
          'a', 'b', 'c', 'd', 'e', 'd', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
          '[', ']', '\\', '^', '_', '`', '{', '|', '}', 'ç', 'é', 'è', 'ë', 'ê', 'â', 'à', 'ä', 'ö', 'ô', 'ü', 'û', 'ù', 'ï', 'î'};

  private static final CharMatcher CHARS_MATCHER = CharMatcher.anyOf(new String(CHARS));

  private static final CharMatcher UPPER_MATCHER = CharMatcher.JAVA_UPPER_CASE;
  private static final CharMatcher LOWER_MATCHER = CharMatcher.JAVA_LOWER_CASE;
  private static final CharMatcher DIGIT_MATCHER = CharMatcher.DIGIT;

  @RG("EXT-AUTH1")
  public static String generate() {
    String password;
    do {
      password = RandomStringUtils.random(LENGTH, CHARS);
    } while (!isValid(password));

    return password;
  }
  public static boolean isValid(String password) {
    return CHARS_MATCHER.matchesAllOf(password) && UPPER_MATCHER.matchesAnyOf(password) && LOWER_MATCHER.matchesAnyOf(password) && DIGIT_MATCHER.matchesAnyOf(password);
  }

}
