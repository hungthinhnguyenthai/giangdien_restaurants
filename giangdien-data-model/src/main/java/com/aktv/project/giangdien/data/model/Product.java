package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Product extends UIDBaseEntity implements Serializable {

    private String name;
    private String description;
    private Integer price;
    private String detail;

    @ManyToOne
    @JoinColumn(name = "subCategoryId", referencedColumnName = "id")
    private SubCategory subCategory;

    @OneToMany(mappedBy = "productImg")
    private List<Gallery> galleries = Lists.newArrayList();

    @OneToMany(mappedBy = "product")
    private List<Recipe> recipes = Lists.newArrayList();


    public String getPriceAndCurrency() {
        return new DecimalFormat("###,###.###").format(price);
    }
}