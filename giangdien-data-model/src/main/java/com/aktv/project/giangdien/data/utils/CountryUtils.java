package com.aktv.project.giangdien.data.utils;

import com.google.common.base.Strings;

import java.util.Locale;

/**
 * Classe utilitaire permettant de gérer les codes et les libellés de pays
 *
 * @author Vincent Doba
 */
public class CountryUtils {

  /**
   * Récupère le libellé du pays ayant pour code pays countryCode
   *
   * @param countryCode le code pays du pays dont on veut récupérer le libellé
   * @return le libellé du pays ayant pour code
   */
  public static String retrieveCountryFromCode(String countryCode) {
    if (Strings.isNullOrEmpty(countryCode)) {
      return null;
    }
    String cleanedCountryCode = countryCode.trim();
    return new Locale("", cleanedCountryCode).getDisplayName(Locale.getDefault()).toUpperCase(Locale.getDefault());
  }

}
