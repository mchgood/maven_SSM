package com.zhidisoft.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhidisoft.entity.User;
import com.zhidisoft.service.UserServiceIn;

@Controller
@RequestMapping("/system")
public class LoginController {
	@Resource
	UserServiceIn userServiceIm;
	
	@ResponseBody	
	@RequestMapping("/login")
	public Map login(User user){
		Map map = new HashMap<>();
		int rows = userServiceIm.login(user);
		if(rows>0){
			map.put("result", true);
			map.put("msg", "登录成功");
		}else{
			map.put("result", false);
			map.put("msg", "登录失败");
		}
		return map;
	}
}
