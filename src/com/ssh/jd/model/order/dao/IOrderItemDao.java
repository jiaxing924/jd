package com.ssh.jd.model.order.dao;

import java.util.List;

import com.ssh.jd.model.order.pojo.OrderItem;

/**
 * <p>Title:IOrderItemDao</p>
 * <p>Description:订单表项dao层接口</p>
 * @author 刘增刚
 * @date 2016年7月23日 下午5:46:17
 */
public interface IOrderItemDao {
	
	 public List<OrderItem> searchOrderItemByOrderCode(String orderCode)throws Exception;

}
