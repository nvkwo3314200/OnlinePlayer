<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sourceFile = request.getParameter("videoSource");
%>    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<!--maincontent/begin-->
<div class="maincontent">
<div class="cuplayer" style="margin-top:50px;">
<legend>
<h4>播放器演示(请在IIS下或其它网站环境下测试)</h4></legend>

	<!--HLSPlayer代码开始-->
	<div class="video" id="HLSPlayer" >
	<SCRIPT LANGUAGE=JavaScript>
	<!--
	/*
	* HLSPlayer参数应用=======================
	* @param {Object} vID        ID
	* @param {Object} vWidth     播放器宽度设置
	* @param {Object} vHeight    播放器宽度设置
	* @param {Object} vPlayer    播放器文件
	* @param {Object} vHLSset    HLS配置
	* @param {Object} vPic       视频缩略图
	* @param {Object} vCssurl    移动端CSS应用文件
	* HLSPlayer参数应用=======================
	* 提示1：本实例请在IIS/Apache等网站环境下测试
	* 提示2：本实例仅支持hls(m3u8)/不支持flv,mp4,f4v
	*/
	var vID        = ""; 
	var vWidth     = "100%";                //播放器宽度设置
	var vHeight    = 400;                   //播放器宽度设置
	var vPlayer    = "hlsplayer/HLSPlayer.swf?v=1.5"; //播放器文件
	var vHLSset    = "hlsplayer/HLS.swf";             //HLS配置
	var vPic       = "hlsplayer/images/start.jpg";    //视频缩略图
	var vCssurl    = "hlsplayer/images/mini.css";     //移动端CSS应用文件
	
	//HLS(m3u8)地址,适配PC,安卓,iOS,WP 
	
	//var vHLSurl    = "http://192.168.1.86:8081/wxfs/3BC87BC3E43F2BF9594B6239E40757D5.m3u8";
	var vHLSurl = '<%=sourceFile%>';
	//-->
	
	</SCRIPT> 
	<script type="text/javascript" src="hlsplayer/js/hls.min.js?rand=3396fsa778"></script>
	</div>
	<!--HLSPlayer代码结束-->
	<form action="index.jsp">
		<input name="videoSource" placeholder=" 请输入地址" />
		<input type="submit" value = "提交">
	</form>
</body>
</html>