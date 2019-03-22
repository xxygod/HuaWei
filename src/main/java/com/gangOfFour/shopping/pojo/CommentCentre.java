package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 * 评论回复的中间表
 */
public class CommentCentre implements Serializable {
    private static final long serialVersionUID = 7528252171665566422L;
    private int commentCentreId;
    private int commentId;//评论表的id
    private int replyId;//回复表的id
}
