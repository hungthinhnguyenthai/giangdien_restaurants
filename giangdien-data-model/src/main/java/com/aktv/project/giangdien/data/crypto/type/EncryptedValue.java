package com.aktv.project.giangdien.data.crypto.type;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class EncryptedValue {

  private String value;

  @Override
  public String toString() {
    return value == null ? "null" : value;
  }
}
