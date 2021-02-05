package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Category -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Entity
public class Category extends UIDBaseEntity implements Serializable {


    private String name;
    private String description;
    private String note;


    @ManyToOne
    @JoinColumn(name = "businessId", referencedColumnName = "id", nullable = false)
    private Business business;

    @OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
    private List<SubCategory> subCategories = Lists.newArrayList();
}
