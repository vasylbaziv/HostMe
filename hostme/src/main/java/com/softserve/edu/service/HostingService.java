package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Hosting;

public interface HostingService {
	public void addHosting(Hosting hosting);

	public List<Hosting> getUserHostings();

	public void addHosting(String login, String country, String region,
			String city, String address, String min, String max, String gender,
			String smoking, String family, String children, String pets,
			String notes);
}
