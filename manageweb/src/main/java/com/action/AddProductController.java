package com.action;

import net.sf.json.JSONArray;

import java.util.*;
import com.alibaba.fastjson.JSON;
import com.service.*;
import com.entity.*;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Decoder;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.*;


@Controller
public class AddProductController {
    @Autowired
    private IProductService ps ;
    @Autowired
    private ServletContext servletContext;
    @Autowired
    private  IPictureService pics;
    @Autowired
    private  ICellService cs;
    @Autowired
    private  ITypeService ts;


    @RequestMapping("intoProduct")
    public ModelAndView intoProduct(ModelAndView mvo){
        List<Cell> clist  = cs.selectAllCell();
        List<Type> tlist = ts.selectAllType();
        mvo.addObject("clist",clist);
        mvo.addObject("tlist",tlist);
        mvo.setViewName("addproduct");
        return  mvo;
    }

    @RequestMapping("addproduct")
    @ResponseBody
    public String upload(String dataArr2, String function1,String time, String type,
                         String cell, String mah, String ww, String vv, String hh, String overtime,
                         String sound, String brush, String ll, String kg, String destory) throws  Exception{
        String js;
        /*
        *function1   time  type  cell  mah  ww  vv  hh  overtime  sound brush  ll
        * kg  destory
        **/

        String filePath = servletContext.getInitParameter("filePath");//文件保存地址
        //System.out.println(" filePath = "+filePath);
        String webPath = servletContext.getInitParameter("webPath");//网络路径
        //System.out.println(" webPath = "+webPath);
/*Integer prid, Integer uid, String function, Integer endurance, Integer typeId, Integer cellId, Integer mah,
  Integer w, Integer time,
  String v, Integer overTime, Integer sound, Integer brush, Double l, Integer kg, String describe
*/

        Integer times = Integer.parseInt(time);
        Integer typeId = Integer.parseInt(type);
        Integer cellId = Integer.parseInt(cell);
        Integer mahs = Integer.parseInt(mah);
        Integer wh = Integer.parseInt(ww);
        Integer hours = Integer.parseInt(hh);
        Integer overtimes = Integer.parseInt(overtime);
        Integer sounds = Integer.parseInt(sound);
        Integer brushs = Integer.parseInt(brush);
        Double ls = Double.parseDouble(ll);
        Integer kgs = Integer.parseInt(kg);

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
        Product p2 = new Product(null,null,function1,times,typeId,cellId,mahs,wh,hours,vv,overtimes,sounds,brushs,ls,kgs,destory);
        System.out.println("----------------- p2 = " + p2);
        int pnum = ps.insert(p2);
        System.out.println("----------------- pnum = " + pnum);
        int num = 0;
        for (int i=0;i<plist.size();i++) {
            plist.get(i).setProductId(p2.getPrid());
            num = pics.insert(plist.get(i));
        }
        System.out.println("----------------- num = " + num);
        String ps = num + "";
        js = JSON.toJSONString(num);
       /* js="{num:1}";*/
        System.out.println("----------------- js = " + js);
       String num1 = num +"";
        return num1;
    }

    private String randFileName(String fileName){
        String f = "";
        int index = fileName.lastIndexOf(".");
        //产生随机字符串
        //String randName = UUID.randomUUID().toString();
        if(index == -1){
            f = fileName + ".jpg";
        }else{
            f = fileName + "." + fileName.substring(index+1);
        }

        return f;
    }
}
