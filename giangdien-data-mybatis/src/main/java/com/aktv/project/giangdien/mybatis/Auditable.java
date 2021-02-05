package com.aktv.project.giangdien.mybatis;

import org.joda.time.DateTime;

/**
 * @author Loïc Guerrin <guerrin@fullsix.com>
 */
public interface Auditable {

  DateTime getCreatedAt();

  void setCreatedAt(DateTime createdAt);

  DateTime getUpdatedAt();

  void setUpdatedAt(DateTime createdAt);
}
