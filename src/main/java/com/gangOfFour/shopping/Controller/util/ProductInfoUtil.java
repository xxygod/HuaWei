package com.gangOfFour.shopping.Controller.util;

import com.gangOfFour.shopping.service.ProductInfoService;
import com.gangOfFour.shopping.vo.VoProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Component
public class ProductInfoUtil {
    @Autowired
    private ProductInfoService productInfoService;

    /**
     * 查询导航栏的公共方法
     * @param session
     */
    public void queryPhone(HttpSession session){
        Map<String,List> productMap =new HashMap<>();
        List<VoProduct> queryPhone = productInfoService.queryByPatternProductInfo(1, null, 7, null);
        List<VoProduct> queryCp = productInfoService.queryByPatternProductInfo(2, null, 7, null);
        List<VoProduct> queryWatch = productInfoService.queryByPatternProductInfo(3, null, 7, null);
        List<VoProduct> queryHome = productInfoService.queryByPatternProductInfo(4, null, 7, null);
        List<VoProduct> queryParts = productInfoService.queryByPatternProductInfo(5, null, 7, null);
        productMap.put("queryPhone",queryPhone);
        productMap.put("queryCp",queryCp);
        productMap.put("queryWatch",queryWatch);
        productMap.put("queryHome",queryHome);
        productMap.put("queryParts",queryParts);
        session.setAttribute("productMap",productMap);
    }
}
