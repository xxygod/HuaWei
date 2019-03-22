package com.gangOfFour.shopping.Controller;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.gangOfFour.shopping.pojo.ShoppingCart;
import com.gangOfFour.shopping.pojo.UserAddress;
import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.OrderMasterService;
import com.gangOfFour.shopping.service.ShoppingCartService;
import com.gangOfFour.shopping.service.UserAddressService;
import com.gangOfFour.shopping.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
@Controller
@RequestMapping("userManager")
public class AOrderDetailController {
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private UserAddressService userAddressService;
    @Autowired
    private OrderMasterService orderMasterService;
    @Autowired
    private UserLoginService userLoginService;
    @RequestMapping("/toShoppingCarts")
    @ResponseBody
    public String toShoppingCarts(HttpServletRequest request){
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
    @RequestMapping("/queryListCart")
    public String queryListCart(HttpServletRequest request, ModelMap map, HttpSession session){
        Object userAddressObj=session.getAttribute("userLogin");
        if(userAddressObj!=null){
            UserLogin userLogin=(UserLogin)userAddressObj;
            List<UserAddress> userAddresses=userAddressService.queryUserAddress(userLogin.getLoginId());
            map.put("userAddresses",userAddresses);
        }
        Object carts=request.getParameter("carts");
        List<Integer> list=new ArrayList<>();
        if(carts !=null){
            String[] newCarts=((String) carts).split(",");
            for(int i=0;i<newCarts.length;i++){
                if(!newCarts[i].equals("")) {
                    list.add(Integer.valueOf(newCarts[i]));
                }
            }
        }
        session.removeAttribute("shoppingCarts");
        List<ShoppingCart> shoppingCarts=shoppingCartService.queryListShoppingCart(list);
        session.setAttribute("shoppingCarts",shoppingCarts);
        map.put("shoppingCarts",shoppingCarts);
        return "/userManager/sure-order";
    }

    /**
     * 添加订单
     * @param session
     * @param addressId
     * @param taotalMoney
     * @param map
     * @return
     */
    @RequestMapping("/addOrder")
    public String addOrder(HttpSession session,String addressId,String taotalMoney,ModelMap map){
        List<ShoppingCart> shoppingCarts=(List<ShoppingCart>) session.getAttribute("shoppingCarts");
        UserLogin userLogin=(UserLogin)session.getAttribute("userLogin");
        if(addressId != null){
            String oriderNo=orderMasterService.addOrderMaster(shoppingCarts,userLogin,Integer.valueOf(addressId));
            if(oriderNo !=null){
                session.removeAttribute("taotalMoney");
                session.removeAttribute("oriderNo");
                map.put("taotalMoney",taotalMoney);
                session.setAttribute("taotalMoney",taotalMoney);
                session.setAttribute("oriderNo",oriderNo);
                return "/userManager/submit-success";
            }
        }
        return null;
    }

    /**
     * 用户支付
     * @param httpRequest
     * @param httpResponse
     * @param session
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/zhifu")
    public void zhifu(HttpServletRequest httpRequest,HttpServletResponse httpResponse,HttpSession session) throws ServletException, IOException {
        String prive="MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCMS+sO/X72Ky987RZnfk/QHg9Tb8nWGDHFIHFD0InGzAreCeV6GXJD3+kKsnCUZjNqCR671rqYh937DUFwmhFx+QAVQNly7AOFuQVNu9jpjBihe3HdAMLuJvSAGKa4oVW6g+i+W7MFA5Edx9W2jQLji/zsIpA+5GnLNPxXYJazDe+dHrnMbxQMRCk9ba1IJMrDrhvZtNSQkL+9i6Ik2zlKnNTYQacPk5yR71K0YRkcrkWTv6YhEESXdtGrLn2lScJskSn+bJSxUY4IhG6Im1dpNrpIZxPJEN3pmhXrLfjbO61lopJiopQ0waV32LqkYxyHQ3+/yDYd6BdTCvu/jL2TAgMBAAECggEAMuvfPkqeCWV1UAeRqTC8cVJnx6X8gTu43M7ArZeEWmZ2z06SPvX7dk1P/XT0zbgmkycKQ61VfsVZuaR/CwqwqEhzUkN+aWrmgGO+XA+BVItn6TywAEIlfmEfP1szMDJGtnLoSCdqW7iGtGNy21ZlJQgLXf3RkzI+f+YUbPZ+3C/450UiPfXrFdOiDZ2Ba+jqwL4lCBKELYfxE4hU99gMWZHwDacLPbfbl4FV2/lXc5YyglCpsjzPXbnWShd+iuRduPT77AsbSa6W5VvISlujGSdditRvV/ZoLXB4Bh+lZHZtv/2HJMkrsLqf21mTa30DI/6yYwrVkdQkPhaSdzu6yQKBgQDYuk55HK4zqLM353omdMgiCX6CfPpqJ9g5Px8RKEp1G1K3emS3QCHmUsABixN83p8i61ih6Zj7ocaaL7hfarkv/ioel1n0XtBl8JWduFw4uFWPclIu7CEH7Gy/4y5kun0B9cUmcdgcHDnsNcxGSkaKxA6xd32J6XLSZXb1DquodwKBgQCluBOTS8gj96gls6xQGzIkLxX6DB0R4730J8X74qvoDyaJ+6V1d+oP4ZC+PlSO4GZO2kMBjznhWK/9lR7qgygYzeuHPiTVEewHlN0dnGJnd5DifaNk6D1lvbdgqGxIKBCklnSCrX3ZGLAu45AUFWa0Cj0I5WKGncIkistONS02xQKBgBbxkkEsEh0R7PcsIDhWAKHp02TJClGWqkNVNVrBozBGljkqUeM8fNo/RGhlasi7YKl3tMhfTHzHIZlNF/2x9KzqAVd/ulwudW11TMGHtOukSBqJhb3F7bFDDDg8OrsbKwS8GgT55GEFc/RXtapzToh+PPf4qGejOS6g4zkKNo39AoGAe6XMHVQm4gdQU8kq4Z5ZHDxxtl9BdW6q9biTdaycPYrIY536x5oQb4cLG5egOfbe/yjFZC18r1IgBiI0rh/sVA2ZFhDdJIm5xbJiBU0A81h4JzY9KvZJkVcrsxgXqwMR3+xOxI40Xz6XfnTWtNV/Cwi0n6WfjPe6us9AgHsW4E0CgYEAxGXp60t2MiAMMPNQ2VhSItDJa56tGrUsu3IcPFMNRoQvZvvTS/F804asIoz7/K/MEYxfb7lsGBCEc5EGvshtRlKdko9SaGOYqxSuPV0uxhpeA4SzWUyNgvt7EH33cDDiKMBJt6l+dNBal5KK1ElKUY5ZsykuOrHChoGALSmcvaA=";
        String publi="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjEvrDv1+9isvfO0WZ35P0B4PU2/J1hgxxSBxQ9CJxswK3gnlehlyQ9/pCrJwlGYzagkeu9a6mIfd+w1BcJoRcfkAFUDZcuwDhbkFTbvY6YwYoXtx3QDC7ib0gBimuKFVuoPovluzBQORHcfVto0C44v87CKQPuRpyzT8V2CWsw3vnR65zG8UDEQpPW2tSCTKw64b2bTUkJC/vYuiJNs5SpzU2EGnD5Ocke9StGEZHK5Fk7+mIRBEl3bRqy59pUnCbJEp/myUsVGOCIRuiJtXaTa6SGcTyRDd6ZoV6y342zutZaKSYqKUNMGld9i6pGMch0N/v8g2HegXUwr7v4y9kwIDAQAB";
        AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipaydev.com/gateway.do", "2016092300576562", prive, "json", "UTF-8", publi, "RSA2");
        //获得初始化的AlipayClient
        AlipayTradeWapPayRequest alipayRequest = new AlipayTradeWapPayRequest();
        //创建API对应的request
        alipayRequest.setReturnUrl("http://localhost:8080/userManager/modifyPayStatus");
       /* alipayRequest.setNotifyUrl("<script>\n" +
                "    window.location.href=\"http://localhost:8080/userManager/modifyPayStatus\";\n" +
                "</script>");*/
        //在公共参数中设置回跳和通知地址
        String opr=httpRequest.getParameter("opr");
        Object out_trade_no;
        Object total_amount;
        if(opr.equals("1")){
            out_trade_no= session.getAttribute("oriderNo");
            total_amount= session.getAttribute("taotalMoney");
        }else{
            out_trade_no=httpRequest.getParameter("orderNo");
            String taotalMoney =  httpRequest.getParameter("taotalMoney");
            session.removeAttribute("oriderNo");
            session.setAttribute("oriderNo",out_trade_no);
            String districtMoney= httpRequest.getParameter("districtMoney");
            BigDecimal newTaotalMoney=new BigDecimal(taotalMoney);
            BigDecimal newDistrictMoney=new BigDecimal(districtMoney);
            total_amount=newTaotalMoney.subtract(newDistrictMoney);
        }
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("out_trade_no",out_trade_no);
        jsonObject.put("total_amount",total_amount);
        jsonObject.put("subject",out_trade_no);
        jsonObject.put("product_code","QUICK_WAP_PAY");
        alipayRequest.setBizContent(jsonObject.toString());
        //填充业务参数
        String form="";
        try {
            form = alipayClient.pageExecute(alipayRequest).getBody();
            //调用SDK生成表单}
        }catch (AlipayApiException e) {
            e.printStackTrace();
        }
        httpResponse.setContentType("text/html;charset=utf-8");
        httpResponse.setCharacterEncoding("utf-8");
        httpResponse.getWriter().write(form);
        //直接将完整的表单html输出到页面
        httpResponse.getWriter().flush();
        httpResponse.getWriter().close();
    }
    /**
     * 修改订单状态
     * 修改用户积分
     * @param session
     * @return
     */
    @RequestMapping("/modifyPayStatus")
    public String modifyPayStatus(HttpSession session){
        String oriderNo=(String)session.getAttribute("oriderNo");
        session.removeAttribute("oriderNo");
        UserLogin userLogin=(UserLogin)session.getAttribute("userLogin");
        orderMasterService.modifyPayStatus(oriderNo,userLogin);
        session.setAttribute("userLogin",userLoginService.login(((UserLogin) session.getAttribute("userLogin")).getLoginName(),((UserLogin) session.getAttribute("userLogin")).getLoginPassword()));
        return "/userManager/payment-success";
    }
}
