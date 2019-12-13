package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.hiberutil.HibernateUtil;
import com.pojo.User;

public class HibernateRegisterService {
	
	
	public static void registerUser(User user) {
		SessionFactory sessionFactory=HibernateUtil.sessionFactory();
		Session session=sessionFactory.openSession();
		Transaction txn=session.beginTransaction();
		session.save(user);
		txn.commit();
		session.close();
		
	}

}
