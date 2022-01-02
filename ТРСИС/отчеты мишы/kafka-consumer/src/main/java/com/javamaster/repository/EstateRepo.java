package com.javamaster.repository;

import com.javamaster.entity.Estate;
import org.springframework.data.jpa.repository.JpaRepository;


    public interface EstateRepo extends JpaRepository<Estate, Long> {
    Estate findEstateByName(String name);
}

