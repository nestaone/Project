package com.green.domain.support;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
    private long bno;
    private String title;
    private String content;
    private String writer;
    private Date regDate;
    private Date updateDate;
}
