package com.aktv.project.giangdien.data.utils;

import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import lombok.Getter;
import lombok.Setter;
import org.joda.time.DateTime;

import java.util.ArrayList;
import java.util.List;

/**
 * Critères de recherche communs à Registration, Association et Membership
 * User: mtoure
 */
public abstract class SearchCriteria<E> extends Pagination {

  protected List<E> listOfStatus = Lists.newArrayList();
  protected List<E> listOfTemporaryStatus = Lists.newArrayList();
  /**
   * critères
   */
  @Getter
  @Setter
  private String senderId;
  @Getter
  @Setter
  private String id;
  @Getter
  @Setter
  private DateTime beginDate;
  @Getter
  @Setter
  private DateTime endDate;
  @Getter
  @Setter
  private String userId;

  protected void addStatus(E status) {
    if (status != null) {
      listOfStatus.add(status);
    }
  }

  protected void addTemporaryStatus(E status) {
    if (status != null) {
      listOfTemporaryStatus.add(status);
    }
  }

  public abstract void addStatus(String status);

  public void clear() {
    id = null;
    senderId = null;
    beginDate = null;
    endDate = null;
    listOfStatus.clear();

    setPagination(this, Optional.<Integer>absent(), Optional.<Integer>absent());
  }

  public List<E> getListOfStatus() {
    return ImmutableList.copyOf(listOfStatus);
  }

  /**
   * For tests
   *
   * @return
   */
  public List<E> getCopyOfListOfStatus() {
    return new ArrayList<>(listOfStatus);
  }

  /**
   * For tests
   *
   * @return
   */
  public List<E> getCopyOfListOfTemporaryStatus() {
    return new ArrayList<>(listOfTemporaryStatus);
  }
}
