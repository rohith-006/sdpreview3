package com.example.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.jfsd.model.Admin;
import com.example.jfsd.model.User;
import com.example.jfsd.repository.UserRepository;

import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User registerUser(User user) {
        return userRepository.save(user);
    }

public User finduserbyusername( String username) {
		
		return userRepository.findByUsername(username);
	}

}
