package com.aktv.project.giangdien.data.enums;


import com.google.common.base.Function;

@Deprecated
public interface EnumAlternativeName {

  @Deprecated
  String getAlternativeName();

  Function<EnumAlternativeName,String> GET_ALTERNATIVE_NAME = new Function<EnumAlternativeName,String>() {
    @Override
    public String apply(EnumAlternativeName input) {
      return input.getAlternativeName();
    }
  };

}


