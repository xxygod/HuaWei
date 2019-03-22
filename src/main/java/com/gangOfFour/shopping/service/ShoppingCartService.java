package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCartService {
    List<ShoppingCart> selectByLoginIdShoppingCart(int loginId);
    /**
     * 根据购物车id修改商品数量
     * @param list
     * @return
     */
    boolean modifyById(List<ShoppingCart> list);

    /**
     * 根据id移除商品
     * @param shoppingCartId
     * @return
     */
    int removeByIdCart(int shoppingCartId);

    /**
     * 新增购物车商品
     * @param verCentreId 版本id
     * @param number  数量
     * @param loginId  买家id
     * @return
     */
    boolean insertShoppingCert(int verCentreId,int number,int loginId,int productColorId );

    /**
     * 根据list去查询集合
     * @param shoppingCarts
     * @return
     */
    List<ShoppingCart> queryListShoppingCart(List shoppingCarts);
}
