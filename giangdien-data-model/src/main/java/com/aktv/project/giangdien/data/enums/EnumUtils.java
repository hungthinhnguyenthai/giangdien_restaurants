package com.aktv.project.giangdien.data.enums;

import com.google.common.base.Optional;


public class EnumUtils {


  public static <EnumType extends Enum<EnumType>> Optional<String> getName(EnumType enumInstance) {
    return enumInstance != null ? Optional.fromNullable(enumInstance.name()) : Optional.<String>absent();
  }


  public static <EnumType extends Enum<EnumType>> Optional<Integer> getOrdinal(EnumType enumInstance) {
    return enumInstance != null ? Optional.fromNullable(enumInstance.ordinal()) : Optional.<Integer>absent();
  }


  public static <EnumType extends Enum<EnumType>> String getNameOrNull(EnumType enumInstance) {
    return getName(enumInstance).orNull();
  }

  public static <EnumType extends Enum<EnumType>> int getOrdinalOrNull(EnumType enumInstance) {
    return getOrdinal(enumInstance).orNull();
  }



}
