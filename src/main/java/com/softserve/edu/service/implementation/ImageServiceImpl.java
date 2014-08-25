package com.softserve.edu.service.implementation;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.dao.ImageDao;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Image;
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
		String path = buildPath(hosting);
		for (int i = 0; i < files.length; i++) {
			saveImage(files[i], path);
			addImage(files[i], path, hosting);
		}
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
	private void addImage(MultipartFile multipartFile, String path,
			Hosting hosting) {
		Image image = new Image();
		image.setLink(path + File.separator
				+ multipartFile.getOriginalFilename());
		image.setHosting(hosting);
		imageDao.create(image);

	}

	private String buildPath(Hosting hosting) {
		return File.separator + systemPropertiesService.getImagePath()
				+ File.separator + hosting.getHostingId();
	}

}
