package com.ssh.jd.model.car.pojo;

import java.util.ArrayList;

import com.ssh.jd.model.goods.pojo.GoodsInfo;

/**
 * <p>Title:Car</p>
 * <p>Description:继承ArrayList,用作购物车</p>
 * @author 刘增刚
 * @date 2016年7月15日 下午2:16:18
 */
public class Car extends ArrayList<GoodsInfo> {
	private static final long serialVersionUID = 1L;

	private double total;// 购物车商品总计

	private int count;// 购买数量

	/**
	 * 判断是否包含此商品
	 * @return 包含  GoodsInfo; 不包含  null
	 */
	public GoodsInfo isContainer(GoodsInfo goodsInfo) {
		if (this.size() == 0) {// 判断购物车是否为空
			return null;
		} else {
			for (GoodsInfo goods : this) {
				if (goods.getGoodsCode().equals(goodsInfo.getGoodsCode())) {
					return goods;
				}
			}
		}
		return null;
	}

	/**
	 * 添加或更新购物车
	 * @param goodsInfo
	 */
	public void addOrUpdate(GoodsInfo goodsInfo) {
		System.out.println("car类中的addOrUpdate");
		System.out.println("car类中的addOrUpdate中方法"+goodsInfo.getQuantity());
		GoodsInfo goods = isContainer(goodsInfo);
		if (goods != null) {
			goods.setQuantity(goodsInfo.getQuantity());// 更新商品数量
			goods.setSubtotal(goodsInfo.getQuantity() * goodsInfo.getPrice());// 计算小计
		}else{//不存在此商品
			this.add(goodsInfo);//添加该商品
			goodsInfo.setSubtotal(goodsInfo.getQuantity()*goodsInfo.getPrice());//计算小计
		}
		countTotal();
	}

	/**
	 * 统计购物车商品总计
	 */
	private void countTotal() {
		System.out.println("countTotal。。。。。。。。。。。。。。。。。");

		if (this.size() != 0) {
			double localTotal = 0;
			for (GoodsInfo goods : this) {
				localTotal += goods.getSubtotal();
			}
			total = localTotal;
		}
		System.out.println("总价："+total);
	}
	
	/**
	 * 从购物车移除商品
	 * @param goodsInfo
	 */
	public void removeGoods(GoodsInfo goodsInfo){
		GoodsInfo goods = isContainer(goodsInfo);
		if(goods != null){
			this.remove(goodsInfo);
		}
		countTotal();
	}
	
	/**
	 * 清空购物车中所有商品
	 */
	public void clearCar(){
		this.clear();
		total = 0;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getTotal() {
		return total;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
