package com.action;

import com.entity.Fast;
import com.entity.Type;
import com.service.IFastService;
import com.service.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TypeController {
    @Autowired
    private ITypeService ts;

    @RequestMapping("selectAlltype")
    public ModelAndView selectAlltype(ModelAndView mvo){
        List<Type> list = ts.selectAllType();
        System.out.println("**************"+list);
        mvo.addObject("typelist",list);
        mvo.setViewName("model");
        return  mvo;
    }

    @RequestMapping("addtype")
    public ModelAndView addtype(ModelAndView mvo,String new_type){
        System.out.println("*********"+new_type);
        Type tt = new Type();
        tt.setTypeName(new_type);
        int num = ts.insert(tt);
        System.out.println("*********num"+num);
        if (num > 0){
            mvo.setViewName("redirect:selectAlltype");
        }else {
            mvo.addObject("AddError","添加失败");
            mvo.setViewName("model");
        }

        return mvo;
    }

    @RequestMapping("deltype")
    public ModelAndView deltype(ModelAndView mvo,Integer tid){
        System.out.println("*********fid"+tid);
        int num = ts.deleteByPrimaryKey(tid);
        if (num > 0){
            mvo.setViewName("redirect:selectAlltype");
        }else {
            mvo.addObject("AddError","删除失败");
            mvo.setViewName("model");
        }
        return mvo;
    }



}
