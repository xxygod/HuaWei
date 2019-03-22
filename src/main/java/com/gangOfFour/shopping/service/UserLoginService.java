package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.UserLogin;
import org.apache.ibatis.annotations.Param;

public interface UserLoginService {
    /**
     * 登录方法
     * @param loginName
     * @param loginPassword
     * @return
     */
    UserLogin login(String loginName,String loginPassword);
    /**
     * 前台用户查询,登录
     * @param loginName
     * @param loginPassword
     * @return
     */
    UserLogin selectUserByNameAndPwd(String loginName, String loginPassword);

    /**
     * 根据用户名查询是否存在
     * @param loginName
     * @return
     */
    UserLogin selectUserByName(String loginName);

    /**
     * 前台用户新增,注册
     * @param userLogin
     * @return
     */
    int saveUser(UserLogin userLogin);

    /**
     * 前台用户修改,修改
     * @param loginId
     * @return
     */
    int modifiUser(int loginId);
}
