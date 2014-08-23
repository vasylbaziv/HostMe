package com.softserve.edu.service.implementation;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService {

	@Override
	public void addImages(MultipartFile[] files) {
		for (int i = 0; i < files.length; i++) {
			addImage(files[i]);
			saveImage(files[i]);
		}
	}

	private void saveImage(MultipartFile multipartFile) {
		try {
			byte[] bytes = multipartFile.getBytes();

			// Creating the directory to store file
			File dir = new File(filePath);
			if (!dir.exists())
				dir.mkdirs();

			// Write file to directory
			File serverFile = new File(filePath + multipartFile.getOriginalFilename());
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(serverFile));
			stream.write(bytes);
			stream.close();

		} catch (Exception e) {
		}

	}

	private void addImage(MultipartFile multipartFile) {
		// add to DB

	}

}
