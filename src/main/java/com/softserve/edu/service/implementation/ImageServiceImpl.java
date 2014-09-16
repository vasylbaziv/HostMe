package com.softserve.edu.service.implementation;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.dao.ImageDao;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Image;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.ImageService;
import com.softserve.edu.service.SystemPropertiesService;

@Service
public class ImageServiceImpl implements ImageService {

	@Autowired
	ImageDao imageDao;

	@Autowired
	SystemPropertiesService systemPropertiesService;

	@Override
	@Transactional
	public void addImages(MultipartFile[] files, Hosting hosting) {
		if(filesNotEmpty(files))
			for (int i = 0; i < files.length; i++) {
				saveImage(files[i], buildPath(hosting));
				addImage(files[i], hosting);
			}
	}

	private boolean filesNotEmpty(MultipartFile[] files) {
		if(files[0].getOriginalFilename()=="")
			return false;
		else return true;
	}

	@Override
	@Transactional
	public void addImages(MultipartFile file, User user) {
		saveImage(file, buildPath(user));
		addImage(file, user);
	}

	private void addImage(MultipartFile multipartFile, User user) {
		Image image = new Image();
		image.setLink(PROFILE_PIC_PATH + "/" + user.getUserId() + "/"
				+ multipartFile.getOriginalFilename());
		image.setUser(user);
		
		for (Image im : user.getImages()) {
			imageDao.delete(im);	
		}
			
		imageDao.create(image);
	}

	private String buildPath(User user) {
		return systemPropertiesService.getImagePath() + File.separator
				+ PROFILE_PIC_PATH + File.separator + user.getUserId();
	}

	private void saveImage(MultipartFile multipartFile, String path) {
		try {
			byte[] bytes = multipartFile.getBytes();

			// Creating the directory to store file
			File dir = new File(path);
			if (!dir.exists())
				dir.mkdirs();

			// Write file to directory
			File image = new File(dir + File.separator
					+ multipartFile.getOriginalFilename());
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(image));
			stream.write(bytes);
			stream.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Transactional
	private void addImage(MultipartFile multipartFile, Hosting hosting) {
		Image image = new Image();
		image.setLink(hosting.getHostingId() + "/"
				+ multipartFile.getOriginalFilename());
		image.setHosting(hosting);
		imageDao.create(image);

	}

	private String buildPath(Hosting hosting) {
		return systemPropertiesService.getImagePath() + File.separator
				+ hosting.getHostingId();
	}

	private String buildUrl(Image image) {
		return systemPropertiesService.getImageUrl() + "/" + image.getLink();
	}

	@Override
	public List<String> getImagesForHosting(Hosting hosting) {
		List<String> images = new ArrayList<String>();
		Iterator<Image> hostingImagesItr = hosting.getImages().iterator();
		while (hostingImagesItr.hasNext()) {
			images.add(buildUrl(hostingImagesItr.next()));
		}
		return images;
	}

	@Override
	public String getUserAvatar(User user) {
		Iterator<Image> imageItr = user.getImages().iterator();
		if (imageItr.hasNext())
			return systemPropertiesService.getImageUrl() + "/"
					+ imageItr.next().getLink();
		else
			return systemPropertiesService.getImageUrl() + "/"
					+ PROFILE_PIC_PATH + "/" + NO_AVATAR;
	}
}
