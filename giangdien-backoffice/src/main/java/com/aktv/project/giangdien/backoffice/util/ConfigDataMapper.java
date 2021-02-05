package com.aktv.project.giangdien.backoffice.util;

import com.aktv.project.giangdien.backoffice.model.BasicInfo;
import com.aktv.project.giangdien.backoffice.model.KeyPair;
import com.aktv.project.giangdien.data.model.Internationalization;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * com.aktv.project.giangdien.backoffice.business.PageConfigService
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */

public class ConfigDataMapper {

    public static final String BASE_INFO_GROUP = "BASE_INFO";

    public static final String BASE_INFO_OWNER_NAME = "OWNER_NAME";
    public static final String BASE_INFO_OWNER_EMAIL = "OWNER_EMAIL";
    public static final String BASE_INFO_OWNER_PHONE = "OWNER_PHONE";
    public static final String BASE_INFO_OWNER_GENDER = "OWNER_GENDER";

    public static final String BASE_INFO_BUSINESS_OPEN_TIME = "BUSINESS_OPEN_TIME";
    public static final String BASE_INFO_BUSINESS_CLOSE_TIME = "BUSINESS_CLOSE_TIME";

    public static final String BASE_INFO_BUSINESS_NAME = "BUSINESS_NAME";
    public static final String BASE_INFO_BUSINESS_PHONE = "BUSINESS_PHONE";

    public static final String BASE_INFO_ADDR_STREET = "ADDR_STREET";
    public static final String BASE_INFO_ADDR_COUNTRY = "ADDR_COUNTRY";
    public static final String BASE_INFO_ADDR_WARD = "ADDR_WARD";
    public static final String BASE_INFO_ADDR_CITY = "ADDR_CITY";
    public static final String BASE_INFO_ADDR_PROVINCE = "ADDR_PROVINCE";

    public static final String BASE_INFO_BUSINESS_FB_URL = "BUSINESS_FB_URL";
    public static final String BASE_INFO_BUSINESS_GG_URL = "BUSINESS_GG_URL";
    public static final String BASE_INFO_BUSINESS_SKYPE = "BUSINESS_SKYPE";
    public static final String BASE_INFO_BUSINESS_TWITTER_URL = "BUSINESS_TWITTER_URL";
    public static final String BASE_INFO_BUSINESS_MAP_COORDINATES_X = "BUSINESS_MAP_COORDINATES_X";
    public static final String BASE_INFO_BUSINESS_MAP_COORDINATES_Y = "BUSINESS_MAP_COORDINATES_X";
    public static final String BASE_INFO_BUSINESS_DESC = "BUSINESS_DESC";
    public static final String BASE_INFO_SECONDARY_OWNER_NAME = "SECONDARY_OWNER_NAME";
    public static final String BASE_INFO_SECONDARY_OWNER_EMAIL = "SECONDARY_OWNER_EMAIL";
    public static final String BASE_INFO_SECONDARY_OWNER_PHONE = "SECONDARY_OWNER_PHONE";
    public static final String BASE_INFO_SECONDARY_OWNER_GENDER = "SECONDARY_OWNER_GENDER";

    public static final String BASE_INFO_SECONDARY_MAP_COORDINATES_X = "SECONDARY_MAP_COORDINATES_X";
    public static final String BASE_INFO_SECONDARY_MAP_COORDINATES_Y = "SECONDARY_MAP_COORDINATES_X";

    public static final String BASE_INFO_SECONDARY_BUSINESS_NAME = "SECONDARY_BUSINESS_NAME";
    public static final String BASE_INFO_SECONDARY_BUSINESS_ADDR_STREET = "SECONDARY_BUSINESS_ADDR_STREET";
    public static final String BASE_INFO_SECONDARY_BUSINESS_ADDR_COUNTRY = "SECONDARY_BUSINESS_ADDR_COUNTRY";
    public static final String BASE_INFO_SECONDARY_BUSINESS_ADDR_WARD = "SECONDARY_BUSINESS_ADDR_WARD";
    public static final String BASE_INFO_SECONDARY_BUSINESS_ADDR_CITY ="SECONDARY_BUSINESS_ADDR_CITY";
    public static final String BASE_INFO_SECONDARY_BUSINESS_ADDR_PROVINCE = "SECONDARY_BUSINESS_ADDR_PROVINCE";


    public static final String BASE_INFO_BUSINESS_GG_ANALYTIC_ID = "BUSINESS_GG_ANALYTIC_ID";

