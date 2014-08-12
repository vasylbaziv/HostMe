package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.Hosting;

public interface HostingService {
	public void addHosting(Hosting hosting);
	
	public List<Hosting> getUserHostings();
}
