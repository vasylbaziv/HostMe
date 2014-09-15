package com.softserve.edu.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.User;

public interface ImageService {
	
	String PROFILE_PIC_PATH = "profile_pics";
	
	void addImages(MultipartFile[] files, Hosting hosting);
	
	List<String> getImagesForHosting(Hosting hosting);

	void addImages(MultipartFile file, User user);

	String getUserAvatar(User user);
}