package com.green.mapper.support;

import java.util.List;

import com.green.domain.support.NoticeVO;

public interface NoticeMapper {
	public List<NoticeVO> getList();
	public void insert(NoticeVO notice);
	public int update(NoticeVO board);
	public NoticeVO read(long bno);
	public int delete(long bno);

}
