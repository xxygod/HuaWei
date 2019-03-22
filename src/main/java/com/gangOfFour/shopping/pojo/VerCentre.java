package com.gangOfFour.shopping.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 版本中间表
 */
public class VerCentre implements Serializable {
    private static final long serialVersionUID = 4149171000101707920L;
    private Integer verCentreId;//id
    private ColorCentre colorCentre;//颜色中间表
    private ProVersions proVersions;//版本
    private Integer inventory;//库存
    private String description;//描述
    private String parament;//参数
    private BigDecimal productPrice;//商品价格
    private BigDecimal productCost;//商品原价

    public Integer getVerCentreId() {
        return verCentreId;
    }

    public void setVerCentreId(Integer verCentreId) {
        this.verCentreId = verCentreId;
    }

    public ColorCentre getColorCentre() {
        return colorCentre;
    }

    public void setColorCentre(ColorCentre colorCentre) {
        this.colorCentre = colorCentre;
    }

    public ProVersions getProVersions() {
        return proVersions;
    }

    public void setProVersions(ProVersions proVersions) {
        this.proVersions = proVersions;
    }

    public Integer getInventory() {
        return inventory;
    }

    public void setInventory(Integer inventory) {
        this.inventory = inventory;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getParament() {
        return parament;
    }

    public void setParament(String parament) {
        this.parament = parament;
    }

    public BigDecimal getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    public BigDecimal getProductCost() {
        return productCost;
    }

    public void setProductCost(BigDecimal productCost) {
        this.productCost = productCost;
    }
}
