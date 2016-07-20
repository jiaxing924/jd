package com.ssh.jd.model.order.pojo;

/**
 * <p>Title:OrderItem</p>
 * <p>Description:订单项表</p>
 * @author 刘增刚
 * @date 2016年7月19日 下午1:42:45
 */
public class OrderItem {

	private String id;
	private String orderId;// 订单编号
	private String goodsCode;// 商品编号
	private Integer quantity;// 数量
	private String description;// 订单描述
	private Integer isComment;// 是否评论

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getIsComment() {
		return isComment;
	}

	public void setIsComment(Integer isComment) {
		this.isComment = isComment;
	}

}
