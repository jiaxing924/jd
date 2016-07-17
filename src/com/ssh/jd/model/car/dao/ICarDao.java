package com.ssh.jd.model.car.dao;

import com.ssh.jd.model.goods.pojo.GoodsInfo;

/**
 * <p>Title:ICarDao</p>
 * <p>Description:购物车dao层方法定义接口</p>
 * @author 刘增刚
 * @date 2016年7月15日 下午2:30:22
 */
public interface ICarDao {
	GoodsInfo searchGoodsInfoByGoodsCode(String goodsCode)throws Exception;

}
