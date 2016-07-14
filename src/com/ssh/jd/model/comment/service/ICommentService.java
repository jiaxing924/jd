package com.ssh.jd.model.comment.service;

import java.util.List;

import com.ssh.jd.model.comment.pojo.Comment;

/**
 * <p>Title:ICommentService</p>
 * <p>Description:业务层评论接口方法</p>
 * @author 刘增刚
 * @date 2016年7月13日 下午2:39:48
 */
public interface ICommentService {
	List<Comment>  searchCommentListByGoodsCode(String goodsCode)throws Exception;
}
