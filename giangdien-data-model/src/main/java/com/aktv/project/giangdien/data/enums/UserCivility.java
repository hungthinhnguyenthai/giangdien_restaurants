package com.aktv.project.giangdien.data.enums;

import org.apache.commons.lang3.StringUtils;

/**
 * @author Lorber Sebastien <i>(lorber.sebastien@gmail.com)</i>
 */
public enum UserCivility {

  MR,
  MME;

  public static final String MLLE = "MLLE";
  /** return true si la chaine passée en paramètre correcpond à MR/MME/MLLE
   *
   * @param civility
   * @return
   */
  public static boolean isValid(String civility) {
    for (UserCivility userCivility : UserCivility.values()) {
      if (userCivility.name().equals(civility)) {
        return true;
      }
    }
    return false;
  }

  /**
   * Permet d'obtenir le libellé à partir du prefix.
   *
   * @return Le libellé correspondant. Si le prefix a une valeur inconnue, alors il sera retourné tel quel.
   */
  public static String getPrefixLabel(String urlPrefix) {
    if (StringUtils.isEmpty(urlPrefix)) {
      return null;
    }
    switch (urlPrefix) {
      case "MR":
        return "Monsieur";
      case "MME":
        return "Madame";
      case "MLLE":
        return "Mademoiselle";
      default:
        return urlPrefix;
    }

  }
}
