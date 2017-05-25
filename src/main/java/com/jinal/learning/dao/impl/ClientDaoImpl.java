package com.jinal.learning.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jinal.learning.dao.ClientDao;
import com.jinal.learning.model.Client;

@Repository("clientDao")
public class ClientDaoImpl implements ClientDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Client getAllClientByEmail(String email) throws SQLException {
		StringBuffer buffer = new StringBuffer("FROM Client where email=:email");
		@SuppressWarnings("unchecked")
		List<Client> clist = sessionFactory.getCurrentSession().createQuery(buffer.toString())
				.setParameter("email", email).list();
		Client client = clist.get(0);
		return client;
	}

	public void save(Client client) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(client);
	}

	public List<Client> getAllClients() throws SQLException {
		StringBuffer buffer = new StringBuffer("FROM Client");
		@SuppressWarnings("unchecked")
		List<Client> clist = sessionFactory.getCurrentSession().createQuery(buffer.toString()).list();
		return clist;
	}

	public Client getAllClientByEmailAndPassword(String email, String password) throws SQLException {
		StringBuffer buffer = new StringBuffer("FROM Client where email=:email");
		@SuppressWarnings("unchecked")
		List<Client> clist = sessionFactory.getCurrentSession().createQuery(buffer.toString())
				.setParameter("email", email).list();
		System.out.println("email = " + email);
		System.out.println("Database email = " + clist.get(0).getEmail());
		System.out.println("Password = " + password);
		System.out.println("Database Password = " + clist.get(0).getPassword());
		if (clist.get(0).getPassword().equals(password)) {
			Client client = clist.get(0);
			return client;
		} else {
			throw new SQLException("password didnt match");
		}
	}

	public Client getClientByUsername(String username) throws SQLException {
		// TODO Auto-generated method stub
		StringBuffer buffer = new StringBuffer("FROM Client where username=:username");
		@SuppressWarnings("unchecked")
		List<Client> clist = sessionFactory.getCurrentSession().createQuery(buffer.toString())
				.setParameter("username", username).list();
		Client client = clist.get(0);
		return client;
	}

	public Client findClientById(long id) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Client.class);
		crit.add(Restrictions.eq("id", id));
		return (Client) crit.uniqueResult();
	}

	public long delete(long id) {
		// TODO Auto-generated method stub
		Client info = this.findClientById(id);
		sessionFactory.getCurrentSession().delete(info);
		return id;
	}

}
