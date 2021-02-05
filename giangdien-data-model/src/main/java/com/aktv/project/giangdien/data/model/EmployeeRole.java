package com.aktv.project.giangdien.data.model;

import java.io.Serializable;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.*;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
@Entity
public class EmployeeRole extends UIDBaseEntity  implements Serializable{
    private String code;
    private String name;

    @ManyToOne
    @JoinColumn(name = "employeeId", referencedColumnName = "id", nullable = false, insertable = true, updatable = true)
    private Employee employee;
}