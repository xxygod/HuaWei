package com.gangOfFour.shopping.Controller.manage;

import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 登录表controller
 */
@Controller
public class UserLoginController {
    @Autowired
    private UserLoginService userLoginService;
    @RequestMapping("login")
    public String login(String loginName, String loginPassword , HttpSession session){
        UserLogin userLogin=userLoginService.login(loginName,loginPassword);
        if(userLogin != null){
            session.setAttribute("userLogin",userLogin);
            return "redirect:/manage/queryAllProduct";
        }else {
            session.setAttribute("hint","用户名密码错误!");
            return "login";
        }
    }

}
