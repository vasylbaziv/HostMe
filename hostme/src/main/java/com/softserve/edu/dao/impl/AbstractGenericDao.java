package com.softserve.edu.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.softserve.edu.dao.GenericDao;



public abstract class AbstractGenericDao<E, I extends Serializable> implements
		GenericDao<E, I> {

	private Class<E> entityClass;

	protected AbstractGenericDao() {
	}

	protected AbstractGenericDao(Class<E> entityClass) {
		super();
		this.entityClass = entityClass;
	}

	@Autowired
	private SessionFactory sessionFactory;

	
	@Override
	public List<E> getAll() {
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		return null;
	}

	@Override
	public Integer create(E entity) {
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Integer id = (Integer) session.save(entity);
		transaction.commit();
		return id;
	}

	@Override
	public E read(I id) {
		Session session =sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		@SuppressWarnings("unchecked")
		E fetchedEntity = (E) session.get(entityClass, id);
		transaction.commit();
		return fetchedEntity;
	}

	@Override
	public void update(E entity) {
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		session.update(entity);
		transaction.commit();
	}

	@Override
	public void delete(E entity) {
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		session.delete(entity);
		transaction.commit();
	}
}