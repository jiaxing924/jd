package com.ssh.jd.model.goods.dao.imp;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.goods.dao.IGoodsDao;
import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.pojo.GoodsType;

/**
 * <p>Title:GoodsTypeDaoImp</p>
 * <p>Description:商品类型接口实现类</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:20:05
 */
@Repository("GoodsDaoImp")
public class GoodsDaoImp implements IGoodsDao {

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;// 依赖注入,按照名称进行装配

	/**
	 * 从商品类别表中加载所有商品类别信息
	 * @return 商品类别列表
	 */
	public List<GoodsType> loadGoodsTypeList() throws Exception {
		String hql = "from GoodsType";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<GoodsType> list = query.list();
		session.flush();
		session.close();
		return list;
	}

	/**
	 * 加载所有商品类别信息
	 * @return 商品信息列表
	 */
	public List<GoodsInfo> searchGoodsInfoListByTypeCode(String typeCode) throws Exception {
		String hql = "from GoodsInfo where typeCode = '" + typeCode + "'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<GoodsInfo> list = query.list();
		session.flush();
		session.close();
		return list;
	}

	/**
	 * 通过goodsCode(商品码)加载对应商品的所有信息
	 * @return 某件商品所有信息
	 */
	public GoodsInfo loadGoodsDetailsByGoodsCode(String goodsCode) throws Exception {
		String hql = "from GoodsInfo where goodsCode = '" + goodsCode + "'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
        GoodsInfo goodsInfo = (GoodsInfo) query.uniqueResult();
		session.flush();
		session.close();
		return goodsInfo;
	}

}
