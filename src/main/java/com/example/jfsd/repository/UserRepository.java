package com.example.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.jfsd.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
}
