package com.haziel.minhaloja.services;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class HelloService {

    public ResponseEntity<String> hello(){
        return ResponseEntity.ok("Hello world funcionando!");
    }
}