    public static final String BASE_INFO_STORE_NAME = "STORE_NAME";
    public static final String BASE_INFO_BUSINESS_SECTOR = "BUSINESS_SECTOR";
    public static final String BASE_INFO_BUSINESS_SLOGAN = "BUSINESS_SLOGAN";


    public static Map<String, String> convertBasicInfoToMap(BasicInfo info){
        Map<String, String> result = Maps.newHashMap();
        put2Map(result, info.getOwnerNameKeyPair());
        put2Map(result, info.getOwnerEmailKeyPair());
        put2Map(result, info.getOwnerPhoneKeyPair());
        put2Map(result, info.getOwnerGenderKeyPair());
        put2Map(result, info.getOpenTimeKeyPair());
        put2Map(result, info.getCloseTimeKeyPair());
        put2Map(result, info.getBusinessNameKeyPair());
        put2Map(result, info.getBusinessPhoneKeyPair());
        put2Map(result, info.getAddrStreetKeyPair());
        put2Map(result, info.getAddrCountryKeyPair());
        put2Map(result, info.getAddrWardKeyPair());
        put2Map(result, info.getAddrCityKeyPair());
        put2Map(result, info.getAddrProvinceKeyPair());
        put2Map(result, info.getBusinessFbUrlKeyPair());
        put2Map(result, info.getBusinessGooglePlusKeyPair());
        put2Map(result, info.getBusinessSkypeKeyPair());
        put2Map(result, info.getBusinessTwitterUrlKeyPair());
        put2Map(result, info.getBusinessDescKeyPair());
        put2Map(result, info.getGoogleAnalyticKeyPair());
        put2Map(result, info.getStoreNameKeyPair());
        put2Map(result, info.getSecondaryOwnerNameKeyPair());
        put2Map(result, info.getSecondaryOwnerEmailKeyPair());
        put2Map(result, info.getSecondaryOwnerBusinessNameKeyPair());
        put2Map(result, info.getSecondaryOwnerPhoneKeyPair());
        put2Map(result, info.getSecondaryOwnerGenderKeyPair());
        put2Map(result, info.getSecondaryAddrStreetKeyPair());
        put2Map(result, info.getSecondaryAddrCountryKeyPair());
        put2Map(result, info.getSecondaryAddrWardKeyPair());
        put2Map(result, info.getSecondaryAddrCityKeyPair());
        put2Map(result, info.getSecondaryAddrProvinceKeyPair());
        put2Map(result, info.getBusinessSectorKeyPair());
        put2Map(result, info.getBusinessSloganKeyPair());
        return result;
    }
    public static void put2Map(Map map, KeyPair keyPair) {
        if(keyPair != null) {
            map.put(keyPair.getKey(), keyPair.getValue());
        }
    }
    public static void addKeyPair2List(List entities, KeyPair keyPair) {
        if(keyPair != null) {
            entities.add(convertDataToInternationalization(BASE_INFO_GROUP, Locale.ENGLISH.getLanguage(), keyPair.getKey(), keyPair.getValue()));
        }

    }
    public static List<Internationalization> convertBasicInfo2Entities(BasicInfo info){
        List<Internationalization> result = Lists.newArrayList();
        addKeyPair2List(result, info.getOwnerNameKeyPair());
        addKeyPair2List(result, info.getOwnerEmailKeyPair());
        addKeyPair2List(result, info.getOwnerPhoneKeyPair());
        addKeyPair2List(result, info.getOwnerGenderKeyPair());
        addKeyPair2List(result, info.getOpenTimeKeyPair());
        addKeyPair2List(result, info.getCloseTimeKeyPair());
        addKeyPair2List(result, info.getBusinessNameKeyPair());
        addKeyPair2List(result, info.getBusinessPhoneKeyPair());
        addKeyPair2List(result, info.getAddrStreetKeyPair());
        addKeyPair2List(result, info.getAddrCountryKeyPair());
        addKeyPair2List(result, info.getAddrWardKeyPair());
        addKeyPair2List(result, info.getAddrCityKeyPair());
        addKeyPair2List(result, info.getAddrProvinceKeyPair());
        addKeyPair2List(result, info.getBusinessFbUrlKeyPair());
        addKeyPair2List(result, info.getBusinessGooglePlusKeyPair());
        addKeyPair2List(result, info.getBusinessSkypeKeyPair());
        addKeyPair2List(result, info.getBusinessTwitterUrlKeyPair());
        addKeyPair2List(result, info.getBusinessDescKeyPair());
        addKeyPair2List(result, info.getGoogleAnalyticKeyPair());
        addKeyPair2List(result, info.getStoreNameKeyPair());
        addKeyPair2List(result, info.getSecondaryOwnerNameKeyPair());
        addKeyPair2List(result, info.getSecondaryOwnerEmailKeyPair());
        addKeyPair2List(result, info.getSecondaryOwnerBusinessNameKeyPair());
        addKeyPair2List(result, info.getSecondaryOwnerPhoneKeyPair());
        addKeyPair2List(result, info.getSecondaryOwnerGenderKeyPair());
        addKeyPair2List(result, info.getSecondaryAddrStreetKeyPair());
        addKeyPair2List(result, info.getSecondaryAddrCountryKeyPair());
        addKeyPair2List(result, info.getSecondaryAddrWardKeyPair());
        addKeyPair2List(result, info.getSecondaryAddrCityKeyPair());
        addKeyPair2List(result, info.getSecondaryAddrProvinceKeyPair());
        addKeyPair2List(result, info.getBusinessSectorKeyPair());
        addKeyPair2List(result, info.getBusinessSloganKeyPair());
        return result;
    }
    public static List<Internationalization> mapToEntities(Map<String, String> input) {
        List<Internationalization> result = Lists.newArrayList();
        for (String key : input.keySet()) {
            result.add(convertDataToInternationalization(BASE_INFO_GROUP, Locale.ENGLISH.getLanguage(), key, input.get(key)));
        }
        return result;
    }

