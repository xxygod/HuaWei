package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingCartDao {
    List<ShoppingCart> selectByLoginIdShoppingCart(@Param("loginId") int loginId);

    /**
     * 根据购物车id修改商品数量
     * @param shoppingCart
     * @return
     */
    int updateById(ShoppingCart shoppingCart);

    /**
     * 根据购物车的id删除商品
     * @param shoppingCartId
     * @return
     */
    int deleteByIdCart(@Param("shoppingCartId") int shoppingCartId);

    /**
     *  新增购物车商品；
     * @param shoppingCart
     * @return
     */
    int insertShoppingCert(ShoppingCart shoppingCart);

    /**
     * 添加商品时先查询购物车有没有添加过这商品
     * @param loginId
     * @param productId
     * @return
     */
    ShoppingCart selectByLoginIdCart(@Param("loginId") int loginId,@Param("productId")int productId,@Param("productColorId")int productColorId ,@Param("proVersionsId")int proVersionsId);

    /**
     * 如果已添加这个商品后只需要添加数量
     * @param shoppingCart
     * @return
     */
    int updateBySCIdCart(ShoppingCart shoppingCart);

    /**
     * 根据list去查询商品的集合
     * @param shoppingCarts
     * @return
     */
    List<ShoppingCart> selectListShoppingCart(@Param("shoppingCarts") List shoppingCarts);
}
