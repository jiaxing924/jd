package com.ssh.jd.model.order.dao;

import java.io.Serializable;
import java.util.List;

import com.ssh.jd.model.order.pojo.OrderItem;
import com.ssh.jd.model.order.pojo.OrderMain;

/**
 * <p>Title:IOrderMainDao</p>
 * <p>Description:订单详细信息dao层接口</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午1:32:46
 */
public interface IOrderMainDao {
	
      //创建订单
      public Serializable createOrder(OrderMain order,List<OrderItem> orderItemList)throws Exception;
      
      //按照用户id查询订单
      public List<OrderMain> searchOrderMainByUser(String ownerId,int tag)throws Exception;
}
