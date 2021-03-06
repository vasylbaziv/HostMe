package com.softserve.edu.dao.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.LanguageDao;
import com.softserve.edu.entity.Language;

@Repository
public class LanguageDaoImpl extends AbstractGenericDao<Language, Short>
		implements LanguageDao {
	public LanguageDaoImpl() {
		super(Language.class);
	}

	@Override
	public Language findLanguageByName(String name) {
		Query query = getSession().createQuery(
				"from Language l where l.language = :name");
		query.setParameter("name", name);

		return (Language) query.uniqueResult();
	}
}
