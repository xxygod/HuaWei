package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.ColorCentreDao;
import com.gangOfFour.shopping.dao.ProductInfoDao;
import com.gangOfFour.shopping.dao.ShoppingCartDao;
import com.gangOfFour.shopping.dao.VerCentreDao;
import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
    @Autowired
    private ShoppingCartDao shoppingCartDao;
    @Autowired
    private ColorCentreDao colorCentredao;
    @Autowired
    private VerCentreDao verCentredao;
    @Override
    public List<ShoppingCart> selectByLoginIdShoppingCart(int loginId) {
        return shoppingCartDao.selectByLoginIdShoppingCart(loginId);
    }

    @Override
    public boolean modifyById(List<ShoppingCart> list) {
        for(int i=0;i<list.size();i++){
            shoppingCartDao.updateById(list.get(i));
        }
        return true;
    }

    @Override
    public int removeByIdCart(int shoppingCartId) {
        return shoppingCartDao.deleteByIdCart(shoppingCartId);
    }

    @Override
    @Transactional
    public boolean insertShoppingCert(int verCentreId, int number, int loginId,int productColorId) {
        int con =0;
        VerCentre verCentre=verCentredao.selectByIdProductInfo(verCentreId);
        //先去查询商品有没有添加过
        ShoppingCart cart=shoppingCartDao.selectByLoginIdCart(loginId,verCentre.getColorCentre().getProductInfo().getProductId(),productColorId,verCentre.getProVersions().getProVersionsId());
        if(cart != null){
            cart.setProductNumber(cart.getProductNumber()+number);
            con=shoppingCartDao.updateById(cart);
        }else {
            ShoppingCart shoppingCart = new ShoppingCart();
            UserLogin userLogin = new UserLogin();
            userLogin.setLoginId(loginId);
            ProductInfo productInfo = new ProductInfo();
            productInfo.setProductId(verCentre.getColorCentre().getProductInfo().getProductId());
            ProVersions proVersions = new ProVersions();
            proVersions.setProVersionsId(verCentre.getProVersions().getProVersionsId());
            ProductColor productColor = new ProductColor();
            productColor.setProductColorId(productColorId);

            shoppingCart.setProductNumber(number);
            shoppingCart.setProductPrice(verCentre.getProductPrice());
            shoppingCart.setUserLogin(userLogin);
            shoppingCart.setProVersions(proVersions);
            shoppingCart.setProductColor(productColor);
            shoppingCart.setProductInfo(productInfo);
            con=shoppingCartDao.insertShoppingCert(shoppingCart);
        }
        if(con >0)
            return true;
        return false;
    }

    @Override
    public List<ShoppingCart> queryListShoppingCart(List shoppingCarts) {
        return shoppingCartDao.selectListShoppingCart(shoppingCarts);
    }
}
