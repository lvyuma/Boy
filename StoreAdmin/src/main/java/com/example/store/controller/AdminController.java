package com.example.store.controller;

import com.example.store.bean.Admin;
import com.example.store.common.JsonResult;
import com.example.store.common.WebUtil;
import com.example.store.exception.ServiceException;
import com.example.store.service.AdminService;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;

    // 转发到登录页面
    @RequestMapping("/showLogin.do")
    public String showLogin() {
        return "login";
    }

    // 转发到找回密码页面
    @RequestMapping("/showRetrievePassword.do")
    public String showRetrievePassword() {
        return "retrievePassword";
    }

    // 转发到修改密码页面
    @RequestMapping("/showPassword.do")
    public String showPassword() {
        return "password";
    }

    // 转发到个人资料页面
    @RequestMapping("/showProfile.do")
    public String showProfile() {
        return "profile";
    }

    // 检查登录.
    @RequestMapping("/checkLogin.do")
    @ResponseBody
    public JsonResult checkLogin(
            @RequestParam("username") String loginName,
            @RequestParam("password") String loginPwd,
            @RequestParam(value = "rememberMe", defaultValue = "false") Boolean rememberMe,
            HttpServletRequest request, HttpServletResponse response) {

        try {
            String ip = WebUtil.getIpAddr(request);
            Admin admin = adminService.checkLogin(loginName, loginPwd, ip);
            request.getSession().setAttribute("admin", admin);
            // 下次自动登录
            if (rememberMe != null && rememberMe) {
                // (登录密码+登录名)进行MD5摘要
                String token = DigestUtils.md5Hex(admin.getLoginPwd() + admin.getLoginName());
                // (登录名+;+token)作为Cookie值
                token = admin.getLoginName() + ";" + token;
                // 对Cookie值进行base64编码
                token = Base64.encodeBase64String(token.getBytes());
                // 以rememberMe作为Cookie名发送到浏览器端，过期时间为7天
                WebUtil.setCookie(response, "rememberMe", token, 7 * 24 * 60 * 60, true);
            }
            return new JsonResult(1, "登录成功！");
        } catch (ServiceException e) {
            return new JsonResult(0, e.getMessage());
        }
    }

    // 退出登录
    @RequestMapping("/logout.do")
    public String logout(HttpSession session, HttpServletResponse response) {
        // 销毁session
        session.invalidate();
        // 清除自动登录Cookie
        WebUtil.setCookie(response, "rememberMe", null, -1);
        // 重定向到登录页面
        return "redirect:/admin/showLogin.do";
    }

    // 发送邮箱动态码
    @RequestMapping("/sendEmailCode.do")
    @ResponseBody
    public JsonResult sendEmailCode(String email, HttpSession session) {
        try {
            String code = adminService.sendEmailCode(email);
            session.setAttribute(email, code);
            return new JsonResult(1, "发送邮箱动态码成功！");
        } catch (ServiceException e) {
            return new JsonResult(0, e.getMessage());
        }
    }

    // 重置密码
    @RequestMapping("/resetPassword.do")
    @ResponseBody
    public JsonResult resetPassword(String email, String code, String pwd, HttpSession session) {
        try {
            String sCode = (String) session.getAttribute(email);
            adminService.resetPassword(email, code, sCode, pwd);
            session.removeAttribute(email);
            return new JsonResult(1, "重置密码成功！");
        } catch (ServiceException e) {
            return new JsonResult(0, e.getMessage());
        }
    }

    // 修改密码
    @RequestMapping("/changePassword.do")
    @ResponseBody
    public JsonResult changePassword(String pwd, String newPwd, HttpSession session) {
        try {
            Admin a = (Admin) session.getAttribute("admin");
            adminService.changePassword(a.getId(), pwd, newPwd);
            return new JsonResult(1, "修改密码成功！");
        } catch (ServiceException e) {
            return new JsonResult(0, e.getMessage());
        }
    }

    // 修改个人资料
    @RequestMapping("/changeProfile.do")
    @ResponseBody
    public JsonResult changeProfile(String realName, String mobile, String email, HttpSession session) {
        try {
            Admin a = (Admin) session.getAttribute("admin");
            adminService.changeProfile(a.getId(), realName, mobile, email);
            // 修改个人资料成功后同步到HttpSession
            a.setRealName(realName);
            a.setMobile(mobile);
            a.setEmail(email);
            return new JsonResult(1, "修改个人资料成功！");
        } catch (ServiceException e) {
            return new JsonResult(0, e.getMessage());
        }
    }

    // 上传头像
    @RequestMapping("/uploadImage.do")
    @ResponseBody
    public JsonResult uploadImage(
            @RequestParam("image") MultipartFile image,
            HttpServletRequest request) {
        try {
            Admin a = (Admin) request.getSession().getAttribute("admin");
            String realPath = request.getServletContext().getRealPath("/");
            String path = adminService.uploadImage(a.getId(), image, realPath);
            // 同步修改的头像到HttpSession中
            a.setImage(path);
            return new JsonResult<>(1, "上传头像成功！", path);
        } catch (ServiceException e) {
            return new JsonResult(0, e.getMessage());
        }
    }

}
