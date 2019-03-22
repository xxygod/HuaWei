package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 商品图片片表
 */
public class PictureInfo implements Serializable {
    private static final long serialVersionUID = 8160874621239174189L;
    private int pictureId;//id
    private ProductInfo productInfo;//商品id
    private String productUrl;//商品图片地
    private int pictureOrder;//详情介绍图片排序

    public int getPictureId() {
        return pictureId;
    }

    public void setPictureId(int pictureId) {
        this.pictureId = pictureId;
    }

    public ProductInfo getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(ProductInfo productInfo) {
        this.productInfo = productInfo;
    }

    public String getProductUrl() {
        return productUrl;
    }

    public void setProductUrl(String productUrl) {
        this.productUrl = productUrl;
    }

    public int getPictureOrder() {
        return pictureOrder;
    }

    public void setPictureOrder(int pictureOrder) {
        this.pictureOrder = pictureOrder;
    }
}
