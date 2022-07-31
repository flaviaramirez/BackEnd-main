/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.portfolio.fgr.Repository;

import com.portfolio.fgr.Entity.Cursos;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RCursos extends JpaRepository<Cursos, Integer>{
    public Optional <Cursos> findByNombreC(String nombreC);
    public boolean existsByNombreC(String nombreC);
    
}
