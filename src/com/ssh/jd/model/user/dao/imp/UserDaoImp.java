package com.ssh.jd.model.user.dao.imp;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.user.dao.IUserDao;
import com.ssh.jd.model.user.pojo.User;
/**
 * <p>Title:UserDaoImp</p>
 * <p>Description:实现用户接口方法</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午12:47:49
 */
@Repository("UserDaoImp")
public class UserDaoImp implements IUserDao {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;

	/**
	 * 通过用户名和密码查询用户信息
	 * @return 单个用户信息或null
	 */
	public User login(User user) throws Exception {
		String sql = "select id,name,password,phone,address,email,regDate"
				+ " from user as u where u.name = ? and u.password = ?";
		Session session = sessionFactory.openSession();
		SQLQuery sqlQuery = session.createSQLQuery(sql);
		sqlQuery.setString(0, user.getName());
		sqlQuery.setString(1, user.getPassword());
		sqlQuery.addEntity(User.class);
		Object obj = sqlQuery.uniqueResult();
		session.close();
		if (obj == null)
			return null;
		return (User) obj;
	}

	/**
	 * 注册添加用户
	 */
	public void register(User user) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println(user.getId() + "保存之前获取id");
		session.save(user);
		session.flush();
		transaction.commit();
		session.close();
		System.out.println("保存之后获取：" + user.getId());
	}

}
