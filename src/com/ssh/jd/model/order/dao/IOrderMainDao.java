package com.ssh.jd.model.order.dao;

import com.ssh.jd.model.order.pojo.OrderMain;

/**
 * <p>Title:IOrderMainDao</p>
 * <p>Description:订单详细信息dao层接口</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午1:32:46
 */
public interface IOrderMainDao {
	
      OrderMain loadOrderMainByOrderCode(String name)throws Exception;
      void addOrderMain(OrderMain orderMain)throws Exception;
}
