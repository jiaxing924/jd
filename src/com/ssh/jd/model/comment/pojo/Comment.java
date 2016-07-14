package com.ssh.jd.model.comment.pojo;

import java.util.Date;

/**
 * <p>Title:Comment</p>
 * <p>Description:商品评论信息实体类</p>
 * @author 刘增刚
 * @date 2016年7月13日 下午2:12:46
 */
public class Comment {
	private String id;
	private String gid;// 商品编号
	private String uid;// 用户id
	private String comments;// 评论信息
	private int star;// 评论星数
	private Date releaseDate;// 发布时间

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

}
