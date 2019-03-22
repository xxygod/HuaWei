package com.gangOfFour.shopping.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 颜色中间表
 *
 */
public class ColorCentre implements Serializable {
    private static final long serialVersionUID = -7208142772099058115L;
    private int colorCentreId;//颜色中间表的id
    private ProductInfo productInfo;//商品的id
    private ProductColor productColor;//商品颜色
    private List<VerCentre> verCentres=new ArrayList<>();
    private List<PictureColor> pictureColors=new ArrayList<>();//图片颜色集合

    public int getColorCentreId() {
        return colorCentreId;
    }

    public void setColorCentreId(int colorCentreId) {
        this.colorCentreId = colorCentreId;
    }

    public ProductInfo getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(ProductInfo productInfo) {
        this.productInfo = productInfo;
    }

    public ProductColor getProductColor() {
        return productColor;
    }

    public void setProductColor(ProductColor productColor) {
        this.productColor = productColor;
    }

    public List<VerCentre> getVerCentres() {
        return verCentres;
    }

    public void setVerCentres(List<VerCentre> verCentres) {
        this.verCentres = verCentres;
    }

    public List<PictureColor> getPictureColors() {
        return pictureColors;
    }

    public void setPictureColors(List<PictureColor> pictureColors) {
        this.pictureColors = pictureColors;
    }
}
