package com.ssh.jd.model.user.action;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ssh.jd.model.car.pojo.Car;
import com.ssh.jd.model.user.pojo.User;
import com.ssh.jd.model.user.service.IUserService;

/**
 * <p>Title:UserAction</p>
 * <p>Description:用户Action</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午1:13:48
 */
@Controller("UserAction")
@Scope(value = "prototype") // 作用范围，每次请求都是一个新的action
public class UserAction {

	@Resource(name = "UserServiceImp")
	private IUserService service;

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * 验证登陆方法
	 * @return String 
	 */
	public String login() {
		
		try {
			User u = service.login(user);
			System.out.println("可以登录");
			if (u != null) {//登陆成功,保存用户对象到会话中
				HttpSession session = ServletActionContext.getRequest().getSession(); 
				session.setAttribute("currentUser", u);//将用户对象存储在web会话作用域中
				session.setAttribute("car", new Car());//分配用户购物车
				return "loginok";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "failed";
	}
	
	/**
	 * 注册用户
	 * @return String
	 */
	public String register(){
		try {
			user.setRegDate(new Date());
			service.register(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "registerok";
	}

}
