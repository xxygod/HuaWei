package com.gangOfFour.shopping.Controller;

import com.gangOfFour.shopping.Controller.util.ProductInfoUtil;
import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.service.OneCategoryService;
import com.gangOfFour.shopping.service.ProductInfoService;
import com.gangOfFour.shopping.service.ShoppingCartService;
import com.gangOfFour.shopping.vo.VoProduct;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AproductInfoController {
    @Autowired
    private ProductInfoService productInfoService;
    @Autowired
    private OneCategoryService oneCategoryService;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private ProductInfoUtil productInfoUtil;

    /**
     * 访问主页
     * @param session
     * @param map
     * @return
     */
    @RequestMapping("/huawei")
    public String huawei(HttpSession session, ModelMap map){
        List<OneCategory> oneCategoryList=null;
        Object oneCategoryObject=session.getAttribute("oneCategoryList");//先从session获取
        if(oneCategoryObject != null){
            oneCategoryList=(List<OneCategory>)oneCategoryObject;//不为空的话就强转
        }else {
            oneCategoryList=oneCategoryService.getAllOneCategory();//为空的话就去数据库查询
            session.setAttribute("oneCategoryList", oneCategoryList);//添加到到session
        }
        //查询购物车
        Object obj=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        if(obj != null){
            UserLogin userLogin=(UserLogin)obj;
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(userLogin.getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }
        //主页查询商品，根据一级分类和 热卖，新品，精品去查寻商品。
        //1查询手机热销商品9条数据
        List<VoProduct> sellPhone= productInfoService.queryByPatternProductInfo(1,"精品",8,null);
        //2随机查询所有商品的精品20条数据
        List<VoProduct> boutiquePhone= productInfoService.queryByPatternProductInfo(0,"精品",20,sellPhone);
        //3随机查询手机20条数据
        List<VoProduct> phone= productInfoService.queryByPatternProductInfo(1,"热销",10,sellPhone);
        //4随机查询10条电脑数据
        List<VoProduct> computer= productInfoService.queryByPatternProductInfo(2,null,10,null);
        //5随机查询8条手表数据
        List<VoProduct> wrish= productInfoService.queryByPatternProductInfo(3,null,10,null);
        //6随机查询9条家居数据
        List<VoProduct> home= productInfoService.queryByPatternProductInfo(4,null,10,null);
        //7随机查询9条配件数据
        List<VoProduct> parts= productInfoService.queryByPatternProductInfo(5,null,10,null);
        map.put("oneCategoryList",oneCategoryList);
        map.put("sellPhone",sellPhone);
        map.put("boutiquePhone",boutiquePhone);
        map.put("phone",phone);
        map.put("computer",computer);
        map.put("wrish",wrish);
        map.put("home",home);
        map.put("parts",parts);
        //查询导航栏数据添加到session
        //queryPhone(session);
        return "/index";
    }

    @RequestMapping("/productDetails")
    public String productDetails(String productId,ModelMap map) {
        ProductInfo productInfo = null;
        if (productId != null) {
            productInfo = productInfoService.queryByIdProductInfo(Integer.valueOf(productId));
            map.put("productInfo", productInfo);
        }
        return null;
    }

    /**
     * 根据一级分类查询所有的商品
     * @return
     */
    @RequestMapping("/queryOCproduct")
    public String queryOCproduct(HttpServletRequest request,ModelMap map,HttpSession session,String currentPage){
        Object obj=session.getAttribute("productMap");
        if(obj ==null){
            //queryPhone(session);
            productInfoUtil.queryPhone(session);
            obj=session.getAttribute("productMap");
        }
        Map<String,List> productMap =new HashMap<>();
        productMap=( Map<String,List>) obj;
        map.put("queryPhone",productMap.get("queryPhone"));
        map.put("queryCp",productMap.get("queryCp"));
        map.put("queryWatch",productMap.get("queryWatch"));
        map.put("queryHome",productMap.get("queryHome"));
        map.put("queryParts",productMap.get("queryParts"));
        Object userObj=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        if(userObj != null){
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(((UserLogin)userObj).getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }

        if(currentPage == null){
            currentPage="1";
        }
        String oneCategoryId=request.getParameter("oneCategoryId");
        String order=(String)session.getAttribute("order");
        String by=(String)session.getAttribute("by");
        if(oneCategoryId !=null){
            //当重新调用此方法时说明原先条件需要删除twoCategoryId
            session.removeAttribute("twoCategoryId");
            session.removeAttribute("seek");
            Object oneCategoryIdObj=session.getAttribute("oneCategoryId");
            if(oneCategoryIdObj==null) {
                session.setAttribute("oneCategoryId", oneCategoryId);//讲条件添加到session
            }
            PageInfo<VoProduct> page=productInfoService.queryByOCIdProduct(Integer.valueOf(oneCategoryId),Integer.valueOf(currentPage),order,by);
            List<TwoCategory> twoCategories = productInfoService.queryCategoryName(Integer.valueOf(oneCategoryId));
            map.put("page",page);
            map.put("twoCategories",twoCategories);
            map.put("order",order);
            map.put("by",by);
            return "/Two-cotegories";
        }
        return "/404";
    }

    /**
     * 根据二级分类查询所有的商品
     * @return
     */
    @RequestMapping("/queryTCproduct")
    public String queryTCproduct(HttpServletRequest request  ,ModelMap map ,HttpSession session,String currentPage){
        Object userObj=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        if(userObj != null){
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(((UserLogin)userObj).getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }
        Object obj=session.getAttribute("productMap");
        if(obj ==null){
            //queryPhone(session);
            productInfoUtil.queryPhone(session);
            obj=session.getAttribute("productMap");
        }
        Map<String,List> productMap =new HashMap<>();
        productMap=( Map<String,List>) obj;
        map.put("queryPhone",productMap.get("queryPhone"));
        map.put("queryCp",productMap.get("queryCp"));
        map.put("queryWatch",productMap.get("queryWatch"));
        map.put("queryHome",productMap.get("queryHome"));
        map.put("queryParts",productMap.get("queryParts"));
        if(currentPage == null){
            currentPage="1";
        }
        String twoCategoryId=request.getParameter("twoCategoryId");
        String order=(String)session.getAttribute("order");
        String by=(String)session.getAttribute("by");

        if(twoCategoryId !=null){
            session.removeAttribute("oneCategoryId");//当重新调用此方法时说明原先条件需要删除twoCategoryId
            session.removeAttribute("seek");
            Object twoCategoryIdObj=session.getAttribute("twoCategoryId");
            if(twoCategoryIdObj==null) {
                session.setAttribute("twoCategoryId", twoCategoryId);
            }
            PageInfo<VoProduct> page=productInfoService.queryByTCIdProduct(Integer.valueOf(twoCategoryId),Integer.valueOf(currentPage),order,by);
            map.put("page",page);
            map.put("order",order);
            map.put("by",by);
            return "/Two-cotegories";
        }
        return "/404";
    }

    /**
     * 根据模糊查询所有商品
     * @return
     */
    @RequestMapping(value = "/queryLikeproduct")
    public String queryLikeproduct(HttpServletRequest request ,ModelMap map,HttpSession session,String currentPage){
        Object userObj=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        if(userObj != null){
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(((UserLogin)userObj).getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }
        Object obj=session.getAttribute("productMap");
        if(obj ==null){
            productInfoUtil.queryPhone(session);
            obj=session.getAttribute("productMap");
        }
        Map<String,List> productMap =new HashMap<>();
        productMap=( Map<String,List>) obj;
        map.put("queryPhone",productMap.get("queryPhone"));
        map.put("queryCp",productMap.get("queryCp"));
        map.put("queryWatch",productMap.get("queryWatch"));
        map.put("queryHome",productMap.get("queryHome"));
        map.put("queryParts",productMap.get("queryParts"));

        if(currentPage == null){
            currentPage="1";
        }
        String seek=request.getParameter("seek");
        String order=(String)session.getAttribute("order");
        String by=(String)session.getAttribute("by");
        if(seek !=null){
            session.removeAttribute("oneCategoryId");//当重新调用此方法时说明原先条件需要删除twoCategoryId
            session.removeAttribute("twoCategoryId");
            Object seekObj=session.getAttribute("seek");
            if(seekObj==null) {
                session.setAttribute("seek", seek);
            }
            try {
                seek = java.net.URLDecoder.decode(seek,"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            String newProductName="%"+seek+"%";
            PageInfo<VoProduct> page=productInfoService.queryLikeIdProduct(newProductName,Integer.valueOf(currentPage),order,by);
            map.put("page",page);
            map.put("order",order);
            map.put("by",by);
            return "/Two-cotegories";
        }
        return "/404";
    }
    @RequestMapping("/productPage")
    public String productPage(HttpServletRequest request,HttpSession session,ModelMap map){

        String currentPage=request.getParameter("currentPage");
        if(currentPage == null){
            currentPage="1";
        }
        Object oneCategoryId= session.getAttribute("oneCategoryId");
        Object twoCategoryId=session.getAttribute("twoCategoryId");
        Object seek=session.getAttribute("seek");
        if(oneCategoryId != null){
            return "redirect:/queryOCproduct?oneCategoryId="+oneCategoryId+"&currentPage="+currentPage;
        }else if(twoCategoryId != null){
            return "redirect:/queryTCproduct?twoCategoryId="+twoCategoryId+"&currentPage="+currentPage;
        }else if(seek != null){
            String newseek=(String)seek;
            try {
                newseek = java.net.URLEncoder.encode(newseek,"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            return "redirect:/queryLikeproduct?seek="+newseek+"&currentPage="+currentPage;
        }
        return null;
    }

    /**
     * 排序方式
     * @return
     */
    @RequestMapping("/orderBy")
    public String orderBy(HttpSession session,HttpServletRequest request){
        session.removeAttribute("order");
        session.removeAttribute("by");
        String order=request.getParameter("order");
        String by=request.getParameter("by");
        session.setAttribute("order",order);
        session.setAttribute("by",by);
        return "redirect:/productPage";
    }

    /**
     * 根据商品id查询商品详情
     * @param productId
     * @param map
     * @param session
     * @return
     */
    @RequestMapping("/queryByIdProduct")
    public String queryByIdProductInfo(String productId ,ModelMap map,HttpSession session){
        Object obj=session.getAttribute("productMap");
        if(obj ==null){
            productInfoUtil.queryPhone(session);
            obj=session.getAttribute("productMap");
        }
        Object userObj=session.getAttribute("userLogin");
        if(userObj != null){
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(((UserLogin)userObj).getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }
        Map<String,List> productMap =new HashMap<>();
        productMap=( Map<String,List>) obj;
        map.put("queryPhone",productMap.get("queryPhone"));
        map.put("queryCp",productMap.get("queryCp"));
        map.put("queryWatch",productMap.get("queryWatch"));
        map.put("queryHome",productMap.get("queryHome"));
        map.put("queryParts",productMap.get("queryParts"));
        session.removeAttribute("productInfo");
        if(productId != null){
            ProductInfo productInfo=productInfoService.queryByIdProductInfo(Integer.valueOf(productId));
            map.put("productInfo",productInfo);
            session.setAttribute("productInfo",productInfo);
        }
        return  "product-details";
    }
    @RequestMapping("page")
    public String pageProduct(){
        return null;
    }
}
