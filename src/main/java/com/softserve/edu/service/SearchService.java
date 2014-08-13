package com.softserve.edu.service;

import com.softserve.edu.auxiliarybean.Search;
import com.softserve.edu.entity.Hosting;

import java.util.List;

/**
 * Created by john_darkwood on 28.07.2014.
 */
public interface SearchService {

    public List<Hosting> listAllHosts();

    public List<Hosting> getList(Search... parameters);

}
