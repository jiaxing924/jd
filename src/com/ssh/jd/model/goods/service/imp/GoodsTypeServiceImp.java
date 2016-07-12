package com.ssh.jd.model.goods.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.goods.dao.GoodsTypeDao;
import com.ssh.jd.model.goods.pojo.GoodsType;
import com.ssh.jd.model.goods.service.GoodsTypeService;

/**
 * <p>Title:GoodsTypeServiceImp</p>
 * <p>Description:商品类别service层实现类</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:24:12
 */
@Service("GoodsTypeServiceImp")
public class GoodsTypeServiceImp implements GoodsTypeService {

	@Resource(name = "GoodsTypeDaoImp")
	private GoodsTypeDao dao;// 依赖注入
    
	/**
	 * 加载所有商品类别
	 * @return 商品类别列表
	 */
	public List<GoodsType> loadGoodsTypeList()throws Exception {
		return dao.loadGoodsTypeList();
	}

}
