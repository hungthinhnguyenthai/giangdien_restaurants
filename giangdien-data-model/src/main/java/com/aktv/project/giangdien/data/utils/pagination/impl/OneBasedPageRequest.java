package com.aktv.project.giangdien.data.utils.pagination.impl;

import com.aktv.project.giangdien.data.utils.pagination.Pageable;

public class OneBasedPageRequest extends AbstractPageRequest {

  public static final int DEFAULT_PAGE_INDEX = 1;

  public OneBasedPageRequest(int page, int size) {
    super(DEFAULT_PAGE_INDEX, page, size);
  }

  public static Pageable top1() {
    return new OneBasedPageRequest(DEFAULT_PAGE_INDEX, 1);
  }

  @Override
  protected Pageable newInstance(int page, int size) {
    return new OneBasedPageRequest(page, size);
  }
}
