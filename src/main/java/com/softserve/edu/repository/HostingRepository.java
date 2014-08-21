package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Hosting;

public interface HostingRepository extends JpaRepository<Hosting, Integer> {

}
