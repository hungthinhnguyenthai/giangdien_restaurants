package com.aktv.project.giangdien.data.generator;

import com.google.common.base.Joiner;
import com.google.common.base.Splitter;

import java.util.UUID;

public abstract class UIDGenerator {
  private UIDGenerator() {
  }


  public static String randomUID() {
    return Joiner.on("").join(Splitter.on('-').split(UUID.randomUUID().toString()));
  }
}
