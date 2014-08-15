package com.softserve.edu.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.softserve.edu.dao.HostingDao;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.utils.Search;

@Repository
public class HostingDaoImpl extends AbstractGenericDao<Hosting, Integer> implements HostingDao {
    public HostingDaoImpl() {
        super(Hosting.class);
    }

    @Autowired
    private SessionFactory sessionFactory;

    public List<Hosting> getUserHostings() {
        Criteria criteria = getSessionFactory().getCurrentSession()
                .createCriteria(Hosting.class);

        //return all hostings from User (userId == 3 to be changed)
        List<Hosting> userHostings = (List<Hosting>) criteria.createAlias("owner", "ow")
                .add(Restrictions.eq("ow.userId",3)).list();
        return userHostings;
    }

    public List<Hosting> listAllHostels() {
        Session session = sessionFactory.getCurrentSession();
        Criteria cr = session.createCriteria(Hosting.class, "hostel");

        //Join
        cr.setFetchMode("hosting.user", FetchMode.JOIN);
        return cr.list();
    }


    public List<Hosting> getList(Search... parameters) {
        List<Hosting> hostings = new ArrayList<>();
        Session session = sessionFactory.getCurrentSession();
        Criteria cr = session.createCriteria(Hosting.class, "hosting");

        //Join
        cr.setFetchMode("hosting.user", FetchMode.JOIN);
        String min = new String();
        String valueMin = new String();
        String max = new String();
        String valueMax = new String();

        //add criterias
        for (Search parameter : parameters) {
            if (((parameter.getName() == "country") || (parameter.getName() == "region")) && (parameter.getValue() != "")) {
                cr.add(Restrictions.eq(parameter.getName(), parameter.getValue()));
            }
            if (((parameter.getName() == "pets") || (parameter.getName() == "children") || (parameter.getName() == "family")
                    || (parameter.getName() == "smoking")) && (parameter.getValue() != "")) {
                cr.add(Restrictions.eq(parameter.getName(), Boolean.parseBoolean(parameter.getValue())));
            }
            if ((parameter.getName() == "minNumberOfGuests") && (parameter.getValue() != "")) {
                min = parameter.getName();
                valueMin = parameter.getValue();
            }
            if ((parameter.getName() == "maxNumberOfGuests") && (parameter.getValue() != "")) {
                max = parameter.getName();
                valueMax = parameter.getValue();
            }
            if ((valueMax != null) && (valueMin != null)) {
                try {
                    cr.add(Restrictions.and(Restrictions.ge(min, Integer.parseInt(valueMin)),
                            Restrictions.le(max, Integer.parseInt(valueMax))));
                } catch (NumberFormatException e) {};
            }
        }

        for (Search parameter : parameters) {
            if (parameter.getValue() == "") {
                hostings = listAllHostels();
            }
        }

        if (hostings.isEmpty()) {
            hostings = cr.list();
        }

        return hostings;
    }
}

