/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.portfolio.fgr.Service;

import com.portfolio.fgr.Entity.Cursos;
import com.portfolio.fgr.Repository.RCursos;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class SCursos {
    @Autowired
    RCursos rCursos;
    
    public List<Cursos> list(){
        return rCursos.findAll();
    }
    
    public Optional<Cursos> getOne(int id){
        return rCursos.findById(id);
    }
    public Optional<Cursos>getByNombreC(String nombreC){
        return rCursos.findByNombreC(nombreC);
    }
    
    public void save(Cursos cursos){
        rCursos.save(cursos);
    }
    
    public void delete (int id){
        rCursos.deleteById(id);
    }
    
    public boolean existsById(int id){
        return rCursos.existsById(id);
    }
    
    public boolean existsByNombreC(String nombreC){
        return rCursos.existsByNombreC(nombreC);
    }
}
