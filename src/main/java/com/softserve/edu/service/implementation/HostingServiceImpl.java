package com.softserve.edu.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.HostingDao;
import com.softserve.edu.dao.UserDao;
import com.softserve.edu.entity.Gender;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.service.HostingService;

@Service
public class HostingServiceImpl implements HostingService {

	@Autowired
	private HostingDao hostingDao;

	@Autowired
	private UserDao userDao;

	@Override
	@Transactional
	public void addHosting(Hosting hosting) {
		hostingDao.create(hosting);
	}

	@Override
	@Transactional
	public List<Hosting> getUserHostings() {
		return hostingDao.getUserHostings();
	}

	@Override
	@Transactional
	public void addHosting(String login, String country, String region,
			String city, String address, String min, String max, String gender,
			String smoking, String family, String children, String pets,
			String notes) {
		Hosting hosting = new Hosting();
		hosting.setOwner(userDao.getUserByLogin(login));
		hosting.setCountry(country);
		hosting.setRegion(region);
		hosting.setCity(city);
		hosting.setAddress(address);
		hosting.setMinNumberOfGuests(parseToInt(min));
		hosting.setMaxNumberOfGuests(parseToInt(max));
		hosting.setGender(parseToGender(gender));
		hosting.setSmoking(parseToBoolean(smoking));
		hosting.setFamily(parseToBoolean(family));
		hosting.setChildren(parseToBoolean(children));
		hosting.setPets(parseToBoolean(pets));
		hosting.setNotes(notes);
		hostingDao.create(hosting);
	}

	private Integer parseToInt(String restr) {
		if (restr.equals("Min")||restr.equals("Max"))
			return 0;
		else
			return Integer.parseInt(restr);
	}

	private Gender parseToGender(String gender) {
		switch (gender) {
		case "Male":
			return Gender.MALE;
		case "Female":
			return Gender.FEMALE;
		case "Both":
			return Gender.UNSPECIFIED;
		default:
			return Gender.UNSPECIFIED;
		}
	}

	private Boolean parseToBoolean(String value) {
		System.out.println(value);
		if (value.equals("on"))
			return new Boolean(true);
		else
			return new Boolean(false);
	}

    @Override
    @Transactional
    public Hosting getHosting(int id) {
        return hostingDao.read(id);
    }

}
