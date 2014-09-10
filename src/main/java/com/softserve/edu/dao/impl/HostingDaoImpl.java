package com.softserve.edu.dao.impl;

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
    
    private static final Integer ROWS = 3;    

    /*
    Get list of the hostels that are required criterias
     */
    public List<Hosting> getList(List<Search> listSearch, Integer page) {
        Session session = sessionFactory.getCurrentSession();
        Criteria cr = session.createCriteria(Hosting.class, "hosting").setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        cr.setFetchMode("hosting.user", FetchMode.JOIN);
        cr.setFetchMode("hosting.request", FetchMode.JOIN);

        cr.setMaxResults(ROWS);
        cr.setFirstResult(page * ROWS);

        cr = getCriteriasResult(cr, listSearch);
        return cr.list();
    }

    /*
    Get count of pages
     */
    public Integer getCountOfPages(List<Search> listSearch) {
        Session session = sessionFactory.getCurrentSession();
        Criteria cr = session.createCriteria(Hosting.class, "hosting").setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        cr = getCriteriasResult(cr, listSearch);
        if (cr.list().size() % ROWS == 0)
            return (cr.list().size() / ROWS);
        else
            return (cr.list().size() / ROWS + 1);
    }

    public Gender parsingGender(String gender) {
        for (Gender parameterGender : Gender.values()) {
            if (gender.equalsIgnoreCase(parameterGender.toString())) {
                return parameterGender;
            }
        }
        return Gender.UNSPECIFIED;
    }


    /*
    Return the criteria result for hostels
     */
    public Criteria getCriteriasResult(Criteria cr, List<Search> listSearch) {

        String min = new String();
        String valueMin = new String();
        String max = new String();
        String valueMax = new String();

        //add criterias
        for (Search parameter : listSearch) {
            if ((parameter.getName().equals("country") || parameter.getName().equals("region")) && !parameter.getValue().isEmpty() && !parameter.getValue().equals(" ")) {
                cr.add(Restrictions.eq(parameter.getName(), parameter.getValue()));
            }
            if ((parameter.getName().equals("pets") || parameter.getName().equals("children") || parameter.getName().equals("family")
                    || parameter.getName().equals("smoking")) && !parameter.getValue().isEmpty() && !parameter.getValue().equals("false")) {
                cr.add(Restrictions.eq(parameter.getName(), Boolean.parseBoolean(parameter.getValue())));
            }
            if (parameter.getName().equals("minNumberOfGuests") || parameter.getName().equals("maxNumberOfGuests")) {
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
//            if (parameter.getName().equals("begin_date") && !parameter.getValue().isEmpty()) {
//                Calendar cal = Calendar.getInstance();
//                cal.setTimeInMillis(Integer.parseInt(parameter.getValue()));
//                cr.add(Restrictions.gt(parameter.getName(), cal));
//            }
//            if (parameter.getName().equals("end_date") && !parameter.getValue().isEmpty()) {
//                Calendar cal = Calendar.getInstance();
//                cal.setTimeInMillis(Integer.parseInt(parameter.getValue()));
//                cr.add(Restrictions.lt(parameter.getName(), cal));
//            }
        }
        return cr;
    }
}

