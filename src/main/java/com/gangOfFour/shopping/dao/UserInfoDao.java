package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.UserInfo;
import org.apache.ibatis.annotations.Param;

public interface UserInfoDao {
    UserInfo selectByIdUserInfo(@Param("loginId") int loginId);
    int updateByLoginIdUserInfo(@Param("loginId") int loginId,@Param("jifen") int jifen,@Param("fuhao") String fuhao);
    int insertUserInfo(UserInfo userInfo);
}
