package com.softserve.edu.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.softserve.edu.entity.Gender;
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
            if ((parameter.getName().equals("country") || parameter.getName().equals("region")) && !parameter.getValue().isEmpty() && !parameter.getValue().equals(" ")) {
                cr.add(Restrictions.eq(parameter.getName(), parameter.getValue()));
            }
            if ((parameter.getName().equals("pets") || parameter.getName().equals("children") || parameter.getName().equals("family")
                    || parameter.getName().equals("smoking")) && !parameter.getValue().isEmpty() && !parameter.getValue().equals("false")) {
                cr.add(Restrictions.eq(parameter.getName(), Boolean.parseBoolean(parameter.getValue())));
            }
            if (parameter.getName().equals("minNumberOfGuests") ||parameter.getName().equals("maxNumberOfGuests")) {
                if (parameter.getName().equals("minNumberOfGuests") && !parameter.getValue().isEmpty()) {
                    min = parameter.getName();
                    valueMin = parameter.getValue();
                }
                if (parameter.getName().equals("maxNumberOfGuests") && !parameter.getValue().isEmpty()) {
                    max = parameter.getName();
                    valueMax = parameter.getValue();
                }
                if (!valueMax.isEmpty() && !valueMin.isEmpty()) {
                    cr.add(Restrictions.and(Restrictions.ge(max, Integer.parseInt(valueMax)),
                            Restrictions.le(min, Integer.parseInt(valueMin))));
                }
            }
            if (parameter.getName().equals("gender")) {
                cr.add(Restrictions.eq(parameter.getName(), parsingGender(parameter.getValue())));
            }
        }
        
        return cr.list();
    }
    
    public Gender parsingGender(String gender) {
        for (Gender parameterGender : Gender.values()) {
            if (gender.equalsIgnoreCase(parameterGender.toString())) {
                return parameterGender;
            }
        }
        return Gender.UNSPECIFIED;
    }
}

