package com.example.baekgu_project.util;

import java.util.UUID;

public class Commons {
    
    public String getUniqueSequence() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
