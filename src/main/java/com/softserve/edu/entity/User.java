package com.softserve.edu.entity;

import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * This claaa represents data for User object. It uses Hibernate to map java
 * class User to database table USER.
 * 
 * @author Lv-117
 */
@Entity
@NamedQuery(name="User.getByLogin",query="SELECT u FROM User u WHERE u.login=:login")
@Table(name = "USER", schema = "hostme", uniqueConstraints = { @UniqueConstraint(columnNames = {
		"user_id", "login", "email" }) })
public class User {

	@Id
	@GeneratedValue
	@Column(name = "user_id", unique = true, nullable = false)
	private Integer userId;
	@Column(name = "login", length = 50, updatable = false, unique = true)
	private String login;
	@Column(name = "password", length = 70)
	private String password;
	@Column(name = "firstName", length = 70)
	private String firstName;
	@Column(name = "lastName", length = 70)
	private String lastName;
	@Enumerated(EnumType.STRING)
	@Column(name = "gender", nullable = false)
	private Gender gender;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "birth_date")
	private Calendar birthday;
	@Column(name = "email", unique = true, length = 70)
	private String email;
	@Column(name = "about", length = 1000)
	private String about;
	@Column(name = "country", length = 50)
	private String country;
	@Column(name = "region", length = 50)
	private String region;
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name = "role_id")
	private Role role;

	/**
	 * Contains languages owned by this user
	 */
	@ManyToMany(fetch = FetchType.LAZY)
	@JsonIgnore
	@JoinTable(name = "user_languages", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "language_id"))
	private Set<Language> languages = new HashSet<Language>();
	/**
	 * Contains images uploaded by this user
	 */
	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY, orphanRemoval = true)
	@JsonIgnore
	private Set<Image> images = new HashSet<Image>();
	/**
	 * Contains hosting apartments owned by this user
	 */
	@OneToMany(mappedBy = "owner", orphanRemoval = true, fetch = FetchType.LAZY)
	@JsonIgnore
	private Set<Hosting> hostings = new HashSet<Hosting>();
	/**
	 * Contains requests submitted by this user
	 */
	@JsonIgnore
	@OneToMany(mappedBy = "author", orphanRemoval = true, fetch = FetchType.LAZY)
	private Set<Request> requests = new HashSet<Request>();
	/**
	 * Contains feedbackas provided by this user to hosters
	 */
	@OneToMany(mappedBy = "author", orphanRemoval = true, fetch = FetchType.LAZY)
	@JsonIgnore
	private Set<Feedback> feedbacks = new HashSet<Feedback>();

	public User() {
	}

	public User(String firstName, String lastName, Gender gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Calendar getBirthday() {
		return birthday;
	}

	public void setBirthday(Calendar birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public Set<Language> getLanguages() {
		return languages;
	}

	public Set<Hosting> getHostings() {
		return hostings;
	}

	public Set<Image> getImages() {
		return images;
	}

	public Set<Request> getRequests() {
		return requests;
	}

	public Set<Feedback> getFeedbacks() {
		return feedbacks;
	}

	public void addLanguage(Language language) {
		if (language != null && !languages.contains(language)) {
			languages.add(language);
			language.addUser(this);
		}
	}

	public void addImage(Image image) {
		if (image != null && !images.contains(image)) {
			images.add(image);
			image.setUser(this);
		}
	}

	public void addHosting(Hosting hosting) {
		if (hosting != null && !hostings.contains(hosting)) {
			hostings.add(hosting);
			hosting.setOwner(this);
		}
	}

	public void addRequest(Request request) {
		if (request != null && !requests.contains(request)) {
			requests.add(request);
			request.setAuthor(this);
		}
	}

	public void addFeedback(Feedback feedback) {
		if (feedback != null && !feedbacks.contains(feedback)) {
			feedbacks.add(feedback);
			feedback.setAuthor(this);
		}
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}



	@Override
	public String toString() {
		return "User [userId=" + userId + ", login=" + login + ", password="
				+ password + ", firstName=" + firstName + ", lastName="
				+ lastName + ", gender=" + gender + ", birthday=" + birthday
				+ ", email=" + email + ", about=" + about + ", country="
				+ country + ", region=" + region + "]";
	}

}