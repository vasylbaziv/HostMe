package com.softserve.edu.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.SystemPropertiesDao;
import com.softserve.edu.service.SystemPropertiesService;

@Service
public class SystemPropertiesServiceImpl implements SystemPropertiesService {

	@Autowired
	SystemPropertiesDao systemPropertiesDao;

	@Override
	@Transactional
	public String getImagePath() {
		return systemPropertiesDao.getPropeties(IMAGE_PATH_PROP);
	}

	@Override
	@Transactional
	public String getImageUrl() {
		return systemPropertiesDao.getPropeties(IMAGE_URL_PROP);
	}
	
	@Override
    	@Transactional
    	public String getMailPass() {
        	return systemPropertiesDao.getMailProp(PASSWORD);
    	}

    	@Override
    	@Transactional
    	public String getMailUsername() {
        	return systemPropertiesDao.getMailProp(USERNAME);
    	}
}
