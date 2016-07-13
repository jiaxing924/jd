package com.ssh.jd.model.goods.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.goods.dao.IGoodsDao;
import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.pojo.GoodsType;
import com.ssh.jd.model.goods.service.IGoodsService;

/**
 * <p>Title:GoodsTypeServiceImp</p>
 * <p>Description:商品类别service层实现类</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:24:12
 */
@Service("GoodsServiceImp")
public class GoodsServiceImp implements IGoodsService {

	@Resource(name = "GoodsDaoImp")
	private IGoodsDao dao;// 依赖注入
    
	/**
	 * 加载所有商品类别
	 * @return 商品类别列表
	 */
	public List<GoodsType> loadGoodsTypeList()throws Exception {
		return dao.loadGoodsTypeList();
	}

	/**
	 * 按照商品类型号加载所有商品信息
	 * @return 商品信息列表
	 */
	public List<GoodsInfo> searchGoodsInfoListByTypeCode(String typeCode) throws Exception {
		return dao.searchGoodsInfoListByTypeCode(typeCode);
	}

	/**
	 * 按照商品码(goodsCode)加载所有商品信息
	 * @return 商品信息列表
	 */
	public GoodsInfo loadGoodsDetailsByGoodsCode(String goodsCode) throws Exception {
		return dao.loadGoodsDetailsByGoodsCode(goodsCode);
	}

}
