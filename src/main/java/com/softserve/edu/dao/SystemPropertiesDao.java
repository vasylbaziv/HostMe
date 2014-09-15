package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.SystemProperties;

public interface SystemPropertiesDao extends
		GenericDao<SystemProperties, Integer> {

	List<SystemProperties> getPropeties(String prop);

    	public String getMailProp(String value);
}
