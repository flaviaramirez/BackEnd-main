/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.portfolio.fgr.Dto;

import javax.validation.constraints.NotBlank;

public class dtoCursos {
    @NotBlank
    private String nombreC;
    private String descripcionC;

    public dtoCursos() {
    }

    public dtoCursos(String nombreC, String descripcionC) {
        this.nombreC = nombreC;
        this.descripcionC = descripcionC;
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
