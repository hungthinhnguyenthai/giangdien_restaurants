package com.aktv.project.giangdien.mybatis.typehandler.scan;

import java.util.List;

public class PipeSeparatedStringList extends CharacterSeparatedStringList<List<String>> {

  public PipeSeparatedStringList() {
    super('|');
  }
}
