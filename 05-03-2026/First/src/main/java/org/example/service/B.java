package org.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class B {
    private A A;
//    public B(A A){
//        this.A=A;
//    }

    @Autowired
    public void setA(A a) {
        A = a;
    }

}
