package com.gangOfFour.shopping.pojo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 用户信息表
 */
public class UserInfo implements Serializable {
    private static final long serialVersionUID = -136295655016861302L;
    private Integer userId;//用户id
    private UserLogin userLogin;//登录id
    private String userName;//用户名
    private String userphone;//用户手机号码
    private String useremail;//用户邮箱
    private int userPoint;//用户积分

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public UserLogin getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(UserLogin userLogin) {
        this.userLogin = userLogin;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public int getUserPoint() {
        return userPoint;
    }

    public void setUserPoint(int userPoint) {
        this.userPoint = userPoint;
    }
}
