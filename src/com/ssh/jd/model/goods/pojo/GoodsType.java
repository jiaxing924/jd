package com.ssh.jd.model.goods.pojo;

/**
 * <p>Title:GoodsType</p>
 * <p>Description:商品类别表</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:10:49
 */
public class GoodsType {
	private String id;// 唯一标识
	private String typeCode;// 类型码
	private String typeName;// 类型名

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

}
