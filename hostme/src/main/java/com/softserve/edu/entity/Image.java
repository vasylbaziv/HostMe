package com.softserve.edu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "IMAGE", uniqueConstraints = { @UniqueConstraint(columnNames = { "image_id", "link" }) })
public class Image {
	@Id
	@GeneratedValue
	@Column(name = "image_id", unique = true, nullable = false)
	private Long imageId;
	@Column(name = "link", nullable = false, unique = true)
	private String link;
	@ManyToOne
	@JoinColumn(name = "user_fk")
	private User user;
	@ManyToOne
	@JoinColumn(name = "hosting_fk")
	private Hosting hosting;
	@ManyToOne
	@JoinColumn(name = "feedback_fk")
	private Feedback feedback;

	public Image() {
	}

	public Image(String link) {
		super();
		this.link = link;
	}

	public Long getImageId() {
		return imageId;
	}

	public void setImageId(Long imageId) {
		this.imageId = imageId;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {		
		this.user = user;
	}

	public Hosting getHosting() {
		return hosting;
	}

	public void setHosting(Hosting hosting) {
		this.hosting = hosting;
	}

	public Feedback getFeedback() {
		return feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	@Override
	public String toString() {
		return "Image [imageId=" + imageId + ", link=" + link + "]";
	}

}
