package com.softserve.edu.dao.impl;

import com.softserve.edu.dao.LanguageDao;
import com.softserve.edu.entity.Language;

public class LanguageDaoImpl extends AbstractGenericDao<Language, Short> implements LanguageDao {
	public LanguageDaoImpl() {
		super(Language.class);
	}
}
