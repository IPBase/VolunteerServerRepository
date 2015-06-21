package com.gzucm.volunteer.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;
import com.gzucm.volunteer.config.Constant;
import com.gzucm.volunteer.vo.Resume;

public class UploadUtil {
	Map<String,Object> params;
	public Map<String, Object> getParams() {
		return params;
	}
	public void setParams(Map<String, Object> params) {
		this.params = params;
	}
	HttpServletRequest request;
	public UploadUtil() {
		super();
		params=new HashMap<String, Object>();
		// TODO Auto-generated constructor stub
	}
	public UploadUtil(HttpServletRequest request) {
		super();
		params=new HashMap<String, Object>();
		this.request=request;
		// TODO Auto-generated constructor stub
	}
	
	public Map<String,Object> upload(){
		//保存路径
		String savePath = request.getRealPath(Constant.UPLOAD_ACTIVITY_IMG);
		File saveDir = new File(savePath);
		// 如果目录不存在，就创建目录
		if(!saveDir.exists()){
			saveDir.mkdir();
		}
		
		// 创建文件上传核心类
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		//设置编码
		sfu.setHeaderEncoding("UTF-8");
		// 设置上传的单个文件的最大字节数为2M
		sfu.setFileSizeMax(1024*1024*2);
		//设置整个表单的最大字节数为10M
		sfu.setSizeMax(1024*1024*10);
		
		try{
			// 处理表单请求
			List<FileItem> itemList = sfu.parseRequest(request);
			for (FileItem fileItem : itemList) {
				// 对应表单中的控件的name
				String fieldName = fileItem.getFieldName();
				System.out.println("控件名称：" + fieldName);
				// 如果是普通表单控件
				if(fileItem.isFormField()){
					String value = fileItem.getString();
					//重新编码,解决乱码
					value = new String(value.getBytes("ISO-8859-1"),"UTF-8");
					System.out.println("普通内容：" + fieldName + "=" + value);
					
					params.put(fieldName, value);
					
				// 上传文件
				}else{
					// 获得文件大小
					Long size = fileItem.getSize();
					// 获得文件名
					String fileName = fileItem.getName();
					System.out.println("文件名："+fileName+"\t大小：" + size + "byte");
					
					//上传文件信息处理——更改名字
					if(fileName.indexOf(".")!=-1){
						String extension = fileName.substring(fileName.indexOf("."));
						fileName = CharacterUtils.getRandomString2(20) + extension;
						params.put("fileName", fileName);
					}
					
					//设置不允许上传的文件格式
					if(fileName.endsWith(".exe")){
						request.setAttribute("msg", "不允许上传的类型！");
						System.out.println("不允许上传的类型！");
					}else{
						//将文件保存到指定的路径
						File file = new File(savePath,fileName);
						fileItem.write(file);
						request.setAttribute("msg", "上传成功！");
						System.out.println("上传成功！");
					}
				}
			}
		}catch(FileSizeLimitExceededException e){
			request.setAttribute("msg", "文件太大");
			System.out.println("文件太大"+e.getMessage());
		}catch(FileUploadException e){
			System.out.println("文件上传出错"+e.getMessage());
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("其它错误"+e.getMessage());
		}
		return params;
		//上传完毕后  转发到首页
//		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		/*FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List items = null;
		try {
			items=upload.parseRequest(request);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		FileItem item=null;
		if(items!=null){}
		Iterator iter = items.iterator();
		while (iter.hasNext()) {
			item= (FileItem) iter.next();
			if (item.isFormField()) {
				// 普通文本信息处理
				String paramName = item.getFieldName();
				String paramValue = item.getString();
				try {
					paramValue = new String(paramValue.getBytes("ISO-8859-1"), "UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				params.put(paramName, paramValue);
			} 
			else{
				// 上传文件信息处理
				String fileName = item.getName();
				if(fileName.indexOf(".")!=-1){
					String extension = fileName.substring(fileName.indexOf("."));
					fileName = CharacterUtils.getRandomString2(20) + extension;
					params.put("fileName", fileName);
				}
				byte[] data = item.get();
				@SuppressWarnings("deprecation")
				String filePath = request.getRealPath(Constant.UPLOAD_ACTIVITY_IMG
						+ fileName);
				FileOutputStream fos;
				try {
					fos = new FileOutputStream(filePath);
					fos.write(data);
					fos.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
		return params;*/
	}
		
}
