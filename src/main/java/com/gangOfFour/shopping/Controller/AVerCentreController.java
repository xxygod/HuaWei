package com.gangOfFour.shopping.Controller;

import com.alibaba.fastjson.JSON;
import com.gangOfFour.shopping.pojo.ColorCentre;
import com.gangOfFour.shopping.pojo.ProductInfo;
import com.gangOfFour.shopping.pojo.VerCentre;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AVerCentreController {
    @RequestMapping(value = "/queryVerContre",produces="text/html; charset=utf-8")
    @ResponseBody
    public String queryByIdVerContre(HttpServletRequest request, HttpSession session){
        String verCentreId=request.getParameter("verCentreId");
        Object obj=session.getAttribute("productInfo");
        VerCentre verCentre=null;
        String json=null;
        if(obj != null) {
            ProductInfo productInfo=(ProductInfo)obj;
            if (verCentreId != null) {
                for(int i=0;i<productInfo.getColorCentres().size();i++){
                    for(int j=0;j<productInfo.getColorCentres().get(i).getVerCentres().size();j++){
                        int NewVerCentreId=productInfo.getColorCentres().get(i).getVerCentres().get(j).getVerCentreId();
                        if(Integer.valueOf(verCentreId)== NewVerCentreId){
                            verCentre=productInfo.getColorCentres().get(i).getVerCentres().get(j);
                            json=JSON.toJSONString(verCentre);
                        }
                    }
                }
            }
        }
        return json;
    }
}
