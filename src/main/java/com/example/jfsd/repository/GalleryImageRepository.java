package com.example.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.jfsd.model.GalleryImage;

@Repository
public interface GalleryImageRepository extends JpaRepository<GalleryImage, Long> {
}
