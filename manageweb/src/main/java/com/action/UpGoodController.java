package com.action;

import com.alibaba.fastjson.JSON;
import com.entity.*;
import com.service.*;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Decoder;

import javax.servlet.ServletContext;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UpGoodController {
    @Autowired
    private IProductService ps;
    @Autowired
    private ISortService ss;
    @Autowired
    private ServletContext servletContext;
    @Autowired
    private IGroundService gs;
    @Autowired
    private IPictureService pics;

    @RequestMapping("SelectUpGood")
    public ModelAndView SelectUpGood(ModelAndView mvo){
        List plist = new ArrayList();
        List<Sort> tlist = ss.selectAllSort();
        List<Product> list = ps.selectAllProduct();
        for (Product l: list) {
            int num = l.getPrid();
            plist.add(num);
        }
        mvo.addObject("plist",plist);
        mvo.addObject("tlist",tlist);
        mvo.setViewName("upGoods");
        return mvo;
    }

    @RequestMapping("UpGoodThing")
    @ResponseBody
    public String upload(String dataArr2,String title,String price,String pnum,String type,String num) throws  Exception{
        String js;
        String filePath = servletContext.getInitParameter("filePath");//文件保存地址
        String webPath = servletContext.getInitParameter("webPath");//网络路径

        Double prices = Double.parseDouble(price);
        Integer pnums = Integer.parseInt(pnum);
        Integer typeId = Integer.parseInt(type);
        Integer nums = Integer.parseInt(num);

        List<Picture> plist = new ArrayList();

        BASE64Decoder decoder=new BASE64Decoder();
        JSONArray jarr = JSONArray.fromObject(dataArr2);

        System.out.println( "jarr.size = "+jarr.size());

        for (int i=0;i<jarr.size();i++){
            JSONObject obj = jarr.getJSONObject(i);
            String name = obj.getString("name");
            String base = obj.getString("base64");
            String [] base2 = base.split("base64,");
            String imgstr = base2[1];
            //Base64解码
            byte[] b = decoder.decodeBuffer(imgstr);
            for(int j=0;j<b.length;++j)
            {
                if(b[j]<0)
                {//调整异常数据
                    b[j]+=256;
                }
            }
            String fileName =  name+".jpg";
            String wp = webPath+fileName;
            Picture pc = new Picture();
            pc.setSrc(wp);
            plist.add(pc);

            OutputStream out = new FileOutputStream(filePath+"/"+fileName);
            out.write(b);
            out.flush();
            out.close();
        }
        //Linux给权限
       /* Runtime runtime = Runtime.getRuntime();
        String command = "chmod 755 -R "+filePath;
        Process process = runtime.exec(command);
        process.waitFor();
        int exit = process.exitValue();*/

        //封装数据
        Ground g = new Ground(null,title,prices,null,nums,typeId,pnums);
        System.out.println("----------------- p2 = " + g);
        int gnum = gs.insert(g);
        System.out.println("----------------- pnum = " + pnum);
        int num1 = 0;
        for (int i=0;i<plist.size();i++) {
            plist.get(i).setGroundId(g.getGid());
            num1 = pics.insert(plist.get(i));
        }
        System.out.println("----------------- num = " + num);
        String ps = num + "";
        js = JSON.toJSONString(num);
       /* js="{num:1}";*/
        System.out.println("----------------- js = " + js);
        String num2 = num1 +"";
        return num2;
    }
}
