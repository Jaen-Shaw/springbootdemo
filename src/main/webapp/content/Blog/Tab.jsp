<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8" />
		<title>layTabPlus</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>layui/css/layui.css">
	</head>

	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<a href="">
					<div class="layui-logo">后台管理系统</div>
				</a>
				<!-- 头部区域（可配合layui已有的水平导航） -->
				<ul class="layui-nav layui-layout-left">
					<li class="layui-nav-item">
						<a href="">返回前台</a>
					</li>
					<li class="layui-nav-item">
						<a href="">商品管理</a>
					</li>
					<li class="layui-nav-item">
						<a href="">用户</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;">其它系统</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="">邮件管理</a>
							</dd>
							<dd>
								<a href="">消息管理</a>
							</dd>
							<dd>
								<a href="">授权管理</a>
							</dd>
						</dl>
					</li>
				</ul>
				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="https://gitee.com/uploads/66/890966_Leytton.png?1512991922" class="layui-nav-img"> Leytton </a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" onclick="addTab(this);" tab_url="http://www.llqqww.com">基本资料</a>
							</dd>
							<dd>
								<a href="">安全设置</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="/mp.php/login/logout">退了</a>
					</li>
				</ul>
			</div>
			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree">
						<li class="layui-nav-item layui-nav-itemed">
							<a class="" href="javascript:;">基本信息</a>
							<dl class="layui-nav-child">
								<dd class="layui-this">
									<a href="javascript:;" >基本信息</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;">开源作品</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="javascript:;" class="layTabPlus" tab_url="https://gitee.com/Leytton/ThinkJD">
										<i class="layui-icon layui-icon-star"> </i>
										ThinJDBC
									</a>
								</dd>
								<dd>
									<a href="javascript:;" class="layTabPlus" tab_url="https://gitee.com/Leytton/SimJQ">SimJQ</a>
								</dd>
								<dd>
									<a href="javascript:;" class="layTabPlus" tab_url="https://gitee.com/Leytton/layTabPlus" tab_jump="true">layTabPlus</a>
								</dd>
							</dl>
						</li>


						<!-- <li class="layui-nav-item">
							<a href="javascript:void(0);" class="layTabPlus" tab_url="https://blog.csdn.net/leytton">CSDN</a>
						</li> -->
					</ul>
				</div>
			</div>

			<div class="layui-body">
				<!-- 内容主体区域 -->
				<div class="layui-tab" lay-filter="demoTab" lay-allowClose="true">
					<ul class="layui-tab-title">
						<li class="layui-this noclose" lay-id='base_info'>基本信息</li>
					</ul>
					<div class="layui-tab-content" style="padding:0px;">
						<div class="layui-tab-item layui-show">
							<div class="sysNotice col">
								<blockquote class="layui-elem-quote title">基本信息</blockquote>
								<table class="layui-table">
									<tbody>
										<tr>
											<td>当前版本</td>
											<td class="version">V1.2</td>
										</tr>
										<tr>
											<td>开发作者</td>
											<td class="author">Leytton</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-footer">
				© 2019 <a href="https://gitee.com/Leytton/layTabPlus">layTabPlus</a>
			</div>
		</div>
		<script src="<%=basePath%>layui/layui.all.js"></script>
		<script>
			var $ = layui.jquery;
			var layer = layui.layer;
			var element = layui.element;
			var util = layui.util;
			var table = layui.table;
		</script>
		<script src="<%=basePath%>js/util/layTabPlus.js"></script>
		<script>
			layTabPlus.init({
				lay_filter: 'demoTab'
			});
		</script>
	</body>

</html>
<style>
	.sysNotice .layui-table {
		margin-top: 0;
		border-left: 5px solid #e2e2e2;
	}
	
	.layui-elem-quote.title {
		padding: 10px 15px;
		margin-bottom: 0;
	}
	
	.sysNotice {
		width: 75%;
	}
	.code{
		color: #c7254e;
		background-color: #f9f2f4;
		border-radius: 2px;
		padding: 4px 2px 0;
	}
</style>
