package com.gangOfFour.shopping.pojo;


import java.io.Serializable;

/**
 * 评论图片表
 */
public class CommentPicture implements Serializable {
    private static final long serialVersionUID = 7311971724409252168L;
    private int commentPictureId;//id
    private int commentId;//评论表的id
    private String commentPritureUrl;//图片地址
}
