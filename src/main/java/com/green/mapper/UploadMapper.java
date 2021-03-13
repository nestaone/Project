package com.green.mapper;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.green.domain.UploadVO;

public interface UploadMapper {
	public List<UploadVO> fileList();
	public void uploadFile(UploadVO vo);
	public void deleteFile(String uuid);
}
