package com.ssh.jd.model.order.service;

import com.ssh.jd.model.order.pojo.OrderMain;

/**
 * <p>Title:IOrderMainService</p>
 * <p>Description:订单业务层接口</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午7:58:04
 */
public interface IOrderMainService {
	OrderMain loadOrderMainByOrderCode(String name) throws Exception;
	void addOrderMain(OrderMain orderMain)throws Exception;
}
