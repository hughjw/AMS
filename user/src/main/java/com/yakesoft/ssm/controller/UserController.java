package com.yakesoft.ssm.controller;
import com.yakesoft.ssm.entity.User;
import com.yakesoft.ssm.mapper.UserMapper;
import com.yakesoft.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.annotation.Retention;
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserMapper userMapper;

    @RequestMapping(value = "login",method=RequestMethod.POST)
    public String login(String username, String password,  HttpServletRequest request,  HttpServletResponse response, Model model) {
        User user = userMapper.selectByUsernamePassword();
        //验证用户名不能为null
        if (null != username) {
            //验证密码不能为null
            if (null != password) {
                if ((user.getUsername()).equals(username)) {
                    if ((user.getPassword()).equals(password)) {
                        return "/jsp/allAddress.jsp";
                    } else {
                        model.addAttribute("error", "密码必须正确");
                        return  "index.jsp";
                    }
                } else {
                    model.addAttribute("error", "用户名必须正确");
                    return  "index.jsp";
                }
            } else {
                model.addAttribute("error", "密码不能为null");
                return  "index.jsp";
            }
        } else {
            model.addAttribute("error", "用户名不能为null");
            return  "index.jsp";
        }
    }

    /**
     * 注册用户校验 略
     * @param username
     * @param password
     * @param repassword
     */
    public String  registYZ(String username,String password, String repassword ,String data,
                            String sex,String email,String  comefromguo,String comefromsheng ,
                            HttpServletRequest request,  HttpServletResponse response,Model model){
            if(null !=username){
            return  "a";
            }else{
                model.addAttribute("error", "用户名不能为null");
                return  "regist.jsp";
            }
    }
}

