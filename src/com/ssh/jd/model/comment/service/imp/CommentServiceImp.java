package com.ssh.jd.model.comment.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.comment.dao.ICommentDao;
import com.ssh.jd.model.comment.pojo.Comment;
import com.ssh.jd.model.comment.service.ICommentService;
/**
 * <p>Title:CommentServiceImp</p>
 * <p>Description:业务层评论接口实现</p>
 * @author 刘增刚
 * @date 2016年7月13日 下午2:41:37
 */
@Service("CommentServiceImp")
public class CommentServiceImp implements ICommentService {

	@Resource(name = "CommentDaoImp")
	private ICommentDao dao;//依赖注入
	
	/**
	 * 通过商品编号查询评论信息
	 * @return 评论信息列表
	 */
	public List<Comment> searchCommentListByGoodsCode(String goodsCode) throws Exception {
		return dao.searchCommentListByGoodsCode(goodsCode);
	}

}
