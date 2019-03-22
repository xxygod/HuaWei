package com.gangOfFour.shopping.Controller;

import com.gangOfFour.shopping.Controller.util.ProductInfoUtil;
import com.gangOfFour.shopping.pojo.ShoppingCart;
import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.OrderMasterService;
import com.gangOfFour.shopping.service.ProductInfoService;
import com.gangOfFour.shopping.service.ShoppingCartService;
import com.gangOfFour.shopping.service.UserLoginService;
import com.gangOfFour.shopping.vo.VoProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class A_userController {
  //注入service
    @Autowired
    private UserLoginService userLoginService;
    @Autowired
    private ProductInfoUtil productInfoUtil;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private OrderMasterService orderMasterService;
    @Autowired
    ProductInfoService productInfoService;
    @RequestMapping("save")
    public String saveUser(UserLogin userLogin,HttpSession session){

        String loginName = userLogin.getLoginName();

        if(userLoginService.selectUserByName(loginName) == null){
            userLogin.setScreenName(userLogin.getLoginName());
            userLoginService.saveUser(userLogin);
            return "redirect:/huawei";
        }else {
            session.setAttribute("msg","注册失败!");
            return "error-public";
        }
    }
    @RequestMapping("login1")
    public String selectUserByNameAndPwd(String loginName,String loginPassword,HttpSession session){
        UserLogin userLogin = userLoginService.selectUserByNameAndPwd(loginName,loginPassword);
        if(userLogin != null){
            session.setAttribute("msg","登录成功");
            session.setAttribute("userLogin",userLogin);
            return "redirect:/huawei";
        }else {
            session.setAttribute("msg","登录失败");
            return "login1";
        }
    }
    @RequestMapping("/userManager/details")
    public String userDetail(HttpSession session,ModelMap map){
        Object userObj=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        int unpaidNumber=0;
        int  receivingNumber=0;
        int stocksNumber=0;
        if(userObj != null){
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(((UserLogin)userObj).getLoginId());
            map.put("shoppingCarts",shoppingCarts);
            unpaidNumber=orderMasterService.queryUnpaidNumber(((UserLogin)userObj).getLoginId());
            receivingNumber=orderMasterService.selectReceivingNumber(((UserLogin)userObj).getLoginId());
            stocksNumber=orderMasterService.selectStocksNumber(((UserLogin)userObj).getLoginId());
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
        map.put("unpaidNumber",unpaidNumber);
        map.put("receivingNumber",receivingNumber);
        map.put("stocksNumber",stocksNumber);
        return "/userManager/details";
    }
    @RequestMapping("/userManager/jifen")
    public String jifen(HttpSession session ,ModelMap map){
        Object obj=session.getAttribute("productMap");
        if(obj ==null){
            productInfoUtil.queryPhone(session);
            obj=session.getAttribute("productMap");
        }
        Object obj1=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        if(obj1 != null){
            UserLogin userLogin=(UserLogin)obj1;
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(userLogin.getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }
        Map<String,List> productMap =new HashMap<>();
        productMap=( Map<String,List>) obj;
        map.put("queryPhone",productMap.get("queryPhone"));
        map.put("queryCp",productMap.get("queryCp"));
        map.put("queryWatch",productMap.get("queryWatch"));
        map.put("queryHome",productMap.get("queryHome"));
        map.put("queryParts",productMap.get("queryParts"));
        return"/userManager/integral";
    }

}
















