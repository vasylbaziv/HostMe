package com.softserve.edu.dao.impl;

import com.softserve.edu.dao.ImageDao;
import com.softserve.edu.entity.Image;

public class ImageDaoImpl extends AbstractGenericDao<Image, Long> implements ImageDao {
	public ImageDaoImpl() {
		super(Image.class);
	}
}
