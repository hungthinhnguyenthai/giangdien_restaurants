package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.joda.time.DateTime;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Event extends UIDBaseEntity implements Serializable {
    private DateTime startDate;
    private DateTime endDate;
    private String description;

}
