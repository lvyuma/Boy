package com.example.store.service;

import com.example.store.bean.Admin;
import com.example.store.mapper.AdminMapper;
import com.example.store.exception.ServiceException;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

@Service
public class AdminServiceImpl implements AdminService {

	@Resource
	private AdminMapper adminMapper;

	@Resource
	private JavaMailSender mailSender;

	@Override
	public Admin checkLogin(String loginName, String loginPwd, String ip) {
		// 1.参数检验
		if (StringUtils.isBlank(loginName)) {
			throw new ServiceException("帐号不能为空！");
		}
		if (StringUtils.isBlank(loginPwd)) {
			throw new ServiceException("密码不能为空！");
		}
		// 2.根据登录名查询管理员信息
		Admin admin = adminMapper.selectByLoginName(loginName);
		// 3.检查登录名或密码是否错误
		if (admin == null || !admin.getLoginPwd().equals(loginPwd)) {
			throw new ServiceException("帐号或密码错误！");
		}
		// 4.更新最后登录IP和时间
		Admin updateAdmin = new Admin();
		updateAdmin.setId(admin.getId());
		updateAdmin.setLastLoginIp(ip);
		updateAdmin.setLastLoginTime(new Date());
		adminMapper.updateAdminById(updateAdmin);
		// 5.返回管理员对象
		return admin;
	}

	@Override
	public String sendEmailCode(String email) {
		// 1.参数校验
		if (email == null) {
			throw new ServiceException("邮箱地址不能为空！");
		}
		// 2.根据邮箱地址查询管理员信息
		Admin admin = adminMapper.selectByEmail(email);
		if (admin == null) {
			throw new ServiceException("电子邮箱不存在！");
		}
		// 3.生成6位数字动态码
		String code = RandomStringUtils.random(6, "0123456789");
		// 4.发送富文本内容邮件
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom("1043551197@qq..com", "^_^商城");
			helper.setTo(email);
			helper.setSubject("[^_^商城]帐号找回密码验证…");
			// 邮件HTML模版
			String html = "<html><body>" +
					"<div>亲爱的^_^商城用户<font color='#f77616'>[realName]</font>，您好！</div><br>" +
					"<div>您的帐号 [loginName]，本次找回密码的动态码是：<font color='#f77616'>[code]</font></div>" +
					"<div>请勿将动态码透露给其他人。</div><br>" +
					"<div>本邮件由系统自动发送，请勿直接回复！</div>" +
					"<div>感谢您的访问，祝您使用愉快！</div>" +
					"</body></html>";
			html = html
					.replace("[realName]", admin.getRealName())
					.replace("[loginName]", admin.getLoginName())
					.replace("[code]", code);
			helper.setText(html, true);
			mailSender.send(message);
		} catch (Exception e) {
			throw new ServiceException("发送邮箱动态码失败！");
		}
		// 5.返回动态码(用于存储到HttpSession中)
		return code;
	}

	@Override
	public void resetPassword(String email, String code, String sCode, String pwd) {
		// 1.参数校验
		if (StringUtils.isBlank(email)) {
			throw new ServiceException("邮箱地址不能为空！");
		}
		if (sCode == null || !sCode.equals(code)) {
			throw new ServiceException("动态码错误！");
		}
		if (StringUtils.isBlank(pwd)) {
			throw new ServiceException("重置密码不能为空！");
		}
		// 2.更新重置密码到数据库
		adminMapper.updatePwdByEmail(email, pwd);
	}

	@Override
	public void changePassword(Integer id, String pwd, String newPwd) {
		// 1.参数校验
		if (StringUtils.isBlank(pwd)) {
			throw new ServiceException("旧密码不能为空！");
		}
		if (StringUtils.isBlank(newPwd)) {
			throw new ServiceException("新密码不能为空！");
		}
		// 2.根据管理员id查询管理员信息
		Admin admin = adminMapper.selectById(id);
		if (admin == null) {
			throw new ServiceException("管理员不存在！");
		}
		// 3.检查旧密码是否匹配
		if (!admin.getLoginPwd().equals(pwd)) {
			throw new ServiceException("旧密码错误！");
		}
		// 4.更新新密码到数据库
		Admin updateAdmin = new Admin();
		updateAdmin.setId(id);
		updateAdmin.setLoginPwd(newPwd);
		adminMapper.updateAdminById(updateAdmin);
	}

	@Override
	public void changeProfile(Integer id, String realName, String mobile, String email) {
		// 1.参数校验
		if (StringUtils.isBlank(mobile)) {
			throw new ServiceException("手机号码不能为空！");
		}
		if (StringUtils.isBlank(email)) {
			throw new ServiceException("电子邮箱不能为空！");
		}
		// 2.根据管理员id查询管理员信息
		Admin admin = adminMapper.selectById(id);
		if (admin == null) {
			throw new ServiceException("管理员不存在！");
		}
		// 3.更新个人资料到数据库
		Admin updateAdmin = new Admin();
		updateAdmin.setId(id);
		updateAdmin.setRealName(realName);
		updateAdmin.setMobile(mobile);
		updateAdmin.setEmail(email);
		adminMapper.updateAdminById(updateAdmin);
	}

	@Override
	public String uploadImage(Integer id, MultipartFile image, String realPath) {
		if (image.isEmpty()) {
			throw new ServiceException("没有选择上传的图片！");
		}
		// 依据原始文件名生成新文件名
		String prefix = "" + System.currentTimeMillis() + new Random().nextInt(10000);
		String fileName = prefix + "." + FilenameUtils.getExtension(image.getOriginalFilename());
		// 依据upload+当前日期作为保存路径
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savePath = "/upload/avatar/" + sdf.format(new Date()) + "/" + fileName;
		File saveFile = new File(realPath + savePath);
		try {
			if (!saveFile.exists()) {
				saveFile.mkdirs();
			}
			// 保存上传的图片
			image.transferTo(saveFile);
			// 更新图片头像路径到数据库
			Admin updateAdmin = new Admin();
			updateAdmin.setId(id);
			updateAdmin.setImage(savePath);
			adminMapper.updateAdminById(updateAdmin);
		} catch (Exception e) {
			e.printStackTrace();
			if (saveFile.exists())
				saveFile.delete();
			throw new ServiceException("上传图片失败！");
		}
		return savePath;
	}

}
