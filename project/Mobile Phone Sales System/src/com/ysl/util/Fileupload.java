package com.ysl.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

/* 实现文件上传功能 */
public class Fileupload {

	public static MultipartFile fileupload(HttpServletRequest request,
			String path, String file) {
		MultipartFile mFile = null;
		InputStream inputStream = null;
		FileOutputStream outputStream = null;
		try {
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
					request.getSession().getServletContext());
			if (multipartResolver.isMultipart(request)) {
				File files = new File(path);// 通过path创建远端服务器文件
				files.mkdirs();
				MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;// 把从页面获取的request转换为文件数据
				mFile = multiRequest.getFile(file);// 从文件数据中获取fileUpload的文件信息
				String filename = mFile.getOriginalFilename();// 获取文件名
				inputStream = mFile.getInputStream();// 创建文件输入流
				byte[] b = new byte[10485760];
				int length = inputStream.read(b);
				path += "/" + filename;
				// 文件流写到服务器端
				outputStream = new FileOutputStream(path);
				outputStream.write(b, 0, length);
				return mFile;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return mFile;
	}
}
