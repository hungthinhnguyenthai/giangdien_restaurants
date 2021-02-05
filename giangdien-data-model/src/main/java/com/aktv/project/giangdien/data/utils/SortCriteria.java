package com.aktv.project.giangdien.data.utils;

import static com.google.common.base.Preconditions.checkNotNull;

public abstract class SortCriteria<T extends Enum> {
  
  private final T column;
  
  private final SortOrder value;

  protected SortCriteria(T column, SortOrder value) {
    this.column = checkNotNull(column);
    this.value = checkNotNull(value);
  }

  
  public T getColumn() {
    return column;
  }

  
  public SortOrder getValue() {
    return value;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }

    SortCriteria that = (SortCriteria) o;
    return column.equals(that.column) && value == that.value;
  }

  @Override
  public int hashCode() {
    int result = column.hashCode();
    result = 31 * result + value.hashCode();
    return result;
  }

  public static enum SortOrder {
    ASC,
    DESC;
  }
}
