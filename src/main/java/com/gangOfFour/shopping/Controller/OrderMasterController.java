package com.gangOfFour.shopping.Controller;

import com.gangOfFour.shopping.Controller.util.ProductInfoUtil;
import com.gangOfFour.shopping.pojo.OrderMaster;
import com.gangOfFour.shopping.pojo.ShoppingCart;
import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.OrderMasterService;
import com.gangOfFour.shopping.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/userManager")
public class OrderMasterController {
    @Autowired
    private OrderMasterService orderMasterService;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private ProductInfoUtil productInfoUtil;

    /**
     * 查询订单
     * @param session
     * @param request
     * @param map
     * @return
     */
    @RequestMapping("/queryOrder")
    public String queryOrderUnpaidDetail(HttpSession session, HttpServletRequest request ,ModelMap map){
        String opr=request.getParameter("opr");
        Object userObj=session.getAttribute("userLogin");
        int unpaidNumber=0;
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
        map.put("unpaidNumber",unpaidNumber);
        if(userObj != null){
            if(opr.equals("unpaid")){//未支付的订单
                List<OrderMaster> orderMasterList= orderMasterService.queryUnpaidDetail(((UserLogin)userObj).getLoginId(),"unpaid");
                map.put("orderMasterList",orderMasterList);
                map.put("status","unpaid");
            }else if(opr.equals("order")){//查询全部订单
                List<OrderMaster> orderMasterList= orderMasterService.queryUnpaidDetail(((UserLogin)userObj).getLoginId(),"order");
                map.put("orderMasterList",orderMasterList);
                map.put("status","order");
            }else if(opr.equals("take")){//查询待收货的订单
                List<OrderMaster> orderMasterList= orderMasterService.queryUnpaidDetail(((UserLogin)userObj).getLoginId(),"take");
                map.put("orderMasterList",orderMasterList);
                map.put("status","take");
            }else if(opr.equals("accomplish")){//查询已完成的订单
                List<OrderMaster> orderMasterList= orderMasterService.queryUnpaidDetail(((UserLogin)userObj).getLoginId(),"accomplish");
                map.put("orderMasterList",orderMasterList);
                map.put("status","accomplish");
            }else if(opr.equals("cancel")){//查询已取消的订单
                List<OrderMaster> orderMasterList= orderMasterService.queryUnpaidDetail(((UserLogin)userObj).getLoginId(),"cancel");
                map.put("orderMasterList",orderMasterList);
                map.put("status","cancel");
            }
        }
        return "/userManager/order";
    }
}
