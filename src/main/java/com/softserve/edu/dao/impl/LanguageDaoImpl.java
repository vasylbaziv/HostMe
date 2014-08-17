package com.softserve.edu.dao.impl;

import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.LanguageDao;
import com.softserve.edu.entity.Language;
@Repository
public class LanguageDaoImpl extends AbstractGenericDao<Language, Short> implements LanguageDao {
	public LanguageDaoImpl() {
		super(Language.class);
	}
}
