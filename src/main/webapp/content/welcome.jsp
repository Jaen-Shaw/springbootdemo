<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>后台模版</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="ok-admin v1.0,ok-admin网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
    <meta name="description" content="ok-admin v1.0，顾名思义，很赞的后台模版，它是一款基于Layui框架的轻量级扁平化且完全免费开源的网站后台管理系统模板，适合中小型CMS后台系统。">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="<%=basePath%>layui/css/layui.css">
    <link rel="stylesheet" href="<%=basePath%>index/css/scroll-bar.css">
    <link rel="stylesheet" href="<%=basePath%>index/css/sub-page.css">
<link rel="stylesheet" href="//at.alicdn.com/t/font_693759_ciewkz7d5vo.css" />

</head>
<body>
<div class="ok-body">
    <blockquote class="layui-elem-quote">
        欢迎管理员：<span class="x-red">Alpha Shaw</span>！当前时间: <span id="nowTime"></span> <span id="weekday"></span>
    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>数据统计</legend>
        <div class="layui-row layui-col-space10 layui-row-margin">
            <div class="layui-col-md2">
                <div class="layui-bg-green md2-sub1">
                    <i class="iconfont icon-dianliyonghuzongshu"></i>
                </div>
                <div class="md2-sub2">
                    <span>100</span>
                    <cite>用户总数</cite>
                </div>
            </div>
            <div class="layui-col-md2">
                <div class="layui-bg-blue md2-sub1">
                    <i class="iconfont icon-wenzhang2"></i>
                </div>
                <div class="md2-sub2">
                    <span>100</span>
                    <cite>文章总数</cite>
                </div>
            </div>
            <div class="layui-col-md2">
                <div class="layui-bg-black md2-sub1">
                    <i class="iconfont icon-pinglun"></i>
                </div>
                <div class="md2-sub2">
                    <span>100</span>
                    <cite>评论总数</cite>
                </div>
            </div>
            <div class="layui-col-md2">
                <div class="layui-bg-orange md2-sub1">
                    <i class="iconfont icon-goods"></i>
                </div>
                <div class="md2-sub2">
                    <span>100</span>
                    <cite>商品总数</cite>
                </div>
            </div>
            <div class="layui-col-md2">
                <div class="layui-bg-red md2-sub1">
                    <i class="iconfont icon-jiaose"></i>
                </div>
                <div class="md2-sub2">
                    <span>100</span>
                    <cite>角色总数</cite>
                </div>
            </div>
            <div class="layui-col-md2">
                <div class="layui-bg-cyan md2-sub1">
                    <i class="iconfont icon-webpage"></i>
                </div>
                <div class="md2-sub2">
                    <span>100</span>
                    <cite>页面总数</cite>
                </div>
            </div>
        </div>
    </fieldset>

    <blockquote class="layui-elem-quote">
        系统基本参数
    </blockquote>
    <table class="layui-table">
        <colgroup>
            <col width="300">
            <col>
        </colgroup>
        <tbody>
        <tr>
            <td>本机IP地址</td>
            <td>1.1.1.1</td>
        </tr>
        <tr>
            <td>服务器地址1</td>
            <td><a href="http://ok-admin.xlbweb.cn" target="_blank">http://ok-admin.xlbweb.cn</a></td>
        </tr>
        <tr>
            <td>服务器地址2（稳定）</td>
            <td><a href="https://bobi1234.gitee.io/ok-admin" target="_blank">https://bobi1234.gitee.io/ok-admin</a></td>
        </tr>
        <tr>
            <td>操作系统</td>
            <td>CentOS</td>
        </tr>
        <tr>
            <td>运行环境</td>
            <td>JDK 1.8.0_171</td>
        </tr>
        <tr>
            <td>数据库版本</td>
            <td>MySQL 5.7</td>
        </tr>
        <tr>
            <td>最大上传限制</td>
            <td>5M</td>
        </tr>
        <tr>
            <td>当前用户权限</td>
            <td>超级管理员</td>
        </tr>
        <tr>
            <td>剩余空间</td>
            <td>888888M</td>
        </tr>
        </tbody>
    </table>

    <!-- <blockquote class="layui-elem-quote">
        作者信息
    </blockquote>
    <table class="layui-table">
        <colgroup>
            <col width="300">
            <col>
        </colgroup>
        <tbody>
        <tr>
            <td>开发者</td>
            <td>bobi(jxjy.ing@foxmail.com)</td>
        </tr>
        <tr>
            <td>下载地址1</td>
            <td>
                <a class="layui-btn layui-btn-xs" href="https://github.com/bobi1234/ok-admin" target="_blank">Github</a>
                &nbsp;&nbsp;目前正在不间断迭代开发中，请大家多多
                <a class="layui-btn layui-btn-danger layui-btn-xs" href="https://github.com/bobi1234/ok-admin" target="_blank">Star</a>
                ，您的鼓励就是我开发的动力，O(∩_∩)O谢谢~
            </td>
        </tr>
        <tr>
            <td>下载地址2</td>
            <td>
                <a class="layui-btn layui-btn-xs" href="https://gitee.com/bobi1234/ok-admin" target="_blank">Gitee</a>
                &nbsp;&nbsp;&nbsp;&nbsp;目前正在不间断迭代开发中，请大家多多
                <a class="layui-btn layui-btn-danger layui-btn-xs" href="https://gitee.com/bobi1234/ok-admin" target="_blank">Star</a>
                ，您的鼓励就是我开发的动力，O(∩_∩)O谢谢~
            </td>
        </tr>
        </tbody>
    </table> -->

    <blockquote class="layui-elem-quote">
        更新日志
    </blockquote>
    <ul class="layui-timeline">
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">6月4日</h3>
                <p>
                   	大体架构成型。
                    <br>无论它能走多远，抑或如何支撑？至少我曾倾注全心，无怨无悔 <i class="layui-icon">&#xe6af;</i>
                </p>
            </div>
        </li>
      
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h3 class="layui-timeline-title">5月4日</h3>
                <p>
                    挑战逆流，不进则退
                    <br>曾以为野蛮生长，却发现未至足够的高度已戛然而止
                    <br>从来如此，便对吗？
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <div class="layui-timeline-title">过去</div>
            </div>
        </li>
    </ul>
