package edu.hgsf.nanyu.service.impl;


import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

import edu.hgsf.nanyu.dao.AdminLoginDAO;
import edu.hgsf.nanyu.dao.impl.AdminLoginDAOImpl;
import edu.hgsf.nanyu.entity.Admin;
import edu.hgsf.nanyu.service.AdminLoginService;
import edu.hgsf.nanyu.view.AdminVO;

public class AdminLoginServiceImpl implements AdminLoginService {
    
	AdminLoginDAO aldao=null;
	 public AdminLoginServiceImpl() {
		// TODO 自动生成的构造函数存根
		 aldao=new AdminLoginDAOImpl();
	}
	@Override
	public AdminVO adminLogin(String name,String pwd){
		AdminVO avo=null;
		Admin admin = aldao.findAdminBy(name, pwd);
		try {
			avo=new AdminVO();
			BeanUtils.copyProperties(avo, admin);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		return avo;
	}
}
