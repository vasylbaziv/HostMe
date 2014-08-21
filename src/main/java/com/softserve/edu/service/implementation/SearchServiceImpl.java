package com.softserve.edu.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.HostingDao;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.repository.HostingRepository;
import com.softserve.edu.repository.RequestRepository;
import com.softserve.edu.service.SearchService;
import com.softserve.edu.utils.Search;

@Service
public class SearchServiceImpl implements SearchService {
	@Autowired
	private HostingRepository hostingRepository;

//
//	@Autowired
//	private HostingDao hostingDao;
//
//	@Override
//	@Transactional
//	public List<Hosting> listAllHosts() {
//		return hostingDao.getAll();
//	}
//
//	@Override
//	@Transactional
//	public List<Hosting> getList(Search... parameters) {
//		return hostingDao.getList(parameters);
//	}

	@Override
	public List<Hosting> getAll() {
		return hostingRepository.findAll();
	}

	@Override
	public List<Hosting> getList(Search... parameters) {
		// TODO Auto-generated method stub
		return null;
	}

}
