package com.ssh.jd.model.order.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.order.dao.IOrderItemDao;
import com.ssh.jd.model.order.pojo.OrderItem;
import com.ssh.jd.model.order.service.IOrderItemService;
/**
 * <p>Title:OrderItemServiceImp</p>
 * <p>Description:订单表项业务层方法实现</p>
 * @author 刘增刚
 * @date 2016年7月23日 下午5:54:34
 */
@Service("OrderItemServiceImp")
public class OrderItemServiceImp implements IOrderItemService {

	@Resource(name = "OrderItemDaoImp")
    private IOrderItemDao dao;
	
	public List<OrderItem> searchOrderItemByOrderCode(String orderCode) throws Exception {
		return dao.searchOrderItemByOrderCode(orderCode);
	}

}
