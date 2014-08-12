package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Hosting;

public interface HostingDao extends GenericDao<Hosting, Integer> {
    
    public List<Hosting> getUserHostings();
    
}
