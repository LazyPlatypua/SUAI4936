package com.javamaster.controller;

import com.javamaster.entity.Estate;
import com.javamaster.service.ProducerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class HomeController {

    @Autowired
    private ProducerService producerService;

    @PostMapping("estate")
    public String generateEstate(@RequestBody Estate estate) {
        producerService.produce(estate);
        return "Estate created!";
    }
}
