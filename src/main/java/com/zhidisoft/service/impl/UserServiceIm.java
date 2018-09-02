package com.zhidisoft.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhidisoft.dao.UserDao;
import com.zhidisoft.entity.User;
import com.zhidisoft.service.UserServiceIn;
@Service
public class UserServiceIm implements UserServiceIn {
	@Resource
	UserDao userDao;
	@Override
	public int login(User user) {
		User dbUser = userDao.findByName(user);
		if(dbUser!=null && dbUser.getPassword().equals(user.getPassword())){
			return 1;
		}else{
			return -1;
		}
	}

}
