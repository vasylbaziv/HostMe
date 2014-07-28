package com.softserve.edu.dao.impl;

import com.softserve.edu.dao.FeedbackDao;
import com.softserve.edu.entity.Feedback;

public class FeedbackDaoImpl extends AbstractGenericDao<Feedback, Long> implements FeedbackDao {

	public FeedbackDaoImpl() {
		super(Feedback.class);
	}	
}
