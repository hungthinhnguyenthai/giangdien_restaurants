package com.aktv.project.giangdien.data.model;

import java.io.Serializable;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.*;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Recipe extends UIDBaseEntity implements Serializable {

    private String unit;
    private Integer weigh;

    @ManyToOne
    @JoinColumn(name = "productId", referencedColumnName = "id")
    private Product product;
}