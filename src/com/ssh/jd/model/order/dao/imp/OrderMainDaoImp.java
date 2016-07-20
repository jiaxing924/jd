package com.ssh.jd.model.order.dao.imp;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.order.dao.IOrderMainDao;
import com.ssh.jd.model.order.pojo.OrderItem;
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
	 * 存入订单信息
	 */
	public Serializable createOrder(OrderMain order, List<OrderItem> orderItemList) throws Exception {
		System.out.println("进来了。。。");
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Serializable id = null;
		id = session.save(order);
		if(id != null){
			String orderCode = order.getOrderCode();//获取订单编号
			for(OrderItem item: orderItemList){
				item.setOrderId(orderCode);//关联主订单,订单编号为外键
				session.save(item);
			}
		}
		session.flush();
	    transaction.commit();
	    session.close();
		return id;
	}

	/**
	 * 按照用户id搜索订单信息
	 * @return 订单列表
	 */
	@SuppressWarnings("unchecked")
	public List<OrderMain> searchOrderMainByUser(String ownerId,int tag) throws Exception {
		
		List<OrderMain> orderMainList = new ArrayList<OrderMain>();
		
		String hql = "from OrderMain as o where o.ownerId = '"+ ownerId +"' and o.isComment = '"+ tag +"'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		orderMainList  =query.list();
		
		return orderMainList;
	}

}
