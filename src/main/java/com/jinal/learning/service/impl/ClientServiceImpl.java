package com.jinal.learning.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.jinal.learning.dao.ClientDao;
import com.jinal.learning.model.Client;
import com.jinal.learning.service.ClientService;

@Service("clientService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ClientServiceImpl implements ClientService {
	@Autowired
	private ClientDao clientDao;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public Client getAllClientByEmail(String email) throws SQLException {
		Client client = new Client();
		client = clientDao.getAllClientByEmail(email);
		return client;

	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void Save(Client client) throws SQLException {
		clientDao.save(client);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public List<Client> getAllClients() throws SQLException {
		List<Client> clist = new ArrayList<Client>();
		clist = clientDao.getAllClients();
		return clist;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public Client getAllClientByEmailAndPassword(String email, String password) throws SQLException {
		Client client = new Client();
		client = clientDao.getAllClientByEmailAndPassword(email, password);
		return client;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public Client findClientById(long id) {
		Client client = clientDao.findClientById(id);
		return client;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public long delete(long id) {
		long result = clientDao.delete(id);
		return result;
	}
}
