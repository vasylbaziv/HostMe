package com.softserve.edu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {

}
