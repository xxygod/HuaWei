package com.gangOfFour.shopping.vo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 用来展示在主页和分类页面数据的类
 */
public class VoProduct implements Serializable {
    private static final long serialVersionUID = 4447060655352252045L;
    private Integer productId;
    private String productName;
    private String logo;
    private String pattern;  //销售模式
    private BigDecimal productPrice;//商品价格

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    public BigDecimal getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }
}
