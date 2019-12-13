package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hiberutil.HibernateUtil;
import com.pojo.User;

public class HibernateLoginService {

	public static boolean validateUserJDBC() {
		return false;
	}

	public static boolean validateUserHB(String email, String pass) {
		SessionFactory sessionFactory = HibernateUtil.sessionFactory();
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("FROM User WHERE email=:email and pass=:pass");
		query.setParameter("email", email);
		query.setParameter("pass", pass);
		List<User> list = query.getResultList();

		if (list.size() == 0) {
			return false;
		}
		else {
			return true;
		}

	}

}
