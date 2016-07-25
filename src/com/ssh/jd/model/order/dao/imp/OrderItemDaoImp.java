package com.ssh.jd.model.order.dao.imp;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.order.dao.IOrderItemDao;
import com.ssh.jd.model.order.pojo.OrderItem;
/**
 * <p>Title:OrderItemDaoImp</p>
 * <p>Description:实现接口方法</p>
 * @author 刘增刚
 * @date 2016年7月23日 下午5:48:50
 */
@Repository("OrderItemDaoImp")
public class OrderItemDaoImp implements IOrderItemDao {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;

	public List<OrderItem> searchOrderItemByOrderCode(String orderCode) throws Exception {
		String hql = "from OrderItem where orderId = '"+ orderCode +"'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<OrderItem> list = query.list();
		
		return list;
	}

}
