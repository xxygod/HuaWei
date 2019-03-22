package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 物流信息表
 */
public class Logistics implements Serializable {
    private static final long serialVersionUID = 8032517249243120855L;
    private int logisticsId;//id
    private int orderMasterId;//订单id
    private String logisticsName;//物流公司名
    private String logisticsNo;//物流编号
    private int logisticsStatus;//物流状态

}
