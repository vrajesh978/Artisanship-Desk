package com.jinal.learning.service;

import java.sql.SQLException;
import java.util.List;

import com.jinal.learning.model.Client;

public interface ClientService {
	Client getAllClientByEmail(String email) throws SQLException;

	List<Client> getAllClients() throws SQLException;

	Client getAllClientByEmailAndPassword(String email, String password) throws SQLException;

	void Save(Client client) throws SQLException;

	Client findClientById(long id);

	long delete(long id);
}
