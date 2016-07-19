package com.ssh.jd.model.order.action;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.car.pojo.Car;
import com.ssh.jd.model.order.pojo.OrderMain;
import com.ssh.jd.model.order.service.IOrderMainService;
import com.ssh.jd.model.user.pojo.User;

/**
 * <p>Title:OrderAction</p>
 * <p>Description:订单控制器Action</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午8:01:47
 */
@Controller("OrderAction")
public class OrderAction {
	
	@Resource(name = "OrderMainServiceImp")
	private IOrderMainService service;
	
	private OrderMain orderMain;
	
	/**
	 * 通过用户名加载订单
	 * @return String
	 */
	public String loadOrder(){
		System.out.println("咋不执行呢？？？？？");
		HttpSession session = ServletActionContext.getRequest().getSession();
		try {
			User user = (User) session.getAttribute("currentUser");
			if(user == null){
				return "doLogin";
			}
			orderMain = service.loadOrderMainByOrderCode(user.getName());
			System.out.println("*****？？？？？");
			if(orderMain == null){
				return "doLogin";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "showOrder";
	}
	
	/**
	 * 添加订单
	 * @return String
	 */
	public String addOrder(){
		System.out.println("到了么？。。。。");
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("currentUser");
		Car car = (Car) session.getAttribute("car");
		OrderMain orderMain = new OrderMain();
		orderMain.setId("123123131");
		orderMain.setOwner(user.getName());
		orderMain.setTotal(car.getTotal());
		orderMain.setPhone(user.getPhone());
		orderMain.setAddress(user.getAddress());
		orderMain.setStatus(0);
		orderMain.setConfirmTime(new Date());
		orderMain.setDescription("描述从哪来？");
		
		try {
			service.addOrderMain(orderMain);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "addSuccess";
	}


	public OrderMain getOrderMain() {
		return orderMain;
	}


	public void setOrderMain(OrderMain orderMain) {
		this.orderMain = orderMain;
	}

}
