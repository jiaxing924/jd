package com.ssh.jd.model.goods.dao;

import java.util.List;

import com.ssh.jd.model.goods.pojo.GoodsType;

/**
 * <p>Title:GoodsTypeDao</p>
 * <p>Description:商品类别接口Dao层</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:17:01
 */
public interface GoodsTypeDao {
	List<GoodsType> loadGoodsTypeList()throws Exception;
}
