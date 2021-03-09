package com.green.service.support;

import java.util.List;

import com.green.domain.support.NoticeVO;

public interface NoticeService {
	public void create(NoticeVO notice);
	public NoticeVO get(long bno);
	public List<NoticeVO> list();
	public boolean delete(long bno);
	public boolean modify(NoticeVO notice);
}
