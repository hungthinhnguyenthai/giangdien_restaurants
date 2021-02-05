package com.aktv.project.giangdien.data.utils.pagination.impl;

import com.aktv.project.giangdien.data.utils.pagination.Pageable;

public class ZeroBasedPageRequest extends AbstractPageRequest {

  public static final int DEFAULT_PAGE_INDEX = 0;

  public ZeroBasedPageRequest(int page, int size) {
    super(DEFAULT_PAGE_INDEX, page, size);
  }

  public static Pageable top1() {
    return new ZeroBasedPageRequest(DEFAULT_PAGE_INDEX, 1);
  }

  @Override
  protected Pageable newInstance(int page, int size) {
    return new ZeroBasedPageRequest(page, size);
  }
}
