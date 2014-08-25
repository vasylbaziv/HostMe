package com.softserve.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "SYSTEM_PROPERTIES", uniqueConstraints = { @UniqueConstraint(columnNames = { "properties_id" }) })
public class SystemProperties {
	@Id
	@GeneratedValue
	@Column(name = "properties_id", unique = true, nullable = false)
	private Integer propertiesId;
	@Column(name = "IMAGE_PATH", length = 200, nullable = false)
	private String imagePath;

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "SystemProperties [properties_id=" + propertiesId
				+ ", imagePath=" + imagePath + "]";
	}

}
