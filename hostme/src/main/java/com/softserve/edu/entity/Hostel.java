package com.softserve.edu.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "HOSTEL", uniqueConstraints = { @UniqueConstraint(columnNames = { "address", "hostel_id" }) })
public class Hostel {
	@Id
	@GeneratedValue
	@Column(name = "hostel_id", unique = true, nullable = false)
	private Integer hostelId;
	@Column(name = "address", length = 150, nullable = false, unique = true)
	private String address;
	@Column(name = "min_guests")
	private Integer minNumberOfGuests;
	@Column(name = "max_guests")
	private Integer maxNumberOfGuests;
	@Column(name = "children")
	private Boolean children;
	@Column(name = "pets")
	private Boolean pets;
	@Column(name = "smoking")
	private Boolean smoking;
	@Column(name = "family")
	private Boolean family;
	@Column(name = "gender")
	private Gender gender = Gender.UNSPECIFIED;
	@Column(name = "notes", length = 1000)
	private String notes;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User owner;
	@OneToMany(mappedBy = "hostel", fetch = FetchType.LAZY, orphanRemoval = true)
	@Cascade({ CascadeType.DELETE, CascadeType.PERSIST, CascadeType.SAVE_UPDATE })
	private Set<Image> images = new HashSet<Image>();
	@OneToMany(mappedBy = "hostel", fetch = FetchType.LAZY, orphanRemoval = true)
	@Cascade({ CascadeType.DELETE, CascadeType.PERSIST, CascadeType.SAVE_UPDATE })
	private Set<Feedback> feedbacks = new HashSet<Feedback>();
	@OneToMany(mappedBy = "hostel", fetch = FetchType.LAZY)
	private Set<Request> requests = new HashSet<Request>();

	public Hostel() {
	}

	public Hostel(String address, Integer minNumberOfGuests, Integer maxNumberOfGuests, Boolean children, Boolean pets,
			Boolean smoking, Boolean family, Gender gender, String notes) {
		super();
		this.address = address;
		this.minNumberOfGuests = minNumberOfGuests;
		this.maxNumberOfGuests = maxNumberOfGuests;
		this.children = children;
		this.pets = pets;
		this.smoking = smoking;
		this.family = family;
		this.gender = gender;
		this.notes = notes;
	}

	public Integer getHostelId() {
		return hostelId;
	}

	public void setHostelId(Integer hostelId) {
		this.hostelId = hostelId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getMinNumberOfGuests() {
		return minNumberOfGuests;
	}

	public void setMinNumberOfGuests(Integer minNumberOfGuests) {
		this.minNumberOfGuests = minNumberOfGuests;
	}

	public Integer getMaxNumberOfGuests() {
		return maxNumberOfGuests;
	}

	public void setMaxNumberOfGuests(Integer maxNumberOfGuests) {
		this.maxNumberOfGuests = maxNumberOfGuests;
	}

	public Boolean getChildren() {
		return children;
	}

	public void setChildren(Boolean children) {
		this.children = children;
	}

	public Boolean getPets() {
		return pets;
	}

	public void setPets(Boolean pets) {
		this.pets = pets;
	}

	public Boolean getSmoking() {
		return smoking;
	}

	public void setSmoking(Boolean smoking) {
		this.smoking = smoking;
	}

	public Boolean getFamily() {
		return family;
	}

	public void setFamily(Boolean family) {
		this.family = family;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		if (this.owner != owner)
			this.owner = owner;
	}

	public Set<Image> getImages() {
		return images;
	}

	public Set<Feedback> getFeedbacks() {
		return feedbacks;
	}

	public Set<Request> getRequests() {
		return requests;
	}

	public void addImage(Image image) {
		if (image != null && !images.contains(image)) {
			images.add(image);
			image.setHostel(this);
		}
	}

	public void addRequest(Request request) {
		if (request != null && !requests.contains(request)) {
			requests.add(request);
			request.setHostel(this);
		}
	}

	public void addFeedback(Feedback feedback) {
		if (feedback != null && !feedbacks.contains(feedback)) {
			feedbacks.add(feedback);
			feedback.setHostel(this);
		}
	}

	@Override
	public String toString() {
		return "Hostel [hostelId=" + hostelId + ", address=" + address + ", minNumberOfGuests=" + minNumberOfGuests
				+ ", maxNumberOfGuests=" + maxNumberOfGuests + ", children=" + children + ", pets=" + pets
				+ ", smoking=" + smoking + ", family=" + family + ", gender=" + gender + ", notes=" + notes + "]";
	}

}