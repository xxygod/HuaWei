package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.OrderMaster;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMasterDao {
    /**
     * 新增订单
     * @param orderMaster
     * @return
     */
    int insertOrderMaster(OrderMaster orderMaster);

    /**
     * 修改支付状态
     * @param orderNo
     * @return
     */
    int updatePayStatus(@Param("orderNo") String orderNo);

    /**
     * 根据订单编号查询订单
     * @param orderNo
     * @return
     */
    OrderMaster selectByOrderNoOrderMaster(@Param("orderNo") String orderNo);
    /**
     * 查询待支付的数量
     * @return
     */
    int selectUnpaidNumber(@Param("loginId") int loginId);
    /**
     * 查询待收货的数量
     * @return
     */
    int selectReceivingNumber(@Param("loginId") int loginId);
    /**
     * 查询已完成的数量
     * @return
     */
    int selectStocksNumber(@Param("loginId") int loginId);

    /**
     * 查询未支付的订单详情
     * @param loginId
     * @return
     */
    List<OrderMaster> selectUnpaidDetail(@Param("loginId") int loginId ,@Param("status") String status);
}
