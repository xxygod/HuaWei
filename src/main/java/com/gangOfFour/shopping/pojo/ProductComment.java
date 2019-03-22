package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 商品评论表
 */
public class ProductComment implements Serializable {
    private static final long serialVersionUID = 1619187029441220949L;
    private int commentId;//id
    private int loginId;//登录id
    private String commentCotent;//评论的类容
    private String commentTime;//评论的时间
    private int productId;//商品id
    private int praise;//赞
}
