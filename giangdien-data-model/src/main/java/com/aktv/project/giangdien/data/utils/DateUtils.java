package com.aktv.project.giangdien.data.utils;

import com.google.common.base.Strings;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;

/**
 * User: Mahamadou TOURE
 */
public class DateUtils {

  private static final Logger LOGGER = LoggerFactory.getLogger(DateUtils.class);
  /**
   * Format utilisé pour les dates du ws émetteur
   */
  //Returns a basic formatter that combines a basic date and time without millis, separated by a 'T' (yyyyMMdd'T'HHmmssZ).
  private static DateTimeFormatter default_date_time_with_hour_formatter = ISODateTimeFormat.dateTimeNoMillis().withZone(DateTimeZone.UTC);
  //Returns a formatter for a full date as four digit year, two digit month of year, and two digit day of month (yyyy-MM-dd).
  private static DateTimeFormatter default_date_time_formatter = ISODateTimeFormat.date();

  public static DateTime convertStringToDateTimeWithDefaultPattern(String dateTimeStr) {
    try {
      if (!Strings.isNullOrEmpty(dateTimeStr)) {
        return default_date_time_formatter.parseDateTime(dateTimeStr);
      }
    } catch (Exception e) {
      LOGGER.error("parsing problem", e);
    }
    return null;
  }

  public static DateTime convertStringToDateTimeWithHourPattern(String dateTimeStr) {
    try {
      if (!Strings.isNullOrEmpty(dateTimeStr)) {
        return default_date_time_with_hour_formatter.parseDateTime(dateTimeStr);
      }
    } catch (Exception e) {
      LOGGER.error("parsing problem", e);
    }
    return null;
  }

  /**
   * Convertit une date (en UTC par exemple) vers la date en local
   *
   * @param dateTime
   * @return
   */
  public static DateTime getDateTimeInDefaultTimeZone(DateTime dateTime) {
    return getDateTimeInTimeZone(dateTime, DateTimeZone.getDefault());
  }

  /**
   * Convertit une date (en UTC par exemple) vers la date en local
   * Il faut effectuer si date est non null (sinon new DateTime(null) <===> DateTime.now())
   * @param date
   * @return
   */
  public static DateTime getDateTimeInDefaultTimeZone(Date date) {
    if (date != null) {
      return getDateTimeInTimeZone(new DateTime(date), DateTimeZone.getDefault());
    }
    return null;
  }

  /**
   * Convertit une date (en UTC par exemple) vers la date en local
   *
   * @param dateTime
   * @return
   */
  public static DateTime getDateTimeInDefaultTimeZone(String dateTime) {
    return getDefaultWithHourDateTimeInTimeZone(dateTime, DateTimeZone.getDefault());
  }

  /**
   * Convertit une date ver UTC
   * The time zone for Universal Coordinated Time
   *
   * @param dateTime
   * @return
   */
  public static DateTime getDateTimeInUTCTimeZone(DateTime dateTime) {
    return getDateTimeInTimeZone(dateTime, DateTimeZone.UTC);
  }

  /**
   * Convertit une date ver UTC
   * The time zone for Universal Coordinated Time
   *
   * @param dateTime
   * @return
   */
  public static DateTime getDateTimeInUTCTimeZone(String dateTime) {
    return getDefaultWithHourDateTimeInTimeZone(dateTime, DateTimeZone.UTC);
  }

  /**
   * Convertit une date ver une date spécifique d'une zone
   *
   * @param dateTime
   * @param zone
   * @return
   */
  public static DateTime getDateTimeInTimeZone(DateTime dateTime, DateTimeZone zone) {
    if (dateTime != null) {
      return dateTime.withZone(zone);
    }
    return null;
  }

  /**
   *    Convertit une date ver une date spécifique d'une zone
   * @param dateTime
   * @param zone
   * @return
   */

  /**
   * Convertit une date ver une date spécifique d'une zone
   * La date est passée en string.
   *
   * @param dateTimeStr
   * @param zone
   * @return
   */
  public static DateTime getDefaultWithHourDateTimeInTimeZone(String dateTimeStr, DateTimeZone zone) {
    DateTime dateTime = convertStringToDateTimeWithHourPattern(dateTimeStr);
    if (dateTime != null) {
      dateTime = dateTime.withZone(zone);
    }
    return dateTime;
  }


  /**
   * Convertit une date ver une date spécifique d'une zone
   * La date est passée en string.
   *
   * @param dateTimeStr
   * @return
   */
  public static DateTime getDefaultDateTimeInTimeZoneWithoutHour(String dateTimeStr) {
    DateTime dateTime = convertStringToDateTimeWithDefaultPattern(dateTimeStr);
    if (dateTime != null) {
      dateTime = dateTime.withZone(DateTimeZone.getDefault());
    }
    return dateTime;
  }

  /**
   * Retourne une date selon un format donné.
   *
   * @param dateTimeStr
   * @param dateTimeFormatter
   * @return
   */
  public static DateTime getDateTime(String dateTimeStr, DateTimeFormatter dateTimeFormatter) {
    try {
      if (dateTimeFormatter != null && !Strings.isNullOrEmpty(dateTimeStr)) {
        return dateTimeFormatter.parseDateTime(dateTimeStr);
      }
    } catch (Exception e) {
      LOGGER.error("date parsing problem", e);
    }
    return null;
  }
}


