package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Hosting;

public interface HostingService {
	public void addHosting(Hosting hosting);


	public Hosting getHosting(int id);

	public List<Hosting> getUserHostings();

}
