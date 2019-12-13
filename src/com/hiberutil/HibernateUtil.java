package com.hiberutil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.pojo.User;

public class HibernateUtil {
	public static SessionFactory sessionFactory() {
		SessionFactory sessionFactory = null;
		if (sessionFactory == null) {
			Configuration con = new Configuration().configure().addAnnotatedClass(User.class);
			sessionFactory=con.buildSessionFactory();
		}
		return sessionFactory;
	}
}
