package com.action;

import com.entity.Users;
import com.service.IUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private IUsersService us;

    @RequestMapping("LoginTel")
    public ModelAndView LoginTel(ModelAndView mvo, String tel , String pwd, HttpSession session){
        Map map = new HashMap();
        map.put("tel",tel);
        map.put("pwd",pwd);

        Users users =us.selectByUser(map);
        System.out.println("------------"+users);
        if (users != null){
            session.setAttribute("users",users);
            mvo.setViewName("index");
        }else {
            mvo.addObject("LoginError","账号或密码错误！！！");
            mvo.setViewName("htlogin");
        }
        return mvo;
    }

    @RequestMapping("UpdateUsers")
    public ModelAndView UpdateUsers(ModelAndView mvo,String pwd,HttpSession session){
        System.out.println("------------"+pwd);
        Users users =(Users) session.getAttribute("users");
        int uid = users.getUid();
        Users u = new Users();
        u.setPwd(pwd);
        u.setUid(uid);
        int num = us.updateByPrimaryKeySelective(u);
        if (num > 0 ){
            session.removeAttribute("users");
            mvo.setViewName("htlogin");
        }else {
            mvo.addObject("UpError","修改失败");
            mvo.setViewName("pwdUpdate");
        }
        return mvo;
    }

}
