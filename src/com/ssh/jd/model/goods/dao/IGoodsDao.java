package com.ssh.jd.model.goods.dao;

import java.util.List;

import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.pojo.GoodsType;

/**
 * <p>Title:GoodsTypeDao</p>
 * <p>Description:商品类别接口Dao层</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:17:01
 */
public interface IGoodsDao {
	List<GoodsType> loadGoodsTypeList()throws Exception;
	List<GoodsInfo> searchGoodsInfoListByTypeCode(String typeCode)throws Exception;
	GoodsInfo loadGoodsDetailsByGoodsCode(String goodsCode)throws Exception;
}
