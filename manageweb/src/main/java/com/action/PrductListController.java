package com.action;


import com.dao.IPictureDao;
import com.entity.Product;
import com.entity.Type;
import com.alibaba.fastjson.JSON;
import com.service.IPictureService;
import com.service.IProductService;
import com.service.ITypeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("productlist")
public class PrductListController {

    @Autowired
    private IProductService ps;
    @Autowired
    private ITypeService ts;
    @Autowired
    private IPictureService pics;

    @RequestMapping("selectproductlist")
    public ModelAndView selectproductlist(ModelAndView mvo){
        List<Product> plist = ps.selectAllProduct();
        List<Type> tlist = new ArrayList();
        for (Product p : plist) {
            System.out.println("**************"+p);
            Type t = ts.selectByPrimaryKey(p.getTypeId());
            tlist.add(t);
        }
        mvo.addObject("tlist",tlist);
        mvo.addObject("plist",plist);
        mvo.setViewName("productlist");
        return mvo;
    }

    @RequestMapping("SelectPage")
    @ResponseBody
    public String SelectPage(Integer pagenum,Integer pagesize){
        Map<String,Object> mp1 = new HashMap();//发网页
        Map<String,Object> mp  = new HashMap();  //回底层的mp
        System.out.println("**************pagenum="+pagenum);
        System.out.println("**************pagesize="+pagesize);
        if(pagesize==null){
            pagesize = 14;
        }
        if(pagenum==0){
            pagenum = 0;
        }else {
            pagenum = (pagenum -1)*pagesize;
        }
        System.out.println("**************pagenum="+pagenum);
        System.out.println("**************pagesize="+pagesize);
        mp.put("start",pagenum);
        mp.put("pagesize",pagesize);
        int count = ps.selectCount(mp);
        Integer pagecount=0;
        if(count>0){
            if(count%pagesize==0){
                pagecount=count/pagesize;
            }else{
                pagecount=count/pagesize+1;
            }
            if(pagenum<1){
                pagenum=1;
            }else if(pagenum>pagecount){
                pagenum=pagecount;
            }else{
                pagenum=pagenum;
            }
        }
        List<Product> plist = ps.selectPag(mp);
        List tlist = new ArrayList();
        for (Product p : plist) {

            Type t = ts.selectByPrimaryKey(p.getTypeId());
            String TypeName = t.getTypeName();
            tlist.add(TypeName);
        }
        System.out.println("------count---------"+count);
        mp1.put("count",count);
        mp1.put("plist",plist);
        mp1.put("pagenum",pagenum);
        System.out.println("**************plist"+plist);
        mp1.put("tlist",tlist);
        System.out.println("**************tlist"+tlist);
       String js = JSON.toJSONString(mp1);
        return js;
    }

    @RequestMapping("delproduct")
    public ModelAndView delproduct(ModelAndView mvo,Integer prid){
        System.out.println("***********************prid = "+prid);
        int num1 = pics.deleteByPrid(prid);
        int num = ps.deleteByPrimaryKey(prid);

        if (num > 0 && num1 > 0){
            mvo.addObject("massage","删除成功");
        }else {
            mvo.addObject("massage","删除失败");
        }
        mvo.setViewName("productlist");
        return mvo;
    }

}
