/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.portfolio.fgr.Controller;

import com.portfolio.fgr.Dto.dtoCursos;
import com.portfolio.fgr.Entity.Cursos;
import com.portfolio.fgr.Security.Controller.Mensaje;
import com.portfolio.fgr.Service.SCursos;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cursos")
@CrossOrigin(origins = "https://flaviaramirez.firebaseapp.com")
public class CCursos {

    @Autowired
    SCursos sCursos;

    @GetMapping("/lista")
    public ResponseEntity<List<Cursos>> list() {
        List<Cursos> list = sCursos.list();
        return new ResponseEntity(list, HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Cursos> getById(@PathVariable("id") int id) {
        if (!sCursos.existsById(id)) {
        return new ResponseEntity(new Mensaje("The Id does not exists"), HttpStatus.NOT_FOUND);
        }
        Cursos cursos = sCursos.getOne(id).get();
        return new ResponseEntity(cursos, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> delete(@PathVariable("id") int id) {
        if (!sCursos.existsById(id)) {
            return new ResponseEntity(new Mensaje("The Id does not exists"), HttpStatus.NOT_FOUND);
        }
        sCursos.delete(id);
        return new ResponseEntity(new Mensaje("The course was removed"), HttpStatus.OK);
    }

    @PostMapping("/create")
    public ResponseEntity<?> create(@RequestBody dtoCursos dtocursos) {
        if (StringUtils.isBlank(dtocursos.getNombreC())) {
            return new ResponseEntity(new Mensaje("The name is required"), HttpStatus.BAD_REQUEST);
        }
        if (sCursos.existsByNombreC(dtocursos.getNombreC())) {
            return new ResponseEntity(new Mensaje("The name already exists"), HttpStatus.BAD_REQUEST);
        }
        Cursos cursos = new Cursos(dtocursos.getNombreC(), dtocursos.getDescripcionC());
        sCursos.save(cursos);
        return new ResponseEntity(new Mensaje("Course created successfully"), HttpStatus.OK);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<?> update(@PathVariable("id") int id, @RequestBody dtoCursos dtocursos) {
        if (!sCursos.existsById(id)) {
            return new ResponseEntity(new Mensaje("The Id does not exists"), HttpStatus.NOT_FOUND);
        }
        if (sCursos.existsByNombreC(dtocursos.getNombreC()) && sCursos.getByNombreC(dtocursos.getNombreC()).get().getId() != id) {
            return new ResponseEntity(new Mensaje("The name already exists"), HttpStatus.BAD_REQUEST);
        }
        if (StringUtils.isBlank(dtocursos.getNombreC())) {
            return new ResponseEntity(new Mensaje("The field can not be empty"), HttpStatus.BAD_REQUEST);
        }
        Cursos cursos = sCursos.getOne(id).get();
        cursos.setNombreC(dtocursos.getNombreC());
        cursos.setDescripcionC(dtocursos.getDescripcionC());

        sCursos.save(cursos);

        return new ResponseEntity(new Mensaje("Course updated successfully"), HttpStatus.OK);
    }

}
