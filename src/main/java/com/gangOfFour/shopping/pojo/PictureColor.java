package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 *图片颜色表
 */
public class PictureColor implements Serializable {
    private static final long serialVersionUID = -5038968325864466033L;
    private int pictureColorId;//id
    private int colorCentreId;//颜色中间表的id
    private String pirctureColorUrl;//颜色表的图片地址

    public int getPictureColorId() {
        return pictureColorId;
    }

    public void setPictureColorId(int pictureColorId) {
        this.pictureColorId = pictureColorId;
    }

    public int getColorCentreId() {
        return colorCentreId;
    }

    public void setColorCentreId(int colorCentreId) {
        this.colorCentreId = colorCentreId;
    }

    public String getPirctureColorUrl() {
        return pirctureColorUrl;
    }

    public void setPirctureColorUrl(String pirctureColorUrl) {
        this.pirctureColorUrl = pirctureColorUrl;
    }
}
