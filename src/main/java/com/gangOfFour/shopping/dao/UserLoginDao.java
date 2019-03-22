package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.UserLogin;
import org.apache.ibatis.annotations.Param;

public interface UserLoginDao {
    /**
     * 登录功能
     * @param loginName
     * @param loginPassword
     * @return
     */
    UserLogin selectLogin(@Param("loginName") String loginName, @Param("loginPassword") String loginPassword);

    /**
     * 前台用户查询,登录
     * @param loginName
     * @param loginPassword
     * @return
     */
    UserLogin findUserByNameAndPwd(@Param("loginName") String loginName, @Param("loginPassword") String loginPassword);

    /**
     * 根据用户名查询是否存在
     * @param loginName
     * @return
     */
    UserLogin findUserByName(@Param("loginName")String loginName);

    /**
     * 前台用户新增,注册
     * @param userLogin
     * @return
     */
    int insertUser(UserLogin userLogin);

    /**
     * 前台用户修改,修改
     * @param loginId
     * @return
     */
    int updateUser(int loginId);


}
