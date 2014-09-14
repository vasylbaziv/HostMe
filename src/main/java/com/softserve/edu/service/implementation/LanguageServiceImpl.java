package com.softserve.edu.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.LanguageDao;
import com.softserve.edu.entity.Language;
import com.softserve.edu.service.LanguageService;

@Service
public class LanguageServiceImpl implements LanguageService {

	@Autowired
	private LanguageDao languageDaoImpl;

	@Override
	@Transactional
	public List<Language> getAllLanguages() {

		return languageDaoImpl.getAll();
	}

	@Override
	@Transactional
	public Language findLanguageByName(String name) {
		return languageDaoImpl.findLanguageByName(name);
	}

}
