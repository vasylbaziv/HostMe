package com.softserve.edu.service;

import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.entity.Hosting;

public interface ImageService {
	public static final String filePath="D:\\HostMeImages\\";
	
	void addImages(MultipartFile[] files, Hosting hosting);
}