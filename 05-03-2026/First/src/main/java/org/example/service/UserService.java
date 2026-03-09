package org.example.service;

import org.example.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void processUser() {
        System.out.println("Processing user");
        userRepository.saveUser();
    }

}