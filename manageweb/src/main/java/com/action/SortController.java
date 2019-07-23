package com.action;

import com.entity.Fast;
import com.entity.Sort;
import com.service.IFastService;
import com.service.ISortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class SortController {
    @Autowired
    private ISortService ss;

    @RequestMapping("selectAllSort")
    public ModelAndView selectAllSort(ModelAndView mvo){
        List<Sort> list = ss.selectAllSort();
        System.out.println("**************"+list);
        mvo.addObject("sortlist",list);
        mvo.setViewName("sort");
        return  mvo;
    }

    @RequestMapping("addsort")
    public ModelAndView addsort(ModelAndView mvo,String new_sort){
        System.out.println("*********"+new_sort);
        Sort sort = new Sort();
        sort.setSortName(new_sort);
        int num = ss.insert(sort);
        System.out.println("*********num"+num);
        if (num > 0){
            mvo.setViewName("redirect:selectAllSort");
        }else {
            mvo.addObject("AddError","添加失败");
            mvo.setViewName("sort");
        }

        return mvo;
    }

    @RequestMapping("delsort")
    public ModelAndView delsort(ModelAndView mvo,Integer sid){
        System.out.println("*********sid"+sid);
        int num = ss.deleteByPrimaryKey(sid);
        if (num > 0){
            mvo.setViewName("redirect:selectAllSort");
        }else {
            mvo.addObject("AddError","删除失败");
            mvo.setViewName("sort");
        }
        return mvo;
    }



}
