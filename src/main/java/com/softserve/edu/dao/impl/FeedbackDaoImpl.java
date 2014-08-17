package com.softserve.edu.dao.impl;

import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.FeedbackDao;
import com.softserve.edu.entity.Feedback;
@Repository
public class FeedbackDaoImpl extends AbstractGenericDao<Feedback, Long> implements FeedbackDao {

	public FeedbackDaoImpl() {
		super(Feedback.class);
	}	
}
