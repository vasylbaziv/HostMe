package com.softserve.edu.dao;

import java.util.List;

import com.softserve.edu.entity.Hosting;
import com.softserve.edu.utils.Search;

public interface HostingDao extends GenericDao<Hosting, Integer> {

    public List<Hosting> getUserHostings();

    public List<Hosting> listAllHostels();

    public List<Hosting> getList(Search... parameters);
}
