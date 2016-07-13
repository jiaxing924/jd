package com.ssh.jd.model.goods.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.pojo.GoodsType;
import com.ssh.jd.model.goods.service.IGoodsService;

/**
 * <p>Title:GoodsTypeAction</p>
 * <p>Description:商品类型Action</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午8:03:42
 */
@Controller("GoodsAction")
@Scope(value = "prototype") // 作用范围，每次请求都是一个新的action
public class GoodsAction {

	@Resource(name = "GoodsServiceImp")
	private IGoodsService service;

	private List<GoodsType> goodsTypeList;// 商品类别列表

	private List<GoodsInfo> goodsInfoList;// 商品信息列表

	private String typeCode;// 商品类型码

	private String goodsCode;// 商品号

	private GoodsInfo goodsInfo;//单个商品信息

	public GoodsInfo getGoodsInfo() {
		return goodsInfo;
	}

	public void setGoodsInfo(GoodsInfo goodsInfo) {
		this.goodsInfo = goodsInfo;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public List<GoodsInfo> getGoodsInfoList() {
		return goodsInfoList;
	}

	public void setGoodsInfoList(List<GoodsInfo> goodsInfoList) {
		this.goodsInfoList = goodsInfoList;
	}

	public List<GoodsType> getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsTypeList(List<GoodsType> goodsTypeList) {
		this.goodsTypeList = goodsTypeList;
	}

	/**
	 * 调用业务层方法加载商品所有类别信息
	 * @return
	 */
	public String loadGoodsTypeList() {
		try {
			goodsTypeList = service.loadGoodsTypeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "firstPage";
	}

	/**
	 * 通过类型码查询到该类所有商品信息
	 * @return
	 */
	public String searchGoodsInfoList() {
		try {
			goodsInfoList = service.searchGoodsInfoListByTypeCode(typeCode);
			System.out.println(goodsInfoList.size() + "有呢");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "goodsInfoListPage";
	}

	/**
	 * 通过goodsCode查询某一个商品的具体信息
	 * @return
	 */
	public String loadGoodsDetails() {
		try {
			goodsInfo = service.loadGoodsDetailsByGoodsCode(goodsCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "goodsDetailsPage";
	}

}
