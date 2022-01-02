package com.javamaster.service;


import com.javamaster.entity.Estate;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;


@Service
public class ConsumerService {

    private final EstateService estateService;

    public ConsumerService(EstateService estateService) {
        this.estateService = estateService;
    }

    @KafkaListener(topics = "estates", groupId = "estates_group_id${server.port}")
    public void consumeEstate(Estate estate){
        System.out.println("Consuming the message: \n" + estate.toString());
        estateService.addEstate(estate);
    }

}