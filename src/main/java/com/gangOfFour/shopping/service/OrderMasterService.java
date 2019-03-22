package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.OrderMaster;
import com.gangOfFour.shopping.pojo.ShoppingCart;
import com.gangOfFour.shopping.pojo.UserLogin;

import java.util.List;

public interface OrderMasterService {
    /**
     * 新增订单
     * @param list  购物车商品集合
     * @param userLogin  登录人的id
     * @param address  收货地址的id
     * @return
     */
    String addOrderMaster(List<ShoppingCart> list, UserLogin userLogin,int address);

    /**
     * 修改订单状态
     * @param orderNo
     * @return
     */
    int modifyPayStatus(String orderNo ,UserLogin userLogin);
    /**
     * 查询待支付的数量
     * @return
     */
    int queryUnpaidNumber(int loginId);
    /**
     * 查询待收货的数量
     * @return
     */
    int selectReceivingNumber(int loginId);
    /**
     * 查询已完成的数量
     * @return
     */
    int selectStocksNumber(int loginId);
    /**
     * 查询未支付的订单详情
     * @param loginId
     * @return
     */
    List<OrderMaster> queryUnpaidDetail(int loginId ,String status);
}
