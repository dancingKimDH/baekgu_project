package com.example.baekgu_project.utils;

import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class Commons {
    
    public String getUniqueSequence() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
