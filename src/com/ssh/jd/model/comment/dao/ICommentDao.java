package com.ssh.jd.model.comment.dao;

import java.util.List;

import com.ssh.jd.model.comment.pojo.Comment;

/**
 * <p>Title:ICommentDao</p>
 * <p>Description:dao层访问评论表的方法</p>
 * @author 刘增刚
 * @date 2016年7月13日 下午2:28:49
 */
public interface ICommentDao {
	List<Comment>  searchCommentListByGoodsCode(String goodsCode)throws Exception;
}
