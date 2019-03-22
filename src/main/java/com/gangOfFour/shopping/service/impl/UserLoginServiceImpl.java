package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.UserInfoDao;
import com.gangOfFour.shopping.dao.UserLoginDao;
import com.gangOfFour.shopping.pojo.UserInfo;
import com.gangOfFour.shopping.pojo.UserLogin;
import com.gangOfFour.shopping.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserLoginServiceImpl implements UserLoginService {

    @Autowired
    private UserLoginDao userLoginDao;
    @Autowired
    private UserInfoDao userInfoDao;

    @Override
    public UserLogin login(String loginName, String loginPassword){
        return userLoginDao.selectLogin(loginName,loginPassword);
    }

    @Override
    public UserLogin selectUserByNameAndPwd(String loginName, String loginPassword) {
        return userLoginDao.findUserByNameAndPwd(loginName,loginPassword);
    }

    @Override
    public UserLogin selectUserByName(String loginName) {
        return userLoginDao.findUserByName(loginName);
    }

    @Override
    @Transactional
    public int saveUser(UserLogin userLogin) {
        int con=userLoginDao.insertUser(userLogin);
        if(con>0) {
            UserInfo userInfo = new UserInfo();
            userInfo.setUserLogin(userLogin);
            return userInfoDao.insertUserInfo(userInfo);
        }else{
            return 0;
        }

    }

    @Override
    public int modifiUser(int loginId) {
        return userLoginDao.updateUser(loginId);
    }
}
