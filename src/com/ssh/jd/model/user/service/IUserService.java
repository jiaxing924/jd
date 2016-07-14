package com.ssh.jd.model.user.service;

import com.ssh.jd.model.user.pojo.User;

/**
 * <p>Title:IUserService</p>
 * <p>Description:用户业务层接口</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午1:05:25
 */
public interface IUserService {
	User login(User user)throws Exception;
	void register(User user)throws Exception;
}
