package com.aktv.project.giangdien.data.utils;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.base.Predicate;

import java.util.Objects;

public class UIDBaseEntityHasId implements Predicate<UIDBaseEntity> {
  private final String expectedId;

  public UIDBaseEntityHasId(String expectedId) {
    this.expectedId = expectedId;
  }

  @Override
  public boolean apply(UIDBaseEntity input) {
    return input != null && Objects.equals(expectedId, input.getId());
  }
}
