package com.softserve.edu.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Image;

public interface ImageService {
	public static final String filePath="D:\\HostMeImages\\";
	
	void addImages(MultipartFile[] files, Hosting hosting);
	
	List<String> getImagesForHosting(Hosting hosting);
}