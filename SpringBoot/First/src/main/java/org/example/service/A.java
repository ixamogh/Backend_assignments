package org.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class A {
    private B B;

//    public A(B b){
//        this.B=b;
//    }
    @Autowired
    public void setB(B b) {
        B = b;
    }
}
