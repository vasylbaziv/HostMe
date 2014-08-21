package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Image;

public interface ImageRepository extends JpaRepository<Image, Integer>{

}
