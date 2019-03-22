package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 商品颜色
 */
public class ProductColor implements Serializable {
    private static final long serialVersionUID = -1904372301338017749L;
    private Integer productColorId;//id
    private String productColorName;//颜色名字

    public Integer getProductColorId() {
        return productColorId;
    }

    public void setProductColorId(Integer productColorId) {
        this.productColorId = productColorId;
    }

    public String getProductColorName() {
        return productColorName;
    }

    public void setProductColorName(String productColorName) {
        this.productColorName = productColorName;
    }
}
