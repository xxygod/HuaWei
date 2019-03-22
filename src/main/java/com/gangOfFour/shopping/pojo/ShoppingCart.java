package com.gangOfFour.shopping.pojo;



import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 购物车表
 */
public class ShoppingCart implements Serializable {
    private static final long serialVersionUID = 4664245605480852179L;
    private Integer shoppingCartId;  //购物车的id
    private UserLogin userLogin;   //登录人的id
    private ProductInfo productInfo;  //商品id
    private Integer productNumber;   //商品数量
    private BigDecimal productPrice;//单价
    private ProductColor productColor;//颜色中间表
    private ProVersions proVersions;//版本中间表

    public Integer getShoppingCartId() {
        return shoppingCartId;
    }

    public void setShoppingCartId(Integer shoppingCartId) {
        this.shoppingCartId = shoppingCartId;
    }

    public UserLogin getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(UserLogin userLogin) {
        this.userLogin = userLogin;
    }

    public ProductInfo getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(ProductInfo productInfo) {
        this.productInfo = productInfo;
    }

    public Integer getProductNumber() {
        return productNumber;
    }

    public void setProductNumber(Integer productNumber) {
        this.productNumber = productNumber;
    }

    public BigDecimal getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    public ProductColor getProductColor() {
        return productColor;
    }

    public void setProductColor(ProductColor productColor) {
        this.productColor = productColor;
    }

    public ProVersions getProVersions() {
        return proVersions;
    }

    public void setProVersions(ProVersions proVersions) {
        this.proVersions = proVersions;
    }
}
