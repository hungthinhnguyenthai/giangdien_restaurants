package com.aktv.project.giangdien.data.specification;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.RetentionPolicy.SOURCE;

@Documented
@Target({ METHOD, FIELD, TYPE, ANNOTATION_TYPE, PARAMETER, LOCAL_VARIABLE })
@Retention(SOURCE)

public @interface RG {

  String value();

  @Documented
  @Target({ METHOD, FIELD, TYPE, ANNOTATION_TYPE, PARAMETER, LOCAL_VARIABLE })
  @Retention(SOURCE)
  @interface RGs {
    RG[] value();
  }
}
