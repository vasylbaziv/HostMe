package com.softserve.edu.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.FeedbackDao;
import com.softserve.edu.entity.Feedback;
import com.softserve.edu.service.FeedbackService;

@Service
public class FeedbackServiceImpl implements FeedbackService {
    @Autowired
    private FeedbackDao feedbackDao;
    
    @Override
    @Transactional
    public void createFeedback(Feedback feedback) {
        feedbackDao.create(feedback);
    }
    
}
