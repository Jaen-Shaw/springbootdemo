<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String port=request.getServerPort()==80?"":":"+request.getServerPort();
String basePath = request.getScheme()+"://"+request.getServerName()+port+path+"/";
long randomVal = System.currentTimeMillis();//防止缓存

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>layui/css/layui.css" />
<link rel="stylesheet" href="<%=basePath%>index/css/okadmin.css" />
<link rel="stylesheet" href="//at.alicdn.com/t/font_693759_ciewkz7d5vo.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/nprogress/nprogress.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>layui/layui.all.js"></script>
<script language="javascript">
    var basePath="<%=basePath%>";

</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <!--头部导航-->
    <div class="layui-header">
        <div class="layui-logo">后台管理</div>
        <div class="menu-switch">
            <i class="iconfont icon-caidan"></i>
        </div>
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item layui-this"><a href=""><i class="iconfont icon-jiankongkongzhiguanlijianguan"></i> 控制管理<span class="layui-badge-dot"></span></a></li>
            <li class="layui-nav-item"><a href=""><i class="iconfont icon-weibiaoti35"></i> 产品中心</a></li>
            <li class="layui-nav-item"><a href=""><i class="iconfont icon-rengongzhineng"></i> 人工智能</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont icon-map-setting"></i> 其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <!-- <img src="images/head.jpg" class="layui-nav-img"> -->
                    Alpha Shaw
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">个人中心<span class="layui-badge-dot"></span></a></dd>
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                    <dd><a href="javascript:void(0)" id="lock">锁定账户</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="javascript:void(0)" id="logout">退出</a></li>
        </ul>
    </div>
    <!--左侧导航区域-->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-shrink="all" lay-filter="">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">
                        <i class="layui-icon">&#xe62a;</i> 常用页面
                    </a>
                    <dl class="layui-nav-child">
                    <dd><a href="javascript:;" path="<%=basePath%>content/Tree/Tree.jsp" tab-id="1-1"><i class="iconfont icon-wenzhang2"></i> 文章列表</a></dd>
                        <!-- <dd><a href="javascript:;" path="user.html" tab-id="1-1"><i class="iconfont icon-dianliyonghuzongshu"></i> 用户列表</a></dd>
                        <dd><a href="javascript:;" path="article.html" tab-id="1-2"><i class="iconfont icon-wenzhang2"></i> 文章列表</a></dd>
                        <dd><a href="javascript:;" path="role.html" tab-id="1-3"><i class="iconfont icon-jiaose"></i> 角色列表</a></dd>
                        <dd><a href="javascript:;" path="permission.html" tab-id="1-4"><i class="iconfont icon-jiaoseshouquan"></i> 权限列表</a></dd>
                        <dd><a href="javascript:;" path="process.html" tab-id="1-5"><i class="iconfont icon-liucheng"></i> 流程列表</a></dd>
                        <dd><a href="javascript:;" path="image.html" tab-id="1-6"><i class="iconfont icon-tupian"></i> 图片列表</a></dd>
                        <dd><a href="javascript:;" path="login.html" tab-id="1-7"><i class="iconfont icon-denglu"></i> 登陆页面</a></dd>
                        <dd><a href="javascript:;" path="404.html" tab-id="1-8"><i class="iconfont icon-404cuowu"></i> 404页面</a></dd>
                        <dd><a href="javascript:;" path="403.html" tab-id="1-9"><i class="iconfont icon-icon-test"></i> 403页面</a></dd>
                        <dd><a href="javascript:;" path="500.html" tab-id="1-10"><i class="iconfont icon-icon-test1"></i> 500页面</a></dd>
                        <dd><a href="javascript:;" path="donate.html" tab-id="1-11"><i class="iconfont icon-juanzeng"></i> 捐赠列表</a></dd> -->
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe62c;</i> 图表页面
                    </a>
                    <dl class="layui-nav-child">
                    	<dd><a href="javascript:;" path="<%=basePath%>content/echarts/mapAndzzt.jsp" tab-id="2-1">地图显示柱状图</a></dd>
                    	<dd><a href="javascript:;" path="<%=basePath%>content/echarts/map_bar.jsp" tab-id="2-2">成都地图</a></dd>
                    	<dd><a href="javascript:;" path="<%=basePath%>content/sjzx/sjzxIndex.jsp" tab-id="2-3">数据地图</a></dd>
                        <!-- <dd><a href="javascript:;" path="map1.html" tab-id="2-1">柱状图</a></dd>
                        <dd><a href="javascript:;" path="map2.html" tab-id="2-2">折线图</a></dd>
                        <dd><a href="javascript:;" path="map3.html" tab-id="2-3">折线堆叠图</a></dd>
                        <dd><a href="javascript:;" path="map4.html" tab-id="2-4">饼图</a></dd>
                        <dd><a href="javascript:;" path="map5.html" tab-id="2-5">环形图</a></dd>
                        <dd><a href="javascript:;" path="map6.html" tab-id="2-6">散布图</a></dd> -->
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe646;</i> 字体图标
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" path="font-layui.html" tab-id="3-1">Layui内置图标库</a></dd>
                        <dd><a href="javascript:;" path="font-iconfont.html" tab-id="3-2">阿里巴巴图标库</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe716;</i> 系统管理
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" path="xxxx.html" tab-id="4-1"><i class="iconfont icon-settings"></i> 系统设置</a></dd>
                        <dd><a href="javascript:;" path="xxxx.html" tab-id="4-2"><i class="iconfont icon-blacklist"></i> 屏蔽词</a></dd>
                        <dd><a href="javascript:;" path="xxxx.html" tab-id="4-3"><i class="iconfont icon-rizhi"></i> 系统日志</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- 内容主体区域 -->
    <div class="content-body">
        <div class="layui-tab layui-tab-brief" lay-filter="ok-tab" lay-allowClose="true">
            <ul class="layui-tab-title">
                <li class="layui-this"><i class="layui-icon">&#xe68e;</i> 控制台</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src='<%=basePath%>content/welcome.jsp' frameborder="0" scrolling="yes" width="100%" height="100%"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!--底部信息-->
    <div class="layui-footer">
        Copyright ©2018-©2018 ok-admin v1.0 All Rights Reserved
        <button class="layui-btn layui-btn-danger layui-btn-xs">捐赠作者</button>
    </div>
</div>
<script src="<%=basePath%>/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>nprogress/nprogress.js"></script>
<script type="text/javascript" src="<%=basePath%>content/index.js"></script>
 <div class="yy"></div>
</body>
</html>