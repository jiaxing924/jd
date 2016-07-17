package com.ssh.jd.model.car.dao.imp;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.car.dao.ICarDao;
import com.ssh.jd.model.goods.pojo.GoodsInfo;

/**
 * <p>Title:CarDaoImp</p>
 * <p>Description:实现购物车dao层接口方法</p>
 * @author 刘增刚
 * @date 2016年7月15日 下午2:56:13
 */
@Repository("CarDaoImp")
public class CarDaoImp implements ICarDao {

	@Resource(name ="sessionFactory")
	private SessionFactory sessionFactory;
	
	/**
	 * 通过商品编号查找商品信息
	 * @return 商品信息
	 */
	public GoodsInfo searchGoodsInfoByGoodsCode(String goodsCode) throws Exception {
        String hql = "from GoodsInfo where goodsCode = '"+goodsCode+"'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		GoodsInfo goods = (GoodsInfo) query.uniqueResult();
        session.close();		
		return goods;
	}

}
