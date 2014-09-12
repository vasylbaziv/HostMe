package com.softserve.edu.service;

public interface SystemPropertiesService {
	public static final String IMAGE_PATH_PROP = "IMAGE_PATH";
	public static final String IMAGE_URL_PROP = "IMAGE_URL";
	String getImagePath();
	String getImageUrl();
}
