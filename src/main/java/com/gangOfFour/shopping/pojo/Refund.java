package com.gangOfFour.shopping.pojo;


import java.math.BigDecimal;

/**
 *退款表
 */
public class Refund {
    private int refundId;//id
    private int orderMasterId;//订单id
    private int loginId;//用户id
    private int refundNo;//退款编号
    private String refundTime;//退款时间
    private BigDecimal refundMoney;//退款金额
    private int refundType;//退款状态


}
