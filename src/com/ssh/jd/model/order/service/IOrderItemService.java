package com.ssh.jd.model.order.service;

import java.util.List;

import com.ssh.jd.model.order.pojo.OrderItem;

/**
 * <p>Title:IOrderItemService</p>
 * <p>Description:订单表项业务层接口</p>
 * @author 刘增刚
 * @date 2016年7月23日 下午5:53:22
 */
public interface IOrderItemService {
	public List<OrderItem> searchOrderItemByOrderCode(String orderCode) throws Exception;

}
