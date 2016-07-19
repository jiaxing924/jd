package com.ssh.jd.model.order.pojo;

import java.util.Date;

/**
 * <p>Title:OrderMain</p>
 * <p>Description:订单详细信息实体</p>
 * @author 刘增刚
 * @date 2016年7月18日 下午1:16:02
 */
public class OrderMain {
	private String id;
	private String orderCode;// 订单编号
	private String owner;// 订单所有者
	private Double total;// 订单总计
	private String phone;// 详细电话
	private String address;// 地址
	private Integer status;// 订单状态
	private Date confirmTime;// 确认时间
	private String description;// 订单描述

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getConfirmTime() {
		return confirmTime;
	}

	public void setConfirmTime(Date confirmTime) {
		this.confirmTime = confirmTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
