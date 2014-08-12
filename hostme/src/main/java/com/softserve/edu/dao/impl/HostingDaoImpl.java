package com.softserve.edu.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.HostingDao;
import com.softserve.edu.entity.Hosting;

@Repository
public class HostingDaoImpl extends AbstractGenericDao<Hosting, Integer>
        implements HostingDao {
    public HostingDaoImpl() {
        super(Hosting.class);
    }  
    
    @Override
    public List<Hosting> getUserHostings() {
        Criteria criteria = getSessionFactory().getCurrentSession()
                .createCriteria(Hosting.class);

        //return all hostings from User (userId == 3 to be changed)
        List<Hosting> userHostings = (List<Hosting>) criteria.createAlias("owner", "ow")
                .add(Restrictions.eq("ow.userId",3)).list();
        return userHostings;
    }
}
