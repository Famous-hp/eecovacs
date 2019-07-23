package com.action;

import com.entity.*;
import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexAction {
    @Autowired
    private IGroundService gs;
    @Autowired
    private IProductService ps;
    @Autowired
    private IPictrueService pics;
    @Autowired
    private ISortService ss;
    @Autowired
    private ITypeService ts;

    @RequestMapping("indexpage")
    public ModelAndView indexpage(ModelAndView mvo){

        List<Ground> glist = gs.selectAllGround();
        List list = new ArrayList();
        List list1 = new ArrayList();
        List<Product> list2 = new ArrayList();
        for (Ground g : glist) {
            int sid = g.getSortId();
            Sort sort = ss.selectByPrimaryKey(sid);
            list.add(sort);

            int gid = g.getGid();
            List<Picture> pic = pics.selectByGroundid(gid);
            list1.add(pic.get(0));

            int pid = g.getProductId();
            Product product = ps.selectByPrimaryKey(pid);
            list2.add(product);
        }
        mvo.addObject("piclist",list1);
        mvo.addObject("slist",list);
        mvo.addObject("glist",glist);
        List list3 = new ArrayList();
        for (Product p: list2) {
            int tid = p.getTypeId();
            Type type = ts.selectByPrimaryKey(tid);
            list3.add(type.getTypeName());
        }
        mvo.addObject("type",list3);
        mvo.setViewName("homepage");
        return mvo;
    }

}
