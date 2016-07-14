package com.ssh.jd.model.car.pojo;

import java.util.ArrayList;

import com.ssh.jd.model.goods.pojo.GoodsInfo;

public class Car extends ArrayList<GoodsInfo>{
      /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private GoodsInfo goodsInfo;
      private String id;
      private int allQuantity;//购物车总共数量
      private int quantity;//购买的单个物品数量
      private Double totalPrice;//购物车商品总价
      
}
