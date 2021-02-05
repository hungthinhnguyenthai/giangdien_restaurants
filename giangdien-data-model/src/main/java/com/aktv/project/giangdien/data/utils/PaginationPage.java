package com.aktv.project.giangdien.data.utils;

import lombok.EqualsAndHashCode;
import lombok.ToString;


import static com.google.common.base.Preconditions.checkArgument;

/**
 * PaginationPage - Bean immutable représentant la page X ({@code index})) de N lignes (({@code size})) dans une liste de données paginées.
 * <p>
 * Ce bean expose les méthodes {@link #getOffset()} et {@link #getLines()} qui sont utilisées pour construire les arguments de l'expression
 * SQL {@code LIMIT}.
 * </p>
 *
 * @author Sébastien Lesaint
 */
@ToString
@EqualsAndHashCode
public class PaginationPage {

  public static final int DEFAULT_INDEX = 1;
  public static final int DEFAULT_ZERO_BASED_INDEX = 0;
  public static final int DEFAULT_SIZE = 10;

  private final int index;
  private final int size;

  /**
   * Créee une page représentant la page X ({@code index})) de N lignes (({@code size})) dans une liste de données paginées.
   *
   * @param index un int {@code >= 0}
   * @param size un int {@code >= 0}
   *
   * @throws IllegalArgumentException si index est {@code < 1} ou IllegalArgumentException si size est {@code < 1}
   */
  public PaginationPage(int index, int size) {
    checkArgument(index > 0,"page index begin to one");
    checkArgument(size > 0,"Nb elements per pages begin to 1");

    this.index = index;
    this.size = size;
  }

  /**
   * Indice (numéro) de la page.
   * <p>
   *   Les numéros commencent à 1.
   * </p>
   * @return un int {@code >= 1}
   */
  public int getIndex() {
    return index;
  }

  /**
   * Indice (numéro) de la page.
   * <p>
   *   Les numéros commencent à 1.
   * </p>
   * @return un int {@code >= 1}
   */
  public int getZeroBasedIndex() {
    return index - 1;
  }

  /**
   * La taile de la page / le nombre d'éléments par page.
   * <p>
   *   Il ne peut y avoir moins d'un élément par page.
   * </p>
   * @return un int {@code >= 1}
   */
  public int getSize() {
    return size;
  }

  /**
   * La valeur de l'offset pour l'usage de l'expression {@code LIMIT} en SQL.
   *
   * @return un int {@code >= 0}
   */
  public int getOffset() {
    return (index - 1) * size;
  }

  /**
   * La valeur du nombre de lignes pour l'usage de l'expression {@code LIMIT} en SQL.
   *
   * @return un int {@link > 0}
   */
  public int getLines() {
    return size;
  }

}
