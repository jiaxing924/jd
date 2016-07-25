package com.ssh.jd.model.order.action;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.car.pojo.Car;
import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.service.IGoodsService;
import com.ssh.jd.model.order.pojo.OrderItem;
import com.ssh.jd.model.order.pojo.OrderMain;
import com.ssh.jd.model.order.service.IOrderItemService;
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

	@Resource(name = "OrderItemServiceImp")
	private IOrderItemService orderItemService;
	
	@Resource(name = "GoodsServiceImp")
	private IGoodsService goodsService;
	
	private GoodsInfo goodsInfo;

	private String description;// 订单描述，传入参数

	private Integer isComment = 0; // 0表示未评论

	private String orderId;// 订单编号

	private List<OrderMain> orderMainList;// 主订单列表，返回数据

	private List<OrderItem> orderItemList;// 订单项列表，返回数据

	/**
	 * 通过用户id加载订单
	 * @return String
	 */
	public String loadOrder() {
		System.out.println("咋不执行呢？？？？？");
		HttpSession session = ServletActionContext.getRequest().getSession();
		try {
			User user = (User) session.getAttribute("currentUser");
			if (user == null) {
				return "doLogin";
			}
			//orderMainList = service.searchOrderMainByUser(user.getId(), isComment);
			// orderItemList = service.

			orderMainList = service.searchOrderMainByUser(user.getId(), isComment);

			System.out.println(orderMainList + "I'm here" + orderMainList.get(0).getOrderCode());

			orderItemList = orderItemService.searchOrderItemByOrderCode(orderMainList.get(0).getOrderCode());
			System.out.println(orderItemList + "...............");

			goodsInfo = goodsService.loadGoodsDetailsByGoodsCode(orderItemList.get(0).getGoodsCode());
			System.out.println(goodsInfo.getGoodsName() + ":" + goodsInfo.getGoodsCode());

			System.out.println("*****？？？？？");
			if (orderMainList == null) {
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
	public String addOrder() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("currentUser");// 获取当前用户
		Car car = (Car) session.getAttribute("car");// 获取购物车

		OrderMain orderMain = new OrderMain();// 创建主订单对象

		orderMain.setOrderCode("OID" + user.getId() + String.valueOf(new Date().getTime()));// 生成订单编号
		orderMain.setOwnerId(user.getId());
		orderMain.setTotal(car.getTotal());
		orderMain.setPhone(user.getPhone());
		orderMain.setAddress(user.getAddress());
		orderMain.setStatus(0);// 0表示未处理
		orderMain.setConfirmTime(new Timestamp(new Date().getTime()));// 订单提交时间
		orderMain.setIsComment(0);// 0表示未评论

		if (!description.trim().equals("")) {
			orderMain.setDescription(description);
		}

		List<OrderItem> orderItemList = new ArrayList<OrderItem>();

		for (GoodsInfo goods : car) {
			OrderItem item = new OrderItem();
			item.setGoodsCode(goods.getGoodsCode());
			item.setQuantity(goods.getQuantity());
			item.setIsComment(0);
			item.setDescription("描述");
			orderItemList.add(item);
		}

		try {
			Serializable id = service.createOrder(orderMain, orderItemList);// 存入订单
			if (id != null) {
				car.clearCar();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "addSuccess";
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public List<OrderItem> getOrderItemList() {
		return orderItemList;
	}

	public void setOrderItemList(List<OrderItem> orderItemList) {
		this.orderItemList = orderItemList;
	}

	public Integer getIsComment() {
		return isComment;
	}

	public void setIsComment(Integer isComment) {
		this.isComment = isComment;
	}

	public List<OrderMain> getOrderMainList() {
		return orderMainList;
	}

	public void setOrderMainList(List<OrderMain> orderMainList) {
		this.orderMainList = orderMainList;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public GoodsInfo getGoodsInfo() {
		return goodsInfo;
	}

	public void setGoodsInfo(GoodsInfo goodsInfo) {
		this.goodsInfo = goodsInfo;
	}

}
