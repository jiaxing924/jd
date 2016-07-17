package com.ssh.jd.model.car.service;

import com.ssh.jd.model.goods.pojo.GoodsInfo;

/**
 * <p>Title:ICarService</p>
 * <p>Description:service层购物车接口方法</p>
 * @author 刘增刚
 * @date 2016年7月15日 下午3:05:23
 */
public interface ICarService {
	GoodsInfo searchGoodsInfoByGoodsCode(String goodsCode)throws Exception;

}
