package com.jinal.learning.dao;

import java.sql.SQLException;
import java.util.List;

import com.jinal.learning.model.Client;

public interface ClientDao {

	Client getAllClientByEmail(String email) throws SQLException;

	Client getClientByUsername(String username) throws SQLException;

	Client getAllClientByEmailAndPassword(String email, String password) throws SQLException;

	List<Client> getAllClients() throws SQLException;

	void save(Client client) throws SQLException;

	Client findClientById(long id);

	long delete(long id);

}
