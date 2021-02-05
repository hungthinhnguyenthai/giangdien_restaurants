package com.aktv.project.giangdien.data.model;

import java.io.Serializable;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.*;
import org.joda.time.DateTime;

import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Import extends UIDBaseEntity implements Serializable {

    private DateTime date;
}