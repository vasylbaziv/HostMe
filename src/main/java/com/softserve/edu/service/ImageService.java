package com.softserve.edu.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.entity.Hosting;

public interface ImageService {
	
	void addImages(MultipartFile[] files, Hosting hosting);
	
	List<String> getImagesForHosting(Hosting hosting);
}