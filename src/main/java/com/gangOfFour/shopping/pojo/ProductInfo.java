package com.gangOfFour.shopping.pojo;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 商品详情
 */
public class ProductInfo implements Serializable {

    private static final long serialVersionUID = -241285725928115644L;
    private Integer productId;//id
    private String productCore;//商品编码
    private String productName;//商品名字
    private OneCategory oneCategory;//一级分类
    private TwoCategory twoCategory;//二级分类
    private Integer productAudit;//商品审核
    private String productDate;//商品的生产日期
    private String pattern;//销售模式
    private String logo;//主图标
    private List<ColorCentre> colorCentres=new ArrayList<>();
    private List<PictureInfo> pictureInfos=new ArrayList<>();

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductCore() {
        return productCore;
    }

    public void setProductCore(String productCore) {
        this.productCore = productCore;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public OneCategory getOneCategory() {
        return oneCategory;
    }

    public void setOneCategory(OneCategory oneCategory) {
        this.oneCategory = oneCategory;
    }

    public TwoCategory getTwoCategory() {
        return twoCategory;
    }

    public void setTwoCategory(TwoCategory twoCategory) {
        this.twoCategory = twoCategory;
    }

    public Integer getProductAudit() {
        return productAudit;
    }

    public void setProductAudit(Integer productAudit) {
        this.productAudit = productAudit;
    }

    public String getProductDate() {
        return productDate;
    }

    public void setProductDate(String productDate) {
        this.productDate = productDate;
    }

    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public List<ColorCentre> getColorCentres() {
        return colorCentres;
    }

    public void setColorCentres(List<ColorCentre> colorCentres) {
        this.colorCentres = colorCentres;
    }

    public List<PictureInfo> getPictureInfos() {
        return pictureInfos;
    }

    public void setPictureInfos(List<PictureInfo> pictureInfos) {
        this.pictureInfos = pictureInfos;
    }
}
