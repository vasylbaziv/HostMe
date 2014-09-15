package com.softserve.edu.service;

public interface SystemPropertiesService {
	public static final String IMAGE_PATH_PROP = "IMAGE_PATH";
	public static final String IMAGE_URL_PROP = "IMAGE_URL";
	public static final String PASSWORD = "password";
    	public static final String USERNAME = "username";
	String getImagePath();
	String getImageUrl();
	public String getMailPass();
    	public String getMailUsername();
}
