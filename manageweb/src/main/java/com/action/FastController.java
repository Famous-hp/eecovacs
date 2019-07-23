package com.action;

import com.entity.Fast;
import com.service.IFastService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class FastController {
    @Autowired
    private IFastService fs;

    @RequestMapping("selectAllfast")
    public ModelAndView selectAllfast(ModelAndView mvo){
        List<Fast> list = fs.selectAll();
        System.out.println("**************"+list);
        mvo.addObject("fastlist",list);
        mvo.setViewName("fast");
        return  mvo;
    }

    @RequestMapping("addfast")
    public ModelAndView addfast(ModelAndView mvo,String new_fast){
        System.out.println("*********"+new_fast);
        Fast ff = new Fast();
        ff.setName(new_fast);
        int num = fs.insert(ff);
        System.out.println("*********num"+num);
        if (num > 0){
            mvo.setViewName("redirect:selectAllfast");
        }else {
            mvo.addObject("AddError","添加失败");
            mvo.setViewName("fast");
        }

        return mvo;
    }

    @RequestMapping("delfast")
    public ModelAndView delfast(ModelAndView mvo,Integer fid){
        System.out.println("*********fid"+fid);
        int num = fs.deleteByPrimaryKey(fid);
        if (num > 0){
            mvo.setViewName("redirect:selectAllfast");
        }else {
            mvo.addObject("AddError","删除失败");
            mvo.setViewName("fast");
        }
        return mvo;
    }



}
