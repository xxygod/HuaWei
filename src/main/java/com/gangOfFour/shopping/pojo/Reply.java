package com.gangOfFour.shopping.pojo;

import java.io.Serializable;

/**
 *回复表
 */
public class Reply implements Serializable {
    private static final long serialVersionUID = -633791569598485179L;
    private int replyId;//回复表id
    private int loginId;//回复人id
    private String replyContent;//回复类容
    private String replyTime;//回复时间
    private int praise;//赞


}
