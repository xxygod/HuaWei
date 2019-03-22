package com.gangOfFour.shopping.Controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.gangOfFour.shopping.pojo.ColorCentre;
import com.gangOfFour.shopping.pojo.ProductInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AColorCentreController {

    @RequestMapping(value = "/querColorCentre" ,produces = "text/html;charset=GBK")
    @ResponseBody
    public String queryByIdColorCentre(HttpServletRequest request, HttpSession session){
        String colorCentreId=request.getParameter("colorCentreId");
        Object obj=session.getAttribute("productInfo");
        ColorCentre colorCentre=null;
        String json=null;
        if(obj != null) {
            ProductInfo productInfo=(ProductInfo)obj;
            if (colorCentreId != null) {
                for(int i=0;i<productInfo.getColorCentres().size();i++){
                    if(Integer.valueOf(colorCentreId)== productInfo.getColorCentres().get(i).getColorCentreId()){
                        colorCentre=productInfo.getColorCentres().get(i);
                        json= JSON.toJSONString(colorCentre);
                    }
                }
            }
        }
        return json;
    }
}
