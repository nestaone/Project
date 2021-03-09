package com.green.service.support;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.domain.support.NoticeVO;
import com.green.mapper.support.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	@Setter(onMethod_=@Autowired)
	private NoticeMapper mapper;
	
	@Override
	public void create(NoticeVO notice) {
		mapper.insert(notice);
	}

	@Override
	public NoticeVO get(long bno) {
		return mapper.read(bno);
	}

	@Override
	public List<NoticeVO> list() {
		return mapper.getList();
	}

	@Override
	public boolean delete(long bno) {
		return mapper.delete(bno) == 1;
	}

	@Override
	public boolean modify(NoticeVO notice) {
		return mapper.update(notice) == 1;
	}


}
