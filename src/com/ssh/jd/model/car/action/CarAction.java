package com.ssh.jd.model.car.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.car.pojo.Car;
import com.ssh.jd.model.car.service.ICarService;
import com.ssh.jd.model.goods.pojo.GoodsInfo;

/**
 * <p>Title:CarAction</p>
 * <p>Description:购物车控制层</p>
 * @author 刘增刚
 * @date 2016年7月15日 下午3:10:25
 */
@Controller("CarAction")
@Scope(value = "prototype")
public class CarAction {

	@Resource(name = "CarServiceImp")
	private ICarService carService;

	private double total;
	private String goodsCode;// 传入商品编号
	private int quantity;// 传入购买数量

	/**
	 * 添加或更新购物车中商品
	 * @return String
	 */
	public String addOrUpdate() {
		Car car = validLoginAndGetCar();// 验证登陆并获取购物车
		try {
			if (car == null) {// 未登陆
				return "doLogin";
			} else {// 已登陆并拥有购物车
				GoodsInfo goods = carService.searchGoodsInfoByGoodsCode(goodsCode);
				goods.setQuantity(quantity);// 设置购买数量
				car.addOrUpdate(goods);// 添加商品到购物车
				System.out.println("+++"+car.getTotal());
				System.out.println("action 的 addOrUpdate+++++++");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "showCar";
	}

	/**
	 * 验证用户是否登陆并返回用户购物车
	 * @return String
	 */
	private Car validLoginAndGetCar() {
		HttpSession session = ServletActionContext.getRequest().getSession();

		Object objCar = session.getAttribute("car");// 从session中获取购物车
		if (objCar == null) {
			return null;
		}
		return (Car) objCar;
	}

	/**
	 * 移除购物车内容
	 * @return String
	 */
	public String removeGoods() {
		Car car = validLoginAndGetCar();// 验证登陆并获取购物车
		try {
			if (car == null) {// 未登陆
				return "doLogin";
			} else {// 已登陆并拥有购物车
				car.clearCar();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "removesuceess";
	}
	
	/**
	 * 移除购物车单个商品
	 * @return String
	 */
	public String removeSingleGoods() {
		Car car = validLoginAndGetCar();// 验证登陆并获取购物车
		try {
			if (car == null) {// 未登陆
				return "doLogin";
			} else {// 已登陆并拥有购物车
				GoodsInfo goods = carService.searchGoodsInfoByGoodsCode(goodsCode);
				car.removeGoods(goods);//获取该商品信息，然后删除掉
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "removeOk";
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
