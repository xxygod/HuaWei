package com.gangOfFour.shopping.vo;

import com.gangOfFour.shopping.pojo.ProVersions;
import com.gangOfFour.shopping.pojo.ProductColor;
import com.gangOfFour.shopping.pojo.TwoCategory;

import java.util.List;

public class VoList {
    private List<TwoCategory> twoCategory;
    private List<ProductColor> productColor;
    private List<ProVersions> proVersions;

    public List<TwoCategory> getTwoCategory() {
        return twoCategory;
    }

    public void setTwoCategory(List<TwoCategory> twoCategory) {
        this.twoCategory = twoCategory;
    }

    public List<ProductColor> getProductColor() {
        return productColor;
    }

    public void setProductColor(List<ProductColor> productColor) {
        this.productColor = productColor;
    }

    public List<ProVersions> getProVersions() {
        return proVersions;
    }

    public void setProVersions(List<ProVersions> proVersions) {
        this.proVersions = proVersions;
    }
}
