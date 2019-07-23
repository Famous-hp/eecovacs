package com.action;

import com.entity.Cell;
import com.entity.Picture;
import com.entity.Product;
import com.entity.Type;
import com.service.ICellService;
import com.service.IPictureService;
import com.service.IProductService;
import com.service.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ModifiyPrductController {
    @Autowired
    private IProductService ps ;
    @Autowired
    private IPictureService pics;
    @Autowired
    private ICellService cs;
    @Autowired
    private ITypeService ts;

    @RequestMapping("ModifiyPrduct")
    public ModelAndView ModifiyPrduct(ModelAndView mvo,String prid){
        Product p = ps.selectByPrimaryKey(Integer.parseInt(prid));
        List<Cell> clist = cs.selectAllCell();
        List<Type> tlist = ts.selectAllType();
        mvo.addObject("p",p);
        mvo.addObject("clist",clist);
        mvo.addObject("tlist",tlist);
        System.out.println("***********************");
        mvo.setViewName("modifyproduct");
        return mvo;
    }

    @RequestMapping("Modify")
    public ModelAndView Modify(ModelAndView mvo,Integer prid,String function,Integer time,Integer type,Integer cell,
                               Integer mah,Integer ww,String vv,Integer hh , Integer overtime,Integer sound,
                               Integer brush,Double ll,Integer kg,String destory){
        Product p  = new Product(prid,null,function,time,type,cell,mah,ww,hh,vv,overtime,sound,brush,ll,kg,destory);
        System.out.println("***********************"+p);
        int num = ps.updateByPrimaryKey(p);
        System.out.println("***********************num = "+num);
        if (num > 0){
            mvo.setViewName("productlist");
        }else {
            mvo.addObject("UpdateError","修改失败");
            mvo.setViewName("modifyproduct");
        }
        return mvo;
    }


}
