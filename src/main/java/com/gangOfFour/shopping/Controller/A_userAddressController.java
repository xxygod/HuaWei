package com.gangOfFour.shopping.Controller;

import com.gangOfFour.shopping.pojo.UserAddress;
import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.UserAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class A_userAddressController {

    @Autowired
    private UserAddressService userAddressService;

    /**
     * 查当前用户的收货地址
     * @param map
     * @param httpsession
     * @return
     */
    @RequestMapping("/queryUA")
    public String queryUA(ModelMap map,HttpSession httpsession){
        Object obj = httpsession.getAttribute("userLogin");

        if(obj != null){
            UserLogin userLogin = (UserLogin)obj;
            int loginId = userLogin.getLoginId();
            List<UserAddress> userAddress = userAddressService.queryUserAddress(loginId);
            map.put("userAddress",userAddress);
        }
        return "/userManager/address";
    }

    /**
     * 新增用户地址
     * @param session
     * @param request
     * @return
     */
    @RequestMapping("/addUA")
    public String addUA(HttpSession session, HttpServletRequest request){
        String addressId =  request.getParameter("addressId");
        String consignee = request.getParameter("consignee");
        String phone = request.getParameter("phone");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String district = request.getParameter("district");
        String address = request.getParameter("address");
        String code = request.getParameter("code");
        String nn = request.getParameter("defaultFlag");

        UserAddress userAddress = new UserAddress();

        userAddress.setAddress(address);
        userAddress.setCity(city);
        userAddress.setCode(code);
        userAddress.setConsignee(consignee);
        userAddress.setDistrict(district);
        userAddress.setPhone(phone);
        userAddress.setProvince(province);
        UserLogin userLogin = (UserLogin)session.getAttribute("userLogin");
        if(addressId .equals("")){
            if(nn!=null){
                userAddress.setLoginId(userLogin.getLoginId());
                userAddressService.modifyDefault(userLogin.getLoginId());
                userAddress.setIsDefault(1);
                userAddressService.saveAddress(userAddress);

            }else{
                userAddress.setLoginId(userLogin.getLoginId());
                userAddress.setIsDefault(0);
                userAddressService.saveAddress(userAddress);

            }
            return "redirect:/queryUA";
        }else{
            if(nn!=null){
                userAddress.setLoginId(userLogin.getLoginId());
                userAddress.setAddressId(Integer.valueOf(addressId));
                userAddressService.modifyDefault(userLogin.getLoginId());
                userAddress.setIsDefault(1);
                userAddressService.modifiUserAddress(userAddress);

            }else{
                userAddress.setLoginId(userLogin.getLoginId());
                userAddress.setAddressId(Integer.valueOf(addressId));
                userAddress.setIsDefault(0);
                userAddressService.modifiUserAddress(userAddress);

            }
            return "redirect:/queryUA";
        }

    }

    @RequestMapping("/toaddress")
    public String toaddress(HttpServletRequest request,ModelMap map,HttpSession session){
        String addressId = request.getParameter("addressId");
        UserAddress userAddres = userAddressService.queryByIdUserAddress(Integer.valueOf(addressId));
        map.put("userAddres",userAddres);
        Object obj = session.getAttribute("userLogin");
        if(obj != null){
            UserLogin userLogin = (UserLogin)obj;
            int loginId = userLogin.getLoginId();
            List<UserAddress> userAddress = userAddressService.queryUserAddress(loginId);
            map.put("userAddress",userAddress);
        }
        return "/userManager/address";
    }

    @RequestMapping("/toaddres")
    public String toaddres(HttpServletRequest request){
        String addressId =  request.getParameter("addressId");
        userAddressService.removeAddress(Integer.valueOf(addressId));
        return "redirect:/queryUA";
    }

}



















