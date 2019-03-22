package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.UserAddress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserAddressDao {

    /**
     * 新增收货地址
     * @param userAddress
     * @return
     */
    int insertAddress(UserAddress userAddress);

    /**
     * 删除收货地址
     * @param addressId
     * @return
     */
    int deleteAddress(@Param("addressId") int addressId);

    /**
     * 根据当前用户id查询收货地址
     * @param loginId
     * @return
     */
    List<UserAddress> selectUserAddress(@Param("loginId") int loginId);

    /**
     * 修改收货地址
     * @param userAddress
     * @return
     */
    int updateUserAddress(UserAddress userAddress);

    /**
     * 根据地址id去查询详细地址
     * @param addressId
     * @return
     */
    UserAddress selectByIdUserAddress(@Param("addressId") int addressId);

    /**
     * 根据用户ID修改默认地址字段
     * @param loginId
     * @return
     */
    int updateDefault(@Param("loginId") int loginId);
}
