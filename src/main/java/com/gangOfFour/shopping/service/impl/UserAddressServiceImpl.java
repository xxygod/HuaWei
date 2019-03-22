package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.UserAddressDao;
import com.gangOfFour.shopping.pojo.UserAddress;
import com.gangOfFour.shopping.service.UserAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserAddressServiceImpl implements UserAddressService {

    @Autowired
    private UserAddressDao userAddressDao;

    @Override
    public int saveAddress(UserAddress userAddress) {
        return userAddressDao.insertAddress(userAddress);
    }

    @Override
    public int removeAddress(int addressId) {
        return userAddressDao.deleteAddress(addressId);
    }

    @Override
    public List<UserAddress> queryUserAddress(int loginId) {
        return userAddressDao.selectUserAddress(loginId);
    }

    @Override
    public int modifiUserAddress(UserAddress userAddress) {
        return userAddressDao.updateUserAddress(userAddress);
    }

    @Override
    public UserAddress queryByIdUserAddress(int addressId) {
        return userAddressDao.selectByIdUserAddress(addressId);
    }


    @Override
    public int modifyDefault(int loginId){
        return userAddressDao.updateDefault(loginId);
    }
}
