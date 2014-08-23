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

@Service
public class ImageServiceImpl implements ImageService {

	@Autowired
	ImageDao imageDao;

	@Override
	@Transactional
	public void addImages(MultipartFile[] files, Hosting hosting) {
		for (int i = 0; i < files.length; i++) {
			addImage(files[i], hosting);
			saveImage(files[i], hosting);
		}
	}

	private void saveImage(MultipartFile multipartFile, Hosting hosting) {
		try {
			byte[] bytes = multipartFile.getBytes();

			// Creating the directory to store file
			File dir = new File(filePath + hosting.getAddress());
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
		}

	}

	@Transactional
	private void addImage(MultipartFile multipartFile, Hosting hosting) {
		Image image = new Image();
		image.setLink(filePath + multipartFile.getOriginalFilename());
		image.setHosting(hosting);
		imageDao.create(image);

	}

}
