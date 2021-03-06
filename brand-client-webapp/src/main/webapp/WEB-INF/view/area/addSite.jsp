<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="${cxtPath}/images/favicon.ico">
<LINK rel="Shortcut Icon" href="${cxtPath}/images/favicon.ico" />
<jsp:include page="/html/baseCommon.jsp"></jsp:include>
<title>新增站点</title>
</head>
<body>
	<div style="margin: 20px;">
		<form class="layui-form editform" id="siteForm">
			<input type="hidden" name="id" value="${site.id}">
			<div class="layui-row">
				<div class="layui-col-xs11">
					<label class="layui-form-label">站点名称</label>
					<div class="layui-input-block">
						<input type="text" name="siteName" lay-verify="required" 
							class="layui-input" placeholder="请填写站点名称" value="${site.siteName }">
					</div>
				</div>
			</div>
			<div class="layui-row">
				<div class="layui-col-xs11">
					<label class="layui-form-label">所属城市</label>
					<div class="layui-input-block">
						<select name="cityId" lay-verify="required">
							<option value="">请选择</option>
							<c:forEach items="${citys}" var="city">
								<option value="${city.id}" <c:if test="${site.cityId eq city.id}">selected</c:if>>${city.areaName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<a class="layui-btn" lay-submit id="lay-submit" style="display: none;"></a>
		</form>
	</div>
	
	<script src="${cxtPath}/js/area/addSite.js"></script>
</body>
</html>
