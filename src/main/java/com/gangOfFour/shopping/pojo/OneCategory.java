package com.gangOfFour.shopping.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 一级分类
 */
public class OneCategory implements Serializable {
    private static final long serialVersionUID = -6593953303869450705L;
    private Integer oneCategoryId;//id
    private String oneCategoryName;//名字
    private List<TwoCategory> twoCategories=new ArrayList<>();
    private List<ProductColor> productColors=new ArrayList<>();
    private List<ProVersions> proVersions=new ArrayList<>();

    public Integer getOneCategoryId() {
        return oneCategoryId;
    }

    public void setOneCategoryId(Integer oneCategoryId) {
        this.oneCategoryId = oneCategoryId;
    }

    public String getOneCategoryName() {
        return oneCategoryName;
    }

    public void setOneCategoryName(String oneCategoryName) {
        this.oneCategoryName = oneCategoryName;
    }

    public List<TwoCategory> getTwoCategories() {
        return twoCategories;
    }

    public void setTwoCategories(List<TwoCategory> twoCategories) {
        this.twoCategories = twoCategories;
    }

    public List<ProductColor> getProductColors() {
        return productColors;
    }

    public void setProductColors(List<ProductColor> productColors) {
        this.productColors = productColors;
    }

    public List<ProVersions> getProVersions() {
        return proVersions;
    }

    public void setProVersions(List<ProVersions> proVersions) {
        this.proVersions = proVersions;
    }
}
