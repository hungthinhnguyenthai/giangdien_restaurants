package com.aktv.project.giangdien.data.model;

import java.io.Serializable;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Internationalization extends UIDBaseEntity implements Serializable {
    private String keyCode;
    private String text;
    private String lang;
    private String groupType;
}