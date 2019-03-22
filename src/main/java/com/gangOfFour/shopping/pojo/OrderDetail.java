package com.gangOfFour.shopping.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 订单详情
 */
public class OrderDetail implements Serializable {
    private static final long serialVersionUID = -6183181126516219918L;
    private Integer orderDetailId;//id
    private OrderMaster orderMaster;//订单表id
    private ProductInfo productInfo;//商品id
    private ProVersions proVersions;//商品版本id
    private ProductColor productColor;//商品颜色id
    private Integer productNumber;//商品数量
    private BigDecimal unitPrice;//单价
    private BigDecimal subtotal;//小计  （单价*商品数量）

    public Integer getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(Integer orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public OrderMaster getOrderMaster() {
        return orderMaster;
    }

    public void setOrderMaster(OrderMaster orderMaster) {
        this.orderMaster = orderMaster;
    }

    public ProductInfo getProductInfo() {
        return productInfo;
    }

    public void setProductInfo(ProductInfo productInfo) {
        this.productInfo = productInfo;
    }

    public ProVersions getProVersions() {
        return proVersions;
    }

    public void setProVersions(ProVersions proVersions) {
        this.proVersions = proVersions;
    }

    public ProductColor getProductColor() {
        return productColor;
    }

    public void setProductColor(ProductColor productColor) {
        this.productColor = productColor;
    }

    public Integer getProductNumber() {
        return productNumber;
    }

    public void setProductNumber(Integer productNumber) {
        this.productNumber = productNumber;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(BigDecimal subtotal) {
        this.subtotal = subtotal;
    }
}
