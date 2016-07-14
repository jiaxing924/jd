package com.ssh.jd.model.comment.dao.imp;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.ssh.jd.model.comment.dao.ICommentDao;
import com.ssh.jd.model.comment.pojo.Comment;

/**
 * <p>Title:CommentDaoImp</p>
 * <p>Description:实现评论接口方法</p>
 * @author 刘增刚
 * @date 2016年7月13日 下午2:32:22
 */
@Repository("CommentDaoImp")
public class CommentDaoImp implements ICommentDao {

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;// 依赖注入,按照名称进行装配
	
	/**
	 * 通过商品编号查询评论信息
	 * @return 评论信息列表
	 */
	public List<Comment> searchCommentListByGoodsCode(String goodsCode) throws Exception {
		String hql = "from Comment as c where c.gid = '" + goodsCode + "' ";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Comment> list = query.list();
		session.flush();
		session.close();
		return list;
	}

}
