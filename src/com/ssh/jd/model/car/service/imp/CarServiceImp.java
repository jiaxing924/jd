package com.ssh.jd.model.car.service.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.car.dao.ICarDao;
import com.ssh.jd.model.car.service.ICarService;
import com.ssh.jd.model.goods.pojo.GoodsInfo;
/**
 * <p>Title:CarServiceImp</p>
 * <p>Description:业务层购物车方法实现</p>
 * @author 刘增刚
 * @date 2016年7月15日 下午3:06:51
 */
@Service("CarServiceImp")
public class CarServiceImp implements ICarService {

	@Resource(name = "CarDaoImp")
	private ICarDao dao;
	
	/**
	 * 通过商品编号查找商品信息
	 * @return 商品信息
	 */
	public GoodsInfo searchGoodsInfoByGoodsCode(String goodsCode) throws Exception {
		return dao.searchGoodsInfoByGoodsCode(goodsCode);
	}

}
