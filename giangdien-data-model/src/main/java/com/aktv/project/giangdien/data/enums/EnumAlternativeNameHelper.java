package com.aktv.project.giangdien.data.enums;

import com.google.common.base.Optional;

import java.util.EnumSet;

import static com.google.common.base.Preconditions.checkNotNull;

@Deprecated
public class EnumAlternativeNameHelper {

  private static <T extends Enum<T> & EnumAlternativeName> T safeGetByAlternativeName(Class<T> enumClass, String alternativeName) {
    for ( T t : EnumSet.allOf(enumClass) ) {
      if ( t.getAlternativeName().equals(alternativeName) ) {
        return t;
      }
    }
    return null;
  }

  public static <T extends Enum<T> & EnumAlternativeName> Optional<T> getIfPresent(Class<T> enumClass, String alternativeName) {
    T t = safeGetByAlternativeName(enumClass,alternativeName);
    return Optional.fromNullable(t);
  }

  public static <T extends Enum<T> & EnumAlternativeName> T valueOf(Class<T> enumClass, String alternativeName) {
    T t = safeGetByAlternativeName(enumClass,alternativeName);
    return checkNotNull(t,"No alternative name of " + enumClass + " correspond to the provided alternative name = [" + alternativeName+"]");
  }

  public static <T extends Enum<T> & EnumAlternativeName> Optional<T> valueOfNullSafe(Class<T> enumClass, String alternativeName) {
    if ( alternativeName == null) {
      return Optional.absent();
    }
    return Optional.of( valueOf(enumClass,alternativeName) );
  }

}
