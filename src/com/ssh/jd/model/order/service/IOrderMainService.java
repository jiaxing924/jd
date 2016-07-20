package com.ssh.jd.model.order.service;

import java.io.Serializable;
import java.util.List;

import com.ssh.jd.model.order.pojo.OrderItem;
import com.ssh.jd.model.order.pojo.OrderMain;

/**
 * <p>Title:IOrderMainService</p>
 * <p>Description:订单业务层接口</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午7:58:04
 */
public interface IOrderMainService {
	 //创建订单
    public Serializable createOrder(OrderMain order,List<OrderItem> orderItemList)throws Exception;
    
    //按照用户id查询订单
    public List<OrderMain> searchOrderMainByUser(String ownerId,int tag)throws Exception;
}
