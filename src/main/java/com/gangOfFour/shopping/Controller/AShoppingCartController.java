package com.gangOfFour.shopping.Controller;

import com.alibaba.fastjson.JSONObject;
import com.gangOfFour.shopping.pojo.ShoppingCart;
import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/userManager")
@Controller
public class AShoppingCartController {
    @Autowired
    private ShoppingCartService shoppingCartService;
    @RequestMapping("/queryAllCart")
    public String queryAllCart(ModelMap map, HttpSession session){
        //跳到购物车页面
        Object obj=session.getAttribute("userLogin");
        //只有登录了才去查询购物车
        if(obj != null){
            UserLogin userLogin=(UserLogin)obj;
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            List<ShoppingCart> shoppingCarts=shoppingCartService.selectByLoginIdShoppingCart(userLogin.getLoginId());
            map.put("shoppingCarts",shoppingCarts);
        }else{
            return "/login1";
        }
        return "/userManager/shoppingCart";
    }
    @RequestMapping("/addNumber")
    @ResponseBody
    public String addNumber(HttpServletRequest request){
        JSONObject json = new JSONObject();
        Object id=request.getParameter("id");
        Object number=request.getParameter("number");
        List<ShoppingCart> list=new ArrayList<>();
        if(id != null && number !=null){
            String[] newId=((String)id).split(",");
            String[] newNumber=((String)number).split(",");
            if(newId.length==newNumber.length){
                for(int i=0;i<newId.length;i++){
                    ShoppingCart shoppingCart=new ShoppingCart();
                    shoppingCart.setShoppingCartId(Integer.valueOf(newId[i]));
                    shoppingCart.setProductNumber(Integer.valueOf(newNumber[i]));
                    list.add(shoppingCart);
                }
                shoppingCartService.modifyById(list);
            }else{
                //报错误页面，数据异常
            }
            json.put("y","修改成功");
            return json.toString();
        }else{
            json.put("n","数据异常");
            return json.toString();
        }
    }
    @RequestMapping("/deleteCart")
    @ResponseBody
    public String deleteCart(HttpServletRequest request){

        JSONObject json = new JSONObject();
        String cartId=request.getParameter("cartId");
        if(cartId != null){
            shoppingCartService.removeByIdCart(Integer.valueOf(cartId));
        }
        json.put("y","删除成功");
        return json.toString();
    }

    /**
     * 购物车添加商品
     * @return
     */
    @RequestMapping("/addShoppingCart")
    @ResponseBody
    public String addShoppingCart(HttpServletRequest request,HttpSession session){
        JSONObject json = new JSONObject();
        String id=request.getParameter("verCentreId");
        String num=request.getParameter("number");
        Object obj=session.getAttribute("userLogin");
        String colorId=request.getParameter("colorId");
        if(obj !=null) {
            if (id != null && num != null) {
                boolean con=shoppingCartService.insertShoppingCert(Integer.valueOf(id), Integer.valueOf(num),((UserLogin)obj).getLoginId(),Integer.valueOf(colorId));
                if (con){
                    //添加成功
                    json.put("y","添加成功");
                    return json.toString();
                }else{
                    //添加失败
                }
            }
        }
        json.put("s","请先登录");
        return json.toString();
    }
}
