package com.aktv.project.giangdien.data.utils;


import com.aktv.project.giangdien.data.enums.UserCivility;

public class UserUtils {
  /**
   * remplacer la civilité MLLE par MME
   *
   * @param title
   * @return
   */
  public static String  fixUserTitle(String title){
    if (title != null && title.equalsIgnoreCase(UserCivility.MLLE)){
      return UserCivility.MME.name();
    }
    return title;
  }

  /**
   * vérifier si la civilité est correcte
   *
   * @param title
   * @return
   */
  public static boolean isValidTitle(String title){
    return title == null || UserCivility.isValid(title.toUpperCase());
  }
}
