package com.ssh.jd.model.order.service.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.order.dao.IOrderMainDao;
import com.ssh.jd.model.order.pojo.OrderMain;
import com.ssh.jd.model.order.service.IOrderMainService;
/**
 * <p>Title:OrderMainServiceImp</p>
 * <p>Description:订单业务层方法实现</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午7:59:26
 */
@Service("OrderMainServiceImp")
public class OrderMainServiceImp implements IOrderMainService{

	@Resource(name = "OrderMainDaoImp")
	private IOrderMainDao dao;
	
	/**
	 * 通过用户名查找订单详细信息
	 * @return OrderMain or null
	 */
	public OrderMain loadOrderMainByOrderCode(String name) throws Exception {
		return dao.loadOrderMainByOrderCode(name);
	}

	/**
	 * 添加订单
	 */
	public void addOrderMain(OrderMain orderMain) throws Exception {
		dao.addOrderMain(orderMain);
	}

}
