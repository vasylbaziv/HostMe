package com.softserve.edu.service.implementation;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.HostingDao;
import com.softserve.edu.dao.RequestDao;
import com.softserve.edu.dao.UserDao;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Request;
import com.softserve.edu.service.HostingService;

@Service
public class HostingServiceImpl implements HostingService {

	@Autowired
	private HostingDao hostingDao;

	@Autowired
	private UserDao userDao;
	
	@Autowired
        private RequestDao requestDao;

	@Override
	@Transactional
	public void addHosting(Hosting hosting) {
		String login = SecurityContextHolder.getContext().getAuthentication()
				.getName();
		hosting.setOwner(userDao.getUserByLogin(login));
		hostingDao.create(hosting);
	}

	@Override
	@Transactional
	public Hosting getHosting(int id) {
		return hostingDao.read(id);
	}
	
	@Override
        @Transactional
	public ArrayList<String> getNonAvailableDates(int hostingId) {
	    List<Request> requests = requestDao.getAllRequestsByHostingId(hostingId);
	    
	    ArrayList<String> nonAvailableDates = new ArrayList<String>();
	    
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-M-d");
	    
	    for (Request item : requests) {
	        nonAvailableDates.add(dateFormat.format(item.getBeginDate().getTime()));
	        nonAvailableDates.add(dateFormat.format(item.getEndDate().getTime()));
            }
	    
	    return nonAvailableDates;
	}

}
