package com.action;


import com.entity.Ground;
import com.entity.Order;
import com.entity.Users;
import com.service.IGroundService;
import com.service.IOrderService;
import com.service.IUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.*;

@Controller
public class OrderController {

    @Autowired
    private IOrderService os;
    @Autowired
    private IUsersService us;
    @Autowired
    private IGroundService gs;

    @RequestMapping("selectOrder")
    public ModelAndView selectOrder(ModelAndView mvo){
        List<Order> list = os.selectAllOrder();
        List<Users> ulist = new ArrayList();
        List tlist = new ArrayList();
        List timelist = new ArrayList();
        for (Order o : list) {
           int uid = o.getUid();
            Users u = us.selectByPrimaryKey(uid);
            ulist.add(u);
            int gid = o.getGid();
            Ground g = gs.selectByPrimaryKey(gid);
            String title = g.getTitle();
            if (title.length() > 10){
                title = title.substring(0,9) + "...";
            }
            tlist.add(title);
            Date currentTime = o.getOtime();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String times = formatter.format(currentTime);
            timelist.add(times);
        }
        mvo.addObject("timelist",timelist);
        mvo.addObject("tlist",tlist);
        mvo.addObject("olist",list);
        mvo.addObject("ulist",ulist);
        mvo.setViewName("order");
        return mvo;
    }

    @RequestMapping("upOrder")
    @ResponseBody
    public Integer upOrder(String send,String oid){
        System.out.println("-------send = " + send + "-----------oid = " + oid);
        Order o = new Order();
        o.setOid(Integer.parseInt(oid));
        o.setSend(Integer.parseInt(send));
        int num = os.updateByPrimaryKeySelective(o);

        return num;
    }

}
