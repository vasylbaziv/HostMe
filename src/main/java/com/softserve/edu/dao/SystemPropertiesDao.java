package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.SystemProperties;

public interface SystemPropertiesDao extends
		GenericDao<SystemProperties, Integer> {

	String getPropeties(String prop);

}
