package com.ssh.jd.model.order.dao.imp;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.order.dao.IOrderMainDao;
import com.ssh.jd.model.order.pojo.OrderMain;
/**
 * <p>Title:OrderMainDaoImp</p>
 * <p>Description:订单接口dao层实现类</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午1:39:43
 */
@Repository("OrderMainDaoImp")
public class OrderMainDaoImp implements IOrderMainDao{

	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	/**
	 * 通过用户名查找订单详细信息
	 * @return OrderMain or null
	 */
	public OrderMain loadOrderMainByOrderCode(String name) throws Exception {
		String hql = "from OrderMain as o where o.owner = '"+ name +"'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		Object obj = query.uniqueResult();
		session.close();
		if(obj == null){
			return null;
		}
		return (OrderMain) obj;
	}

	/**
	 * 存入订单信息
	 */
	public void addOrderMain(OrderMain orderMain) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println(orderMain.getId() + "保存之前获取id");
		session.save(orderMain);
		session.flush();
		transaction.commit();
		session.close();
		System.out.println("保存之后获取：" + orderMain.getId());
	}

}
