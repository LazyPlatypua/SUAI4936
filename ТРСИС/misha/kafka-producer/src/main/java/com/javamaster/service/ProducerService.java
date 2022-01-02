package com.javamaster.service;

import com.javamaster.entity.Estate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class ProducerService {

    @Autowired
    private KafkaTemplate<String, Estate> kafkaTemplate;

    public void produce(Estate estate) {
        kafkaTemplate.send("estates", estate);
    }
}
