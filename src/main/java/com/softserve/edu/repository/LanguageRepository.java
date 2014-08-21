package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Language;

public interface LanguageRepository extends JpaRepository<Language, Integer> {

}
