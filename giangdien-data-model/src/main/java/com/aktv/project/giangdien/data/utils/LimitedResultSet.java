package com.aktv.project.giangdien.data.utils;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Collection;
import java.util.Iterator;

/**
 * This class is just a simple wrapper for a collection of results which were truncated because of a limit.
 *
 * @param <T> Type of the elements contained by the result set
 */
@Data
@AllArgsConstructor
public class LimitedResultSet<T> implements Iterable<T> {

  /**
   * Truncated collection of results
   */
  private final Collection<T> results;

  /**
   * Total number of elements if there were no limitation
   */
  private final int totalCount;

  @Override
  public Iterator<T> iterator() {
    return results.iterator();
  }

  public int size() {
    return results.size();
  }
}