</div>
<!--js逻辑-->
<script src="<%=basePath%>layui/layui.js"></script>
<script>
    /**
     * 初始化函数
     */
    setDate();

    /**
     * 获取当前时间
     */
    var nowDate1 = "";
    function setDate() {
        var date = new Date();
        var year = date.getFullYear();
        nowDate1 = year + "-" + addZero((date.getMonth() + 1)) + "-" + addZero(date.getDate()) + "  ";
        nowDate1 += addZero(date.getHours()) + ":" + addZero(date.getMinutes()) + ":" + addZero(date.getSeconds());
        document.getElementById("nowTime").innerHTML = nowDate1;
        setTimeout('setDate()', 1000);
    }

    /**
     * 年月日是分秒为10以下的数字则添加0字符串
     * @param time
     * @returns {number | *}
     */
    function addZero(time) {
        var i = parseInt(time);
        if (i / 10 < 1) {
            i = "0" + i;
        }
        return i;
    }

    /**
     * 初始化星期几
     * @type {string}
     */
    var weekday = "星期" + "日一二三四五六".charAt(new Date().getDay());
    document.getElementById("weekday").innerHTML = weekday;

    layui.use('util', function () {
        var util = layui.util;
        util.fixbar({});
    });
</script>
<!--天气预报插件-->
<script>
    (function(T,h,i,n,k,P,a,g,e){g=function(){P=h.createElement(i);a=h.getElementsByTagName(i)[0];P.src=k;P.charset="utf-8";P.async=1;a.parentNode.insertBefore(P,a)};T["ThinkPageWeatherWidgetObject"]=n;T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});T[n].l=+new Date();if(T.attachEvent){T.attachEvent("onload",g)}else{T.addEventListener("load",g,false)}}(window,document,"script","tpwidget","//widget.seniverse.com/widget/chameleon.js"))
</script>
<script>
    tpwidget("init", {
        "flavor": "bubble",
        "location": "WX4FBXXFKE4F",
        "geolocation": "enabled",
        "position": "top-right",
        "margin": "10px 10px",
        "language": "zh-chs",
        "unit": "c",
        "theme": "chameleon",
        "uid": "U3414DB4A9",
        "hash": "91ff44d1248d72fc847c6177474e1533"
    });
    tpwidget("show");
</script>
</body>
</html>
