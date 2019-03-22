package com.gangOfFour.shopping.Controller.manage;

import com.alibaba.fastjson.JSONObject;
import com.gangOfFour.shopping.MyException.NullVaullException;
import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.service.ColorCentreService;
import com.gangOfFour.shopping.service.ProVersionsService;
import com.gangOfFour.shopping.service.VerCentreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.List;


@Controller
@RequestMapping("/manage")
public class VersoionsController {
    @Autowired
    private ColorCentreService colorCentreService;
    @Autowired
    private VerCentreService verCentreService;
    @Autowired
    private ProVersionsService proVersionsService;
    @RequestMapping(value = "/queryColorCentre",produces="text/html; charset=utf-8")
    @ResponseBody
    public String queryColorCentre(String productId, HttpSession session){
        JSONObject json = new JSONObject();
        if(productId !=null){
            List<ColorCentre> colorCentres=colorCentreService.queryByProductIdColorCentre(Integer.valueOf(productId));
            if (colorCentres == null) {
                json.put("n", "请先添加颜色");
                return json.toJSONString();
            } else {
                session.setAttribute("colorCentres",colorCentres);
                json.put("y", "");
                return json.toJSONString();
            }
            }
        return null;
    }
    @RequestMapping("toAddVersions")
    public String toAddVersions(HttpSession session, ModelMap map, HttpServletRequest request){
        String oneCategoryId=request.getParameter("oneCategoryId");
        List<ColorCentre> colorCentres=(List<ColorCentre>)session.getAttribute("colorCentres");
        List<ProVersions> proVersions=proVersionsService.queryByOCIdProVersions(Integer.valueOf(oneCategoryId));
        map.put("colorCentres",colorCentres);
        map.put("proVersions",proVersions);
        return "/manage/product_addVersoions";
    }
    @RequestMapping("/addVersions")
    public String addVersions(VerCentre verCentre,HttpServletRequest request)throws Exception{
        String parament=request.getParameter("editorValue");//参数
        verCentre.setParament(parament);
        boolean con= false;
        try {
            con = verCentreService.addVerCentre(verCentre);
        } catch (Exception e) {
            throw new NullVaullException("请填写完整商品版本信息");
        }
            return "redirect:/manage/queryAllProduct";
    }
    @RequestMapping("/queryVersions")
    @ResponseBody
    public List<VerCentre> queryVersions(HttpServletRequest request){
        String productId=request.getParameter("productId");
        String productColorId=request.getParameter("productColorId");
        ColorCentre colorCentre=colorCentreService.queryByproIdAndcolorIdColorCentre(Integer.valueOf(productId),Integer.valueOf(productColorId));
        if( colorCentre!= null){
            List<VerCentre> verCentres=verCentreService.queryByOCIdVerCentre(colorCentre.getColorCentreId());
            Collection collection=verCentres;
            return (List<VerCentre>)collection;
        }
        return null;
    }
}
