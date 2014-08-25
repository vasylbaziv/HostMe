package com.softserve.edu.dao.impl;

import org.springframework.stereotype.Repository;
import com.softserve.edu.dao.SystemPropertiesDao;
import com.softserve.edu.entity.SystemProperties;

@Repository
public class SystemPropertiesDaoImpl extends
		AbstractGenericDao<SystemProperties, Integer> implements
		SystemPropertiesDao {
	public SystemPropertiesDaoImpl() {
		super(SystemProperties.class);
	}
}