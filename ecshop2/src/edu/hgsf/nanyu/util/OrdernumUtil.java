package edu.hgsf.nanyu.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class OrdernumUtil {
	public static String orders_no = null;

	public static String getOrders_no() {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");// 设置日期格式

		int i = (int) (Math.random() * 9000) + 1000;//获取四位随机数
		
		String orders_no = df.format(new Date()) + i;//拼成订单编号

		return orders_no;

	}
}
