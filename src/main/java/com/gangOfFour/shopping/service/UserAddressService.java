package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.UserAddress;

import java.util.List;

public interface UserAddressService {

    /**
     * 新增收货地址
     * @param userAddress
     * @return
     */
    int saveAddress(UserAddress userAddress);

    /**
     * 删除收货地址
     * @param addressId
     * @return
     */
    int removeAddress(int addressId);

    /**
     * 根据当前用户id查询收货地址
     * @param loginId
     * @return
     */
    List<UserAddress> queryUserAddress(int loginId);

    /**
     * 修改收货地址
     * @param userAddress
     * @return
     */
    int modifiUserAddress(UserAddress userAddress);

    /**
     * 根据地址id去查询详细地址
     * @param addressId
     * @return
     */
    UserAddress queryByIdUserAddress(int addressId);

    /**
     * 根据用户ID修改默认地址字段
     * @param loginId
     * @return
     */
    int modifyDefault(int loginId);
}

