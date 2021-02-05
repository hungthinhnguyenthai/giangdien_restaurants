package com.aktv.project.giangdien.data;

import com.google.common.base.Function;

public interface WithStringId {

  /**
   * Retourne l'id
   * @return
   */
  String getId();

  /**
   * Fonction Guava pour extraite l'id
   */
  Function<WithStringId,String> GET_ID = new Function<WithStringId,String>() {
    @Override
    public String apply(WithStringId input) {
      return input.getId();
    }
  };

  /**
   * Fonction Guava pour extraire l'id, si l'objet en entree n'est pas null
   */
  Function<WithStringId,String> GET_ID_OR_NULL = new Function<WithStringId,String>() {
    @Override
    public String apply(WithStringId input) {
      if ( input == null ) {
        return null;
      } else {
        return input.getId();
      }
    }
  };

}
