package com.gangOfFour.shopping.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 用户登录表
 */
public class UserLogin implements Serializable {
    private static final long serialVersionUID = -7699845552724290152L;
    private int loginId;//登录表id
    private String loginName;//登录名
    private String loginPassword;//登录密码
    private String loginIcon;//头像
    private String screenName;//账户名
    private UserInfo userInfo;//用户信息
    private List<ShoppingCart> shoppingCarts=new ArrayList<>();

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public List<ShoppingCart> getShoppingCarts() {
        return shoppingCarts;
    }

    public void setShoppingCarts(List<ShoppingCart> shoppingCarts) {
        this.shoppingCarts = shoppingCarts;
    }

    public int getLoginId() {
        return loginId;
    }

    public void setLoginId(int loginId) {
        this.loginId = loginId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getLoginIcon() {
        return loginIcon;
    }

    public void setLoginIcon(String loginIcon) {
        this.loginIcon = loginIcon;
    }

    public String getScreenName() {
        return screenName;
    }

    public void setScreenName(String screenName) {
        this.screenName = screenName;
    }
}
