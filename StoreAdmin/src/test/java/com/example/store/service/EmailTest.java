package com.example.store.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml", "classpath:spring-service.xml"})
public class EmailTest {

	@Resource
	private JavaMailSender mailSender;

	// 发送简单邮件
	@Test
	public void sendSimpleEmail() {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("lss4732@163.com");
		message.setTo("liangshishen@126.com");
		message.setSubject("Spring Email Test 1");
		message.setText("Hello World!");
		mailSender.send(message);
		System.out.println("邮件发送完毕！");
	}

	// 发送带有附件的邮件
	@Test
	public void sendEmailWithAttachment() throws MessagingException {
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true);
		helper.setFrom("lss4732@163.com");
		helper.setTo("liangshishen@126.com");
		helper.setSubject("Spring Email Test 2");
		helper.setText("这是一个带有附件的邮件！");
		// 使用Spring的FileSystemResource来加载资源
		FileSystemResource resource = new FileSystemResource("C:/Windows/Web/Wallpaper/Windows/img0.jpg");
		if (resource.exists()) {
			helper.addAttachment("img0.jpg", resource);
		}
		mailSender.send(message);
		System.out.println("邮件发送完毕！");
	}

	// 发送富文本内容邮件
	@Test
	public void sendRicEmail() throws MessagingException {
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		helper.setFrom("lss4732@163.com");
		helper.setTo("liangshishen@126.com");
		helper.setSubject("Spring Email Test 3");
		// src='cid:identifier01' 表示在消息中有一部分是图片并以identifier01来标识
		// 参数2为true，表示这是一个HTML
		helper.setText("<html><body><h4>Spring Email Test</h4><img src='cid:identifier01'></body></html>", true);
		// 使用Spring的FileSystemResource来加载资源
		FileSystemResource resource = new FileSystemResource("C:/Windows/Web/Wallpaper/Windows/img0.jpg");
		if (resource.exists()) {
			helper.addInline("identifier01", resource);
		}
		mailSender.send(message);
		System.out.println("邮件发送完毕！");
	}

}
