package com.example.jfsd.service;


import java.util.Optional;

import com.example.jfsd.model.User;

public interface UserService {
    User registerUser(User user);
    public User finduserbyusername( String username) ;
    }
