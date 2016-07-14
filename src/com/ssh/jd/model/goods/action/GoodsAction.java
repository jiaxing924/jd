package com.ssh.jd.model.goods.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.comment.pojo.Comment;
import com.ssh.jd.model.comment.service.ICommentService;
import com.ssh.jd.model.goods.pojo.GoodsInfo;
import com.ssh.jd.model.goods.pojo.GoodsType;
import com.ssh.jd.model.goods.service.IGoodsService;

/**
 * <p>Title:GoodsTypeAction</p>
 * <p>Description:商品类型Action</p>
 * @author 刘增刚
 * @date 2016年7月11日 下午8:03:42
 */
@Controller("GoodsAction")
@Scope(value = "prototype") // 作用范围，每次请求都是一个新的action
public class GoodsAction {

	@Resource(name = "GoodsServiceImp")
	private IGoodsService goodsService;// 依赖注入GoodsService层实现类

	@Resource(name = "CommentServiceImp")
	private ICommentService commentService;// 依赖注入CommentService层实现类

	private List<GoodsType> goodsTypeList;// 商品类别列表

	private List<GoodsInfo> goodsInfoList;// 商品信息列表

	private List<Comment> commentList;// 评论信息列表

	private String typeCode;// 商品类型码

	private String goodsCode;// 商品号

	private GoodsInfo goodsInfo;// 单个商品信息

	private Long all; // 评论条数

	private Long a = (long) 0;// 好评条数

	private Long b = (long) 0;// 中评条数

	private Long c = (long) 0;// 差评条数

	/**
	 * 调用业务层方法加载商品所有类别信息
	 * @return String
	 */
	public String loadGoodsTypeList() {
		try {
			goodsTypeList = goodsService.loadGoodsTypeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "firstPage";
	}

	/**
	 * 通过类型码查询到该类所有商品信息
	 * @return String
	 */
	public String searchGoodsInfoList() {
		try {
			goodsInfoList = goodsService.searchGoodsInfoListByTypeCode(typeCode);
			System.out.println(goodsInfoList.size() + "有呢");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "goodsInfoListPage";
	}

	/**
	 * 通过goodsCode查询某一个商品的具体信息以及评论信息
	 * @return String
	 */
	public String loadGoodsDetails() {
		try {
			goodsInfo = goodsService.loadGoodsDetailsByGoodsCode(goodsCode);
			commentList = commentService.searchCommentListByGoodsCode(goodsCode);

			all = (long) commentList.size();

			//统计好评、中评以及差评个数
			for (Comment comment : commentList) {
				if (comment.getStar() >= 4) {
					a++;
				} else if (comment.getStar() == 3) {
					b++;
				} else {
					c++;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "goodsDetailsPage";
	}

	public GoodsInfo getGoodsInfo() {
		return goodsInfo;
	}

	public void setGoodsInfo(GoodsInfo goodsInfo) {
		this.goodsInfo = goodsInfo;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public List<GoodsInfo> getGoodsInfoList() {
		return goodsInfoList;
	}

	public void setGoodsInfoList(List<GoodsInfo> goodsInfoList) {
		this.goodsInfoList = goodsInfoList;
	}

	public List<GoodsType> getGoodsTypeList() {
		return goodsTypeList;
	}

	public void setGoodsTypeList(List<GoodsType> goodsTypeList) {
		this.goodsTypeList = goodsTypeList;
	}

	public List<Comment> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}

	public Long getAll() {
		return all;
	}

	public void setAll(Long all) {
		this.all = all;
	}

	public Long getA() {
		return a;
	}

	public void setA(Long a) {
		this.a = a;
	}

	public Long getB() {
		return b;
	}

	public void setB(Long b) {
		this.b = b;
	}

	public Long getC() {
		return c;
	}

	public void setC(Long c) {
		this.c = c;
	}

}
