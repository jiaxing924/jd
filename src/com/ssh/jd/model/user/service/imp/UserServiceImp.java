package com.ssh.jd.model.user.service.imp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssh.jd.model.user.dao.IUserDao;
import com.ssh.jd.model.user.pojo.User;
import com.ssh.jd.model.user.service.IUserService;
/**
 * <p>Title:UserServiceImp</p>
 * <p>Description:用户业务层接口实现类</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午1:08:05
 */
@Service("UserServiceImp")
public class UserServiceImp implements IUserService {

	@Resource(name = "UserDaoImp")
	private IUserDao dao;
	
	/**
	 * 验证登陆
	 */
	public User login(User user) throws Exception {
		return dao.login(user);
	}

	/**
	 * 注册添加用户
	 */
	public void register(User user) throws Exception {
		dao.register(user);
	}

}
