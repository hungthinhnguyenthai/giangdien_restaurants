package com.aktv.project.giangdien.data.utils.pagination.impl;


import com.aktv.project.giangdien.data.utils.pagination.Pageable;

import static com.google.common.base.Preconditions.checkArgument;

/**
 * @author Charles Fleury
 * @since 20/05/16.
 */
public abstract class AbstractPageRequest implements Pageable {

  protected final int BASE;
  protected final int PAGE;
  protected final int SIZE;

  public AbstractPageRequest(int base, int page, int size) {
    checkArgument(base >= 0, "Page base must not be less than zero!");
    checkArgument(page >= base, "Page index must not be less than base!");
    checkArgument(size >= 1, "Page size must not be less than one!");

    BASE = base;
    PAGE = page;
    SIZE = size;
  }

  public int getPageSize() {
    return SIZE;
  }

  public int getPageNumber() {
    return PAGE;
  }

  public Pageable previousOrFirst() {
    return hasPrevious() ? previous() : first();
  }

  protected abstract Pageable newInstance(int page, int size);

  public int getOffset() {
    return (PAGE - BASE) * SIZE;
  }

  public boolean hasPrevious() {
    return PAGE > BASE;
  }

  public Pageable previous() {
    return getPageNumber() == BASE ? this : newInstance(getPageNumber() - 1, getPageSize());
  }

  public Pageable first() {
    return newInstance(BASE, getPageSize());
  }

  public Pageable next() {
    return newInstance(PAGE + 1, SIZE);
  }
}
