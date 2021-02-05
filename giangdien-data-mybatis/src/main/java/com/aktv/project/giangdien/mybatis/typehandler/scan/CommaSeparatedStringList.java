package com.aktv.project.giangdien.mybatis.typehandler.scan;

import java.util.List;

/**
* @author Loïc Guerrin <guerrin@fullsix.com>
*/
public class CommaSeparatedStringList extends CharacterSeparatedStringList<List<String>> {

  public CommaSeparatedStringList() {
    super(',');
  }
}
