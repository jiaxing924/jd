package com.ssh.jd.model.goods.pojo;

import java.util.Date;

/**
 * <p>Title:GoodsInfo</p>
 * <p>Description:商品具体信息</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午2:04:06
 */
public class GoodsInfo {
	private String id;
	private String goodsCode;
	private String goodsName;
	private Double price;
	private String producer;
	private Date putaway;
	private Integer storeCount;
	private String description;
	private String img;
	private String typeCode;
	private Long commentCount;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public Date getPutaway() {
		return putaway;
	}

	public void setPutaway(Date putaway) {
		this.putaway = putaway;
	}

	public Integer getStoreCount() {
		return storeCount;
	}

	public void setStoreCount(Integer storeCount) {
		this.storeCount = storeCount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public Long getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(Long commentCount) {
		this.commentCount = commentCount;
	}

}
