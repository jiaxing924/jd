package com.ssh.jd.model.goods.dao.imp;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.goods.dao.GoodsTypeDao;
import com.ssh.jd.model.goods.pojo.GoodsType;
/**
 * <p>Title:GoodsTypeDaoImp</p>
 * <p>Description:商品类型接口实现类</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午3:20:05
 */
@Repository("GoodsTypeDaoImp")
public class GoodsTypeDaoImp implements GoodsTypeDao{

	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;//依赖注入,按照名称进行装配
	
	/**
	 * 从商品类别表中加载所有商品类别信息
	 * @return 商品类别列表
	 */
	public List<GoodsType> loadGoodsTypeList()throws Exception {
		String hql = "from GoodsType";
		Session session = sessionFactory.openSession();
        Query query = session.createQuery(hql);
        @SuppressWarnings("unchecked")
		List<GoodsType> list = query.list();
        session.flush();
        session.close();
		return list;
	}

}
