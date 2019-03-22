package com.gangOfFour.shopping.Controller.manage;

import com.alibaba.fastjson.JSONObject;
import com.gangOfFour.shopping.pojo.PictureColor;
import com.gangOfFour.shopping.service.PictureColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/manage")
public class PictureColorController {
    @Autowired
    private PictureColorService pictureColorService;
    @RequestMapping(value = "/addProductColor",produces="text/html; charset=utf-8")
    @ResponseBody
    public String addProductColor( HttpServletRequest request, HttpSession session) throws IOException {
        Object objectList=session.getAttribute("list");
        session.removeAttribute("list");
        String productId=request.getParameter("productId");
        String productColorId=request.getParameter("productColorId");
        JSONObject json = new JSONObject();
        if(productColorId !=null && productId != null){
            List<PictureColor> pictureColors=new ArrayList<>();
            if(objectList != null){
                List<String> list=(List<String>)objectList;
                for(int i= 0;i<list.size();i++){
                    PictureColor pictureColor=new PictureColor();
                    pictureColor.setPirctureColorUrl(list.get(i));
                    pictureColors.add(pictureColor);
                }
            }else{
              json.put("s","清先上传图片");
                return json.toJSONString();
            }
            boolean con=pictureColorService.addPictureColor(pictureColors,Integer.valueOf(productId),Integer.valueOf(productColorId));
            if(con){
                //添加成功
                json.put("y","添加成功");
                return json.toJSONString();
            }else{
                //添加失败
                json.put("n","添加失败");
                return json.toJSONString();
            }

        }else{
            json.put("n","添加失败");
            return json.toJSONString();
        }
    }
}
