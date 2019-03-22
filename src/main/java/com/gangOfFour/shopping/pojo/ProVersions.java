package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 版本表
 */
public class ProVersions implements Serializable {
    private static final long serialVersionUID = 7166462726919670405L;
    private Integer proVersionsId;//版本id
    private String proVersionsName;//版本名

    public Integer getProVersionsId() {
        return proVersionsId;
    }

    public void setProVersionsId(Integer proVersionsId) {
        this.proVersionsId = proVersionsId;
    }

    public String getProVersionsName() {
        return proVersionsName;
    }

    public void setProVersionsName(String proVersionsName) {
        this.proVersionsName = proVersionsName;
    }

}
