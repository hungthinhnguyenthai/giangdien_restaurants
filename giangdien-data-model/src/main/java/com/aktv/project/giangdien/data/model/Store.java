package com.aktv.project.giangdien.data.model;

import java.io.Serializable;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.*;

import javax.persistence.Entity;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Store extends UIDBaseEntity implements Serializable {

    private Integer amount;
    private Integer price;
    private String unit;
}