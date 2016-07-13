package com.ssh.jd.model.goods.service;

import java.util.List;

import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.pojo.GoodsType;
/**
 * <p>Title:GoodsTypeService</p>
 * <p>Description:商品类型接口service层</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:22:06
 */
public interface IGoodsService {
	List<GoodsType> loadGoodsTypeList()throws Exception;
	List<GoodsInfo> searchGoodsInfoListByTypeCode(String typeCode)throws Exception;
	GoodsInfo loadGoodsDetailsByGoodsCode(String goodsCode)throws Exception;

}
