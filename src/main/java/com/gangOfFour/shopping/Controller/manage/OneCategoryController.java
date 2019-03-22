package com.gangOfFour.shopping.Controller.manage;

import com.gangOfFour.shopping.pojo.OneCategory;
import com.gangOfFour.shopping.pojo.ProductColor;
import com.gangOfFour.shopping.service.OneCategoryService;
import com.gangOfFour.shopping.vo.VoList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Controller
@RequestMapping("/manage")
public class OneCategoryController {
    @Autowired
    private OneCategoryService oneCategoryService;

    /**
     * 查询所有商品分类
     * @param session
     * @param map
     * @return
     */
    @RequestMapping("/category")
    public String getAllOneCategory(HttpSession session, ModelMap map){
        List<OneCategory> oneCategoryList=null;
        Object oneCategoryObject=session.getAttribute("oneCategoryList");//先从session获取
        if(oneCategoryObject != null){
            oneCategoryList=(List<OneCategory>)oneCategoryObject;//不为空的话就强转
        }else {
            oneCategoryList=oneCategoryService.getAllOneCategory();//为空的话就去数据库查询
            session.setAttribute("oneCategoryList", oneCategoryList);//添加到到session
        }
        map.put("oneCategoryList",oneCategoryList);
        return "/manage/product_add";
    }

    /**
     * ajax查询所有子分类
     * @param session
     * @param map
     * @param oneCategoryId
     * @return
     */
    @RequestMapping("/subclass")
    @ResponseBody
    public List<VoList> getSubclass(HttpSession session,ModelMap map,String oneCategoryId){
        List<OneCategory> oneCategoryList=null;
        Object oneCategoryObject=session.getAttribute("oneCategoryList");//先从session获取
        if(oneCategoryObject != null){
            oneCategoryList=(List<OneCategory>)oneCategoryObject;//不为空的话就强转
        }else {
            oneCategoryList=oneCategoryService.getAllOneCategory();//为空的话就去数据库查询
            session.setAttribute("oneCategoryList", oneCategoryList);//添加到到session
        }
        if(oneCategoryId != null){
           for(int i=0;i<oneCategoryList.size();i++){
               if(oneCategoryList.get(i).getOneCategoryId() == Integer.valueOf(oneCategoryId)){
                   List<VoList> list=new ArrayList<>();
                   VoList voList=new VoList();
                   voList.setTwoCategory(oneCategoryList.get(i).getTwoCategories());
                   voList.setProductColor(oneCategoryList.get(i).getProductColors());
                   voList.setProVersions(oneCategoryList.get(i).getProVersions());
                   list.add(voList);
                   Collection collection=list;
                   return (List<VoList>)collection;
               }
           }
        }
        return null;
    }
    @RequestMapping("/productColor")
    @ResponseBody
    public List<ProductColor> queryColor(String oneCategoryId ,HttpSession session){
        List<OneCategory> oneCategoryList=null;
        Object oneCategoryObject=session.getAttribute("oneCategoryList");//先从session获取
        if(oneCategoryObject != null){
            oneCategoryList=(List<OneCategory>)oneCategoryObject;//不为空的话就强转
        }else {
            oneCategoryList=oneCategoryService.getAllOneCategory();//为空的话就去数据库查询
            session.setAttribute("oneCategoryList", oneCategoryList);//添加到到session
        }
        if(oneCategoryId != null){
            for(int i=0;i<oneCategoryList.size();i++){
                if(oneCategoryList.get(i).getOneCategoryId() == Integer.valueOf(oneCategoryId)){
                    List<ProductColor> list=oneCategoryList.get(i).getProductColors();
                    Collection collection=list;
                    return (List<ProductColor>)collection;
                }
            }
        }
        return null;
    }
}
