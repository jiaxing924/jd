package com.ssh.jd.model.user.dao;

import com.ssh.jd.model.user.pojo.User;

/**
 * <p>Title:IUserDao</p>
 * <p>Description:</p>
 * @author 刘增刚
 * @date 2016年7月12日 下午12:43:45
 */
public interface IUserDao {
	User login(User user)throws Exception;
	User add(User user)throws Exception;
}