    public static Internationalization convertDataToInternationalization(String group, String lang, String name, String value) {
        Internationalization internationalization = new Internationalization();
        internationalization.setKeyCode(name);
        internationalization.setGroupType(group);
        internationalization.setLang(lang);
        internationalization.setText(value);
        return internationalization;
    }

//    #TODO remove this
    public static BasicInfo converBackInternationalzationToInfo(List<Internationalization> data) {
        BasicInfo resutl = new BasicInfo();
        for(Internationalization internationalization : data) {
            if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_OWNER_NAME)) {
                resutl.setOwnerName(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_OWNER_EMAIL)) {
                resutl.setOwnerEmail(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_OWNER_PHONE)) {
                resutl.setOwnerPhone(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_OWNER_GENDER)) {
                resutl.setOwnerGender(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_OPEN_TIME)) {
                resutl.setOpenTime(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_CLOSE_TIME)) {
                resutl.setCloseTime(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_NAME)) {
                resutl.setBusinessName(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_PHONE)) {
                resutl.setBusinessPhone(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_ADDR_STREET)) {
                resutl.setAddrStreet(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_ADDR_COUNTRY)) {
                resutl.setAddrCountry(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_ADDR_CITY)) {
                resutl.setAddrCity(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_ADDR_PROVINCE)) {
                resutl.setAddrProvince(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_FB_URL)) {
                resutl.setBusinessFbUrl(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_GG_URL)) {
                resutl.setBusinessGooglePlus(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_SKYPE)) {
                resutl.setBusinessSkype(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_TWITTER_URL)) {
                resutl.setBusinessTwitterUrl(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_DESC)) {
                resutl.setBusinessDesc(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_GG_ANALYTIC_ID)) {
                resutl.setGoogleAnalytic(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_STORE_NAME)) {
                resutl.setStoreName(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_OWNER_NAME)) {
                resutl.setSecondaryOwnerName(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_OWNER_EMAIL)) {
                resutl.setSecondaryOwnerEmail(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_BUSINESS_NAME)) {
                resutl.setSecondaryOwnerBusinessName(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_OWNER_PHONE)) {
                resutl.setSecondaryOwnerPhone(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_OWNER_GENDER)) {
                resutl.setSecondaryOwnerGender(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_BUSINESS_ADDR_STREET)) {
                resutl.setSecondaryAddrStreet(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_BUSINESS_ADDR_COUNTRY)) {
                resutl.setSecondaryAddrCountry(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_BUSINESS_ADDR_WARD)) {
                resutl.setSecondaryAddrWard(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_BUSINESS_ADDR_CITY)) {
                resutl.setSecondaryAddrCity(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_SECONDARY_BUSINESS_ADDR_PROVINCE)) {
                resutl.setSecondaryAddrProvince(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_SECTOR)) {
                resutl.setBusinessSector(internationalization.getText());
            } else if(internationalization.getKeyCode().equalsIgnoreCase(BASE_INFO_BUSINESS_SLOGAN)) {
                resutl.setBusinessSlogan(internationalization.getText());
            }
        }
        return resutl;
    }

}
