package com.softserve.edu.dao;

import com.softserve.edu.auxiliarybean.Search;
import com.softserve.edu.entity.Hosting;

import java.util.List;

public interface HostingDao extends GenericDao<Hosting, Integer> {

    public List<Hosting> getUserHostings();

    public List<Hosting> listAllHostels();

    public List<Hosting> getList(Search... parameters);
}
