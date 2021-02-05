package com.aktv.project.giangdien.backoffice.model;

/**
 * com.aktv.project.giangdien.backoffice.model.ProvinceEnum
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public enum ProvinceEnum {
    HCMC("Ho Chi Minh"), HN("Ha Noi"),
    DN("Dong Nai"), BD("Binh Duong"), VT("Vung Tau"), AG("An Giang"),
    BL("Bac Lieu"), BK("Bac Kan"), BG("Bac Giang"), BN("Bac Ninh"), BTR("Ben Tre"), BDI("Binh Dinh"), BP("Binh Phuoc"), BT("Binh Thuan"),
    CM("Ca Mau"), CB("Cao Bang"), CT("");

    private String name;

    ProvinceEnum(String name) {
        this.name = name;
    }
}
