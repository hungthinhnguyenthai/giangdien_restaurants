package com.aktv.project.giangdien.data.utils.pagination.impl;

import com.aktv.project.giangdien.data.utils.pagination.Page;
import com.aktv.project.giangdien.data.utils.pagination.Pageable;
import lombok.AllArgsConstructor;

import java.util.Iterator;
import java.util.List;

/**
 * @author Charles Fleury
 * @since 20/05/16.
 */
@AllArgsConstructor
public class DefaultPage<T> implements Page<T> {

  protected List<T> content;
  protected Pageable pageable;
  protected long total;

  @Override
  public int getTotalPages() {
    return getSize() == 0 ? 1 : (int) Math.ceil((double) total / (double) getSize());
  }

  @Override
  public long getTotalElements() {
    return total;
  }

  @Override
  public int getNumber() {
    return pageable == null ? 0 : pageable.getPageNumber();
  }

  @Override
  public int getSize() {
    return pageable == null ? 0 : pageable.getPageSize();
  }

  @Override
  public int getNumberOfElements() {
    return content.size();
  }

  @Override
  public List<T> getContent() {
    return content;
  }

  @Override
  public boolean hasContent() {
    return !content.isEmpty();
  }

  @Override
  public boolean isFirst() {
    return !hasPrevious();
  }

  @Override
  public boolean isLast() {
    return !hasNext();
  }

  @Override
  public boolean hasNext() {
    return getNumber() + 1 < getTotalPages();
  }

  @Override
  public boolean hasPrevious() {
    return getNumber() > 0;
  }

  @Override
  public Pageable nextPageable() {
    return hasNext() ? pageable.next() : null;
  }

  @Override
  public Pageable previousPageable() {
    return hasPrevious() ? pageable.previousOrFirst() : null;
  }

  @Override
  public Pageable currentPageable() {
    return pageable;
  }

  @Override
  public Iterator<T> iterator() {
    return content.iterator();
  }
}
