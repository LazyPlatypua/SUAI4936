package com.javamaster.service;

import com.javamaster.entity.Estate;
import com.javamaster.repository.EstateRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EstateService {

    @Autowired
    private EstateRepo estateRepo;

    public ResponseEntity<?> addEstate(Estate estate) {
        estateRepo.save(estate);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    public ResponseEntity<Estate> getEstate(Long id) {
        Optional<Estate> row = estateRepo.findById(id);
        if(row.isPresent())
            return new ResponseEntity<>(row.get(), HttpStatus.OK);
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    public ResponseEntity<List<Estate>> getEstates() {
        List<Estate> list = estateRepo.findAll();
        if (list.isEmpty())
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    public ResponseEntity<?> deleteEstate(Long id) {
        Optional<Estate> row = estateRepo.findById(id);
        if (!row.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        estateRepo.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
