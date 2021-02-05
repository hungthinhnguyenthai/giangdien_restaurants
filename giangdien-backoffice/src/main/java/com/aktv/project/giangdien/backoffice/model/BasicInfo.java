package com.aktv.project.giangdien.backoffice.model;

import com.aktv.project.giangdien.backoffice.util.ConfigDataMapper;
import lombok.Data;

import java.io.Serializable;


/**
 * com.aktv.project.giangdien.backoffice.model.BasicInfo
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
public class BasicInfo implements Serializable {
    private String ownerName;
    private String ownerEmail;
    private String ownerPhone;
    private String ownerGender;
    private String openTime;
    private String closeTime;
    private String businessName;
    private String businessPhone;
    private String addrStreet;
    private String addrCountry;
    private String addrWard;
    private String addrCity;
    private String addrProvince;
    private String businessFbUrl;
    private String businessTwitterUrl;
    private String businessGooglePlus;
    private String businessSkype;
    private String businessDesc;
    private String googleAnalytic;
    private String storeName;
    private String ownerBusinessName;
    private String secondaryOwnerName;
    private String secondaryOwnerEmail;
    private String secondaryOwnerPhone;
    private String secondaryOwnerBusinessName;
    private String secondaryOwnerGender;
    private String secondaryAddrStreet;
    private String secondaryAddrCountry;
    private String secondaryAddrWard;
    private String secondaryAddrCity;
    private String secondaryAddrProvince;

    private String businessSector;
    private String businessSlogan;

    public KeyPair getOwnerNameKeyPair() {
        return ownerName != null ? new KeyPair(ConfigDataMapper.BASE_INFO_OWNER_NAME, ownerName) : null;
    }
    public KeyPair getOwnerEmailKeyPair() {
        return ownerEmail != null ? new KeyPair(ConfigDataMapper.BASE_INFO_OWNER_EMAIL, ownerEmail) : null;
    }
    public KeyPair getOwnerPhoneKeyPair() {
        return ownerPhone != null ? new KeyPair(ConfigDataMapper.BASE_INFO_OWNER_PHONE, ownerPhone) : null;
    }
    public KeyPair getOwnerGenderKeyPair() {
        return ownerGender != null ? new KeyPair(ConfigDataMapper.BASE_INFO_OWNER_GENDER, ownerGender) : null;
    }
    public KeyPair getOpenTimeKeyPair() {
        return openTime != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_OPEN_TIME, openTime) : null;
    }
    public KeyPair getCloseTimeKeyPair() {
        return closeTime != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_CLOSE_TIME, closeTime) : null;
    }
    public KeyPair getBusinessNameKeyPair() {
        return businessName != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_NAME, businessName) : null;
    }
    public KeyPair getBusinessPhoneKeyPair() {
        return businessPhone != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_PHONE, businessPhone) : null;
    }
    public KeyPair getAddrStreetKeyPair() {
        return addrStreet != null ? new KeyPair(ConfigDataMapper.BASE_INFO_ADDR_STREET, addrStreet) : null;
    }
    public KeyPair getAddrCountryKeyPair() {
        return addrCountry != null ? new KeyPair(ConfigDataMapper.BASE_INFO_ADDR_COUNTRY, addrCountry) : null;
    }
    public KeyPair getAddrWardKeyPair() {
        return addrWard != null ? new KeyPair(ConfigDataMapper.BASE_INFO_ADDR_WARD, addrWard) : null;
    }
    public KeyPair getAddrCityKeyPair() {
        return addrCity != null ? new KeyPair(ConfigDataMapper.BASE_INFO_ADDR_CITY, addrCity) : null;
    }
    public KeyPair getAddrProvinceKeyPair() {
        return addrProvince != null ? new KeyPair(ConfigDataMapper.BASE_INFO_ADDR_PROVINCE, addrProvince) : null;
    }
    public KeyPair getBusinessFbUrlKeyPair() {
        return businessFbUrl != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_FB_URL, businessFbUrl) : null;
    }
    public KeyPair getBusinessTwitterUrlKeyPair() {
        return businessTwitterUrl != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_TWITTER_URL, businessTwitterUrl) : null;
    }
    public KeyPair getBusinessGooglePlusKeyPair() {
        return businessGooglePlus != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_GG_URL, businessGooglePlus) : null;
    }
    public KeyPair getBusinessSkypeKeyPair() {
        return businessSkype != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_SKYPE, businessSkype) : null;
    }
    public KeyPair getBusinessDescKeyPair() {
        return businessDesc != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_DESC, businessDesc) : null;
    }
    public KeyPair getGoogleAnalyticKeyPair() {
        return googleAnalytic != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_GG_ANALYTIC_ID, googleAnalytic) : null;
    }
    public KeyPair getStoreNameKeyPair() {
        return storeName != null ? new KeyPair(ConfigDataMapper.BASE_INFO_STORE_NAME, storeName) : null;
    }
    public KeyPair getSecondaryOwnerNameKeyPair() {
        return secondaryOwnerName != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_OWNER_NAME, secondaryOwnerName) : null;
    }
    public KeyPair getSecondaryOwnerEmailKeyPair() {
        return secondaryOwnerEmail != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_OWNER_EMAIL, secondaryOwnerEmail) : null;
    }
    public KeyPair getSecondaryOwnerBusinessNameKeyPair() {
        return secondaryOwnerBusinessName != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_BUSINESS_NAME, secondaryOwnerBusinessName) : null;
    }
    public KeyPair getSecondaryOwnerPhoneKeyPair() {
        return secondaryOwnerPhone != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_OWNER_PHONE, secondaryOwnerPhone) : null;
    }
    public KeyPair getSecondaryOwnerGenderKeyPair() {
        return secondaryOwnerGender != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_OWNER_GENDER, secondaryOwnerGender) : null;
    }
    public KeyPair getSecondaryAddrStreetKeyPair() {
        return secondaryAddrStreet != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_BUSINESS_ADDR_STREET, secondaryAddrStreet) : null;
    }
    public KeyPair getSecondaryAddrCountryKeyPair() {
        return secondaryAddrCountry != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_BUSINESS_ADDR_COUNTRY, secondaryAddrCountry) : null;
    }
    public KeyPair getSecondaryAddrWardKeyPair() {
        return secondaryAddrWard != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_BUSINESS_ADDR_WARD, secondaryAddrWard) : null;
    }
    public KeyPair getSecondaryAddrCityKeyPair() {
        return secondaryAddrCity != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_BUSINESS_ADDR_CITY, secondaryAddrCity) : null;
    }
    public KeyPair getSecondaryAddrProvinceKeyPair() {
        return secondaryAddrProvince != null ? new KeyPair(ConfigDataMapper.BASE_INFO_SECONDARY_BUSINESS_ADDR_PROVINCE, secondaryAddrProvince) : null;
    }
    public KeyPair getBusinessSectorKeyPair() {
        return businessSector != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_SECTOR, businessSector) : null;
    }
    public KeyPair getBusinessSloganKeyPair() {
        return businessSlogan != null ? new KeyPair(ConfigDataMapper.BASE_INFO_BUSINESS_SLOGAN, businessSlogan) : null;
    }
}
