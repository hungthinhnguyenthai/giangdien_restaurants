package com.aktv.project.giangdien.data;

import com.aktv.project.giangdien.data.utils.UIDBaseEntityToId;
import com.google.common.collect.Ordering;
import lombok.Data;

import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Sets.newLinkedHashSet;
import static com.google.common.collect.Sets.newTreeSet;

@Data
@MappedSuperclass
public abstract class UIDBaseEntity implements WithStringId {

  @Id
  private String id;

  protected <E extends UIDBaseEntity> boolean isByIdentityIn(Collection<E> collection) {
    for(E entity : collection) {
      if(this.getId().equals(entity.getId())) {
        return true;
      }
    }
    return false;
  }

  /**
   * Use Id instead of equals/hashcode to create sets of UIDBaseEntity (OF THE SAME INHERITED TYPE)
   * @param collection collection with non unique ids (eventually)
   * @return set of entity
   */
  public static <E extends UIDBaseEntity> Set<E> uniqueId(Collection<E> collection) {
    Set<E> result = newTreeSet(byIdComparator());
    result.addAll(collection);
    return result;
  }

  /**
   * Tranform Collection of UIDBaseEntity-inherited types to id list
   */
  public static <E extends UIDBaseEntity> List<String> toIdentityList(Collection<E> collection) {
    List<String> ids = newArrayList();
    for(E e : collection){
      ids.add(e.getId());
    }
    return ids;
  }

  /**
   * Tranform Collection of UIDBaseEntity-inherited types to id set
   */
  public static <E extends UIDBaseEntity> Set<String> toIdentitySet(Collection<E> collection) {
    Set<String> ids = newLinkedHashSet();
    for(E e : collection){
      ids.add(e.getId());
    }
    return ids;
  }

  public static Ordering<UIDBaseEntity> byIdComparator() {
    return Ordering.natural().nullsFirst().onResultOf(UIDBaseEntityToId.INSTANCE);
  }
}
