package edu.hgsf.nanyu.util;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.MultiPartEmail;

public class Email {

	public static void findPsw(String newPwd,String emailrr) {
		// SimpleEmail email = new SimpleEmail();//如果发送普通的邮件，使用这个类就可以了
		MultiPartEmail email = new MultiPartEmail();// 如果要发送带附件的邮件，需使用这个类
		// HtmlEmail email = new HtmlEmail();//可以发送html类型的邮件

		email.setHostName("smtp.126.com");// 指定要使用的邮件服务器
		email.setAuthentication("kill126@126.com", "123456789");// 使用163的邮件服务器需提供在163已注册的用户名、密码
		email.setCharset("UTF-8");
		try {
			email.setFrom("kill126@126.com");// 设置发件人
			email.addTo(emailrr);// 设置收件人
			email.setSubject("南鱼商城密码");// 设置主题
			email.setMsg("您的密码为："+newPwd);// 设置邮件内容

			/*
			 * File file = new File("C:\\testEmail.txt");//要发送的附件
			 * 
			 * EmailAttachment attachment = new EmailAttachment();
			 * attachment.setPath(file.getPath());
			 * attachment.setName(file.getName());
			 * attachment.setDescription("附件测试");
			 * attachment.setDisposition(EmailAttachment.ATTACHMENT);//附件的类型
			 * email.attach(attachment);
			 */

			email.send();
			//System.out.println("发送成功");
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}

}
