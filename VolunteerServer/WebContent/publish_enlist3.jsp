<i><%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发布招募</title>
<link rel="stylesheet" href="<%=basePath %>css/mystyle1.css" />
<style type="text/css">
#menu ul{
	width:1340px;
}
#text2 p{
	margin-left:25px;
	font-size:22px;
}
#text2 input{
	color:#666;
	height:22px;
	font-size:16px;
}
a{
	text-decoration:none;
}
#bq{
	width:1346px;
}
#preview{width:180px;height:180px;border:1px solid #000; overflow:hidden;}
#imghead {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}

/*图片在div里居中*/
*{padding:0px;margin:0px;}
.conn{width:180px;height:180px;border:1px solid #000;text-align:center;}/*好懂吧，宽高定义，文本居中。*/
.imgmid{display:inline-block;*display:inline;*zoom:1;height:100%;width:1px;margin-left:-1px;vertical-align:middle}/*这个LZ自己研究研究，我定义了一个高100%的块元素用来对齐img*/
.conn img{width:150px;height:150px;vertical-align:middle;}/*好懂吧，img元素宽高，然后垂直居中对齐。*/

</style>
   <script type="text/javascript" language="javascript">
        function checkPic() {
            var strFile = document.getElementById("picPath").value;  
        	if(strFile =="" || strFile == null){  
            	return false;  
       		 }else{  
            //文件后缀名判断  
            var fileExt = document.getElementById("picPath").value.substr(document.getElementById("picPath").value.lastIndexOf(".")).toLowerCase();  
            var allowExt = ".jpg|.gif|.png|.bmp|";              
            if(allowExt != 0 && allowExt.indexOf(fileExt + "|") == -1){  
                return true;  
           		}  
        	}  
        	return false;  
        }
        //图片预览
        function PreviewImage(divImage, upload, width, height) {
            if (checkPic()) {
                try {
                    var imgPath;      //图片路径

                    var Browser_Agent = navigator.userAgent;
                    //判断浏览器的类型
                    if (Browser_Agent.indexOf("Firefox") != -1) {
                        //火狐浏览器

//getAsDataURL在Firefox7.0 无法预览本地图片，这里需要修改
                        imgPath = upload.files[0].getAsDataURL();
                        document.getElementById(divImage).innerHTML = "<img id='imgPreview' src='" + imgPath + "' width='" + width + "' height='" + height + "'/>";
                    } else {
                        //IE浏览器 ie9 必须在兼容模式下才能显示预览图片
                        var Preview = document.getElementById(divImage);
                        Preview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = upload.value;
                        Preview.style.width = width;
                        Preview.style.height = height;
                    }
                } catch (e) {
                    alert("请上传正确的图片格式");
                    document.getElementById("picPath").value = "";
                }
            }
        }
    </script>   
</head>

<body>
<div id="zy1">
	<div id="menu">
  <ul>
    		<li id="frist"><a href="服务中心.html"><b>服务中心</b></a></li>
        	<li id="end"><a href="登陆界面.html"><b>退出</b></a></li>
      </ul>
    </div>
</div>
<div id="main">
	<div id="navigation">
        <ul>
            <li id="active" class="frist"><a href="通告.html">通告</a></li>
            <li><a href="发布招募.html">发布招募</a></li>
            <li><a href="我的发布.html">我的发布</a></li>
            <li><a href="筛选志愿者.html">筛选志愿者</a></li>
            <li class="last"><a href="我的资料.html">我的资料</a></li>
        </ul>
    </div>
	<div id="text">
        <div id="text2">
        <form action="Recruit_publish" method="post" enctype="multipart/form-data">
        	<h1>发布招募</h1>
        	
        	<div id="tx2">
	        	<!-- <div id="preview" class="conn">
	        		<img id="imghead" width="100" height="100" border="0" src="./images/志愿者.jpg" /><span class="imgmid"></span>
	        	</div>
	        	 <input type="file" onchange="previewImage(this)" name="fileName" color:#000;height:30px;"/> -->
	        	 <input type="file" id="picPath" name="fileName" onchange="PreviewImage('Preview',this,120,120);" />
    			 <div id="Preview" style="filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale);">
   				 </div>
        	</div>
        
        	<!-- <div id="preview">
        	<img id="imghead" width=100 height=100 border=0 src="./images/defaul.jpg"/>
			</div>
			    <input type="file" onchange="previewImage(this)" value="选择照片" name="uploadImg" style="color:#000;height:30px;"/>
			 -->
        	
            <!-- <div id="tx2">
            	<img src="./images/志愿者.jpg" />
                <p><input type="file" value="选择照片" name="img" style="color:#000; width:80px; height:30px;"/></p>
            </div> -->
            
            <p>招募标题：<input name="title" type="text" value="请输入招募标题" onfocus="if (value =='请输入招募标题'){value =''}" onblur="if (value ==''){value='请输入招募标题'}" style="width:177px" /></p>
            <p>服务类型：
            <select name="activityType">
                    <optgroup value="Swedish Cars"> 
                    <option value="青少" selected="selected">青少</option>
                    <option value="敬老">敬老</option>
                    <option value="便民">便民</option>
                    <option value="扶贫">扶贫</option>
                    <option value="环保">环保</option>
                    <option value="文体">文体</option>
                    <option value="助残">助残</option>
                    <option value="其他">其他</option>
                    </optgroup>
                </select>
                </p>
            <p>招募人数：<input name="recruitPeopleNum" type="text" value="请输入招募人数" onfocus="if (value =='请输入招募人数'){value =''}" onblur="if (value ==''){value='请输入招募人数'}" style="width:177px" /></p>
            <p>活动时间：<input name="startTime" id="J-xl1" value="请输入活动时间" onfocus="if (value =='请输入活动时间'){value =''}" onblur="if (value ==''){value='请输入活动时间'}" style="width:177px" /></p>
            <p>截止时间：<input name="endTime" id="J-xl2" type="text" value="请输入截止时间" onfocus="if (value =='请输入截止时间'){value =''}" onblur="if (value ==''){value='请输入截止时间'}" style="width:177px" /></p>
            <p>活动地点：<select name="province">
                    <optgroup value="Swedish Cars"> 
                    <option value="广东省" selected="selected">广东省</option>
                    </optgroup>
                </select>
                <select name="city">
                    <optgroup value="Swedish Cars">
                    <option value="广州市" selected="selected">广州市</option>
                    </optgroup>
                </select>
                <select name="area">
                    <optgroup value="Swedish Cars">
                    <option selected="selected">天河区</option>
                    <option>越秀区</option>
                    <option>海珠区</option>
                    <option>白云区</option>
                    <option>黄埔区</option>
                    <option>番禺区</option>
                    <option>荔湾区</option>
                    <option>罗岗区</option>
                    <option>南沙区</option>
                    <option>花都区</option>
                    <option>从化市</option>
                    <option>增城市</option>
                    </optgroup>
                </select>
                <input name="detailAddress" type="text" value="请输入活动地点" onfocus="if (value =='请输入活动地点'){value =''}" onblur="if (value ==''){value='请输入活动地点'}" style="width:177px" />
            </p>
            <p>联 系 人：<input name="activityContactName" type="text" value="请输入联系人姓名" onfocus="if (value =='请输入联系人姓名'){value =''}" onblur="if (value ==''){value='请输入联系人姓名'}" style="width:277px" /></p>
            <p>联系电话：<input name="activityTelPhone" type="text" value="请输入电话号码" onfocus="if (value =='请输入电话号码'){value =''}" onblur="if (value ==''){value='请输入电话号码'}" style="width:277px" /></p>
            <p>联系邮箱：<input name="activityEmail" type="text" value="请输入常用邮箱" onfocus="if (value =='请输入常用邮箱'){value =''}" onblur="if (value ==''){value='请输入常用邮箱'}" style="width:155px" />
            	<select name="emailSuffix">
                    <optgroup value="Swedish Cars">
                    <option selected="selected">@163.com</option>
                    <option>@qq.com</option>
                    <option>@sina.com</option>
                    <option>@sohu.com</option>
                    </optgroup>
                </select>
            </p>
            <p><span id="wbk">活动描述：</span><textarea name="activityIntroduce" style=" width:277px; color:#666;" value="请输入关于活动的描述" onfocus="if (value =='请输入关于活动的描述'){value =''}" onblur="if (value ==''){value='请输入关于活动的描述'}"></textarea></p>
            <p><input type="submit" name="submit" value="提交" style="margin:5px; padding:3px; width:120px; height:32px; color:#000; margin-left:100px" />
               <a href="index.jsp">
               <input type="button" name="cancel" value="取消" style="margin:5px; margin-left:122px; padding:3px; width:120px; height:32px; color:#000;" /></a></p>
       </form>
        </div>     
  </div>
<div id="bq">
    	<ul>
        	<li id="one"><a href="关于我们.html"><b>关于我们</b></a></li>
            <li><a href="服务条款.html"><b>服务条款</b></a></li>
            <li><a href="帮助中心.html"><b>帮助中心</b></a></li>
    </ul>
  </div>
</div>
</body>

</html>
<script type="text/javascript" src="${pageContext.request.contextPath}/laydate-master/laydate.dev.js"></script>
    <script type="text/javascript">
        laydate({
            elem: '#J-xl1'
        });
        laydate({
            elem: '#J-xl2'
        });
    </script>
   </i>