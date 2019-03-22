package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 二级分类
 */
public class TwoCategory implements Serializable {
    private static final long serialVersionUID = 1317665371557854526L;
    private Integer twoCategoryId;//二级分类id
    private String twoCategoryName;//二级分类名

    public Integer getTwoCategoryId() {
        return twoCategoryId;
    }

    public void setTwoCategoryId(Integer twoCategoryId) {
        this.twoCategoryId = twoCategoryId;
    }

    public String getTwoCategoryName() {
        return twoCategoryName;
    }

    public void setTwoCategoryName(String twoCategoryName) {
        this.twoCategoryName = twoCategoryName;
    }

}
