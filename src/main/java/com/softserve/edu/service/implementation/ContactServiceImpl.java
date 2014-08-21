package com.softserve.edu.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.dao.ContactDAO;
import com.softserve.edu.entity.Contact;
import com.softserve.edu.service.ContactService;

@Service
public class ContactServiceImpl implements ContactService {

	@Override
	public void addContact(Contact contact) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Contact> listContact() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeContact(Integer id) {
		// TODO Auto-generated method stub
		
	}
    
//    @Autowired
//    private ContactDAO contactDAO;
//
//    @Transactional
//    public void addContact(Contact contact) {
//        contactDAO.addContact(contact);
//    }
//
//    @Transactional
//    public List<Contact> listContact() {
//        return contactDAO.listContact();
//    }
//
//    @Transactional
//    public void removeContact(Integer id) {
//        contactDAO.removeContact(id);
//    }

}
