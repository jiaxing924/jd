package com.ssh.jd.model.goods.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.goods.pojo.GoodsType;
import com.ssh.jd.model.goods.service.GoodsTypeService;

/**
 * <p>Title:GoodsTypeAction</p>
 * <p>Description:商品类型Action</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午8:03:42
 */
@Controller("GoodsTypeAction")
@Scope(value="prototype")//作用范围，每次请求都是一个新的action
public class GoodsTypeAction {
	
	@Resource(name = "GoodsTypeServiceImp")
	private GoodsTypeService service;
	
	private List<GoodsType> goodsTypeList;

	public List<GoodsType> getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsTypeList(List<GoodsType> goodsTypeList) {
		this.goodsTypeList = goodsTypeList;
	}
	
	
	public String loadGoodsTypeList(){
		try {
			goodsTypeList = service.loadGoodsTypeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "firstPage";
	}
	

}
