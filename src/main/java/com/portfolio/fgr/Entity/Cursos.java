/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.portfolio.fgr.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cursos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nombreC;
    private String descripcionC;

    public Cursos() {
    }

    public Cursos(String nombreC, String descripcionC) {
        this.nombreC = nombreC;
        this.descripcionC = descripcionC;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreC() {
        return nombreC;
    }

    public void setNombreC(String nombreC) {
        this.nombreC = nombreC;
    }

    public String getDescripcionC() {
        return descripcionC;
    }

    public void setDescripcionC(String descripcionC) {
        this.descripcionC = descripcionC;
    }
    
    
    
}
