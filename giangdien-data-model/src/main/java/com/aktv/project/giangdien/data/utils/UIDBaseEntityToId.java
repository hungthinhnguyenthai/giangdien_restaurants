package com.aktv.project.giangdien.data.utils;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.base.Function;


public enum UIDBaseEntityToId implements Function<UIDBaseEntity, String> {
  INSTANCE;

  @Override
  public String apply(UIDBaseEntity input) {
    return input == null ? null : input.getId();
  }
}
