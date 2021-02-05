package com.aktv.project.giangdien.data.utils;

import com.google.common.base.Optional;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(exclude = {"totalCount"})
public class Pagination {

  public static final Integer DEFAULT_MAX_RESULT = 1000; // > 1 otherwise make no sense
  public static final Integer DEFAULT_PAGE_NUMBER = 1; // 1-based
  /**
   * Index actuel de la pagination
   */
  private Integer index = (DEFAULT_PAGE_NUMBER - 1) * DEFAULT_MAX_RESULT; // = 0
  /**
   * Nombre maximum de donnée retournées s'il y a une pagination
   */
  private Integer maxResults = DEFAULT_MAX_RESULT;

  /**
   * Le numéro de la page retournée
   */
  private Integer page = DEFAULT_PAGE_NUMBER;

  /**
   *
   */
  private Integer totalCount;

  /**
   * aciver la pagination
   *
   * TODO intérêt de se paramètre? A quoi servent les valeurs par défaut alors...
   */
  private boolean paginate = false;

  /**
   * Permet d'activer la requête pour avoir le nombre total
   */
  private boolean queryTotalCount = false;


  public int getTotalCount() {
    if (!queryTotalCount) {
      throw new IllegalStateException("Try to get total count, but you don't enable it with queryTotalCount");
    }
    if (totalCount == null) {
      throw new IllegalStateException("total count is not yet initialized");
    }

    return totalCount;
  }

  public int getPageCount() {
    if (!queryTotalCount) {
      throw new IllegalStateException("Try to get page count, but you don't enable queryTotalCount");
    }

    return getPageCount(this, totalCount);
  }

  /**
   * Calcule le nombre total de pages pour un nombre total d'éléments et une certaine {@link Pagination}.
   * <p>
   * Si {@code pagination.isPaginate()} est false ou si le nombre total d'éléments est < 1, alors la
   * valeur retournée est 0.
   * </p>
   *
   * @param pagination     un objet {@link Pagination} ou une sous classe
   * @param totalItemCount le nombre total d'items
   * @return un {@code int} >= 0.
   */
  public static <T extends Pagination> int getPageCount(T pagination,
                                                        int totalItemCount) {
    if (!pagination.isPaginate() || totalItemCount < 1) {
      return 0;
    }

    int nbPages = totalItemCount / pagination.getMaxResults();
    if (totalItemCount % pagination.getMaxResults() != 0) {
      nbPages++;
    }
    return nbPages;
  }

  /**
   * Active la pagination pour l'object {@link Pagination} spécifié pour la page indiquée et avec {@link #DEFAULT_MAX_RESULT}
   * éléments par page.
   * <p>
   * Le numéro de la page doit être supérieur ou égal à 1 (numérotation naturelle).
   * Si celui-ci n'est pas spécifié ou s'il est illégal, la valeur {@link #DEFAULT_PAGE_NUMBER} sera utilisée.
   * </p>
   * <p>
   * Cette méthode est une simple méthode pratique pour éviter d'écrire
   * {@code Pagination.setPagination(object, pageNumber, Optional.<Integer>absent())}
   * </p>
   *
   * @param pagination un objet {@link Pagination} ou une sous classe
   * @param pageNumber le numéro de la page à afficher (>= 1)
   */
  public static <T extends Pagination> void setPagination(T pagination,
                                                          Optional<Integer> pageNumber) {
    setPagination(pagination, pageNumber, Optional.<Integer>absent());
  }

  /**
   * Active la pagination pour l'object {@link Pagination} spécifié pour la page indiquée et le nombre d'items
   * par page indiqué.
   * <p>
   * Le numéro de la page doit être supérieur ou égal à 1 (numérotation naturelle).
   * Si celui-ci n'est pas spécifié ou s'il est illégal, la valeur {@link #DEFAULT_PAGE_NUMBER} sera utilisée.
   * </p>
   * <p>
   * Le nombre d'élément par page doit être strictement supérieur à 1 (pas de page vides).
   * Si celui-ci n'est pas spécifié ou s'il est illégal, la valeur {@link #DEFAULT_MAX_RESULT} sera utilisée.
   * </p>
   *
   * @param pagination     un objet {@link Pagination} ou une sous classe
   * @param pageNumber     le numéro de la page à afficher (>= 1)
   * @param nbItemsPerPage le nombre d'éléments par page (> 1)
   */
  public static <T extends Pagination> void setPagination(T pagination,
                                                          Optional<Integer> pageNumber,
                                                          Optional<Integer> nbItemsPerPage) {
    Integer page = DEFAULT_PAGE_NUMBER;
    if (pageNumber.isPresent() && pageNumber.get() > 0) {
      page = pageNumber.get();
    }

    Integer paginateSize = DEFAULT_MAX_RESULT;
    if (nbItemsPerPage.isPresent() && nbItemsPerPage.get() > 0) {
      paginateSize = nbItemsPerPage.get();
    }

    pagination.setPaginate(true);
    pagination.setPage(page);
    pagination.setIndex((page - 1) * paginateSize);
    pagination.setMaxResults(paginateSize);
  }
}
