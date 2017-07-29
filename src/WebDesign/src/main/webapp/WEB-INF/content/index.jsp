
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>经济管理实验教学中心</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="js/Index.js" type="text/javascript"></script>
</head>
<body>
    <div class="headCenter" id="headCenter">
        <div class="headMenu" id="headMenu">
            <div class="headMenuTelLogo">
            </div>
            <div class="headMenuTelCenter">
                <div class="headMenu01" id="headMenu01">
                    中心服务热线
                </div>
                <div class="headMenu02" id="headMenu02">
                    0516-83591296
                </div>
            </div>
        </div>
        <div class="index_top_out">
            <div class="index_top">
                <div class="index_nav">
                    <ul>
                        <li><a href="index">首页</a> </li>
                        <li><a href="#">中心概括</a>
                        	<ul>
                                <c:forEach items="${sessionScope.type1}" var="type1">
                                <li><a href="subpage?tid=${type1.id}&sid=${type1.sort_id}" title="${type1.name}">${type1.name}</a></li>
                                </c:forEach>
                            </ul> 
                        </li>
                        <li><a href="#">信息公示</a>
                        	<ul>
                        	  <c:forEach items="${sessionScope.type2}" var="type2">
                                <li><a href="subpage?tid=${type2.id}&sid=${type2.sort_id}" title="${type2.name}">${type2.name }</a></li>
                               </c:forEach>
                            </ul> 
                        </li>
                        <li><a href="#">成果与特色</a>
                        	<ul>
                        	  <c:forEach items="${sessionScope.type3}" var="type3">
                                <li><a href="subpage?tid=${type3.id}&sid=${type3.sort_id}" title="${type3.name}">${type3.name }</a></li>
                               </c:forEach>
                            </ul> 
                        </li>
                        <li><a href="detial?fid=24">示范与辐射</a> </li>
                        <li><a href="#">实验教学</a>
                        	<ul>
                        	  <c:forEach items="${sessionScope.type5}" var="type5">
                                <li><a href="subpage?tid=${type5.id}&sid=${type5.sort_id}" title="${type5.name}">${type5.name }</a></li>
                               </c:forEach>
                            </ul>
                        </li>
                        <li><a href="#">教学改革</a>
                        	<ul>
                        	   <c:forEach items="${sessionScope.type6}" var="type6">
                                <li><a href="subpage?tid=${type6.id}&sid=${type6.sort_id}" title="${type6.name}">${type6.name }</a></li>
                               </c:forEach>
                            </ul>
                        </li>
                        <li><a href="detial?fid=23">下载中心</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 轮播 -->
    <div class="main-center">
        <div class="g-login-mid-outer">
            <div id="side">
                <ul class="m">
                    <li style="background-image: url(image/banner01.jpg);"><a href="javascript:void(0)">
                    </a></li>
                    <li style="background-image: url(image/banner02.jpg);"><a href="javascript:void(0)">
                    </a></li>
                    <li style="background-image: url(image/banner03.jpg)"><a href="javascript:void(0)">
                    </a></li>
                    <li style="background-image: url(image/banner04.jpg)"><a href="javascript:void(0)">
                    </a></li>
                </ul>
                <ul class="s">
                    <li class="cur">1</li>
                    <li class="">2</li>
                    <li class="">3</li>
                    <li class="">4</li>
                </ul>
            </div>
        </div>
    </div>
     <!-- 新闻和通知 -->
    <div class="mianCenter">
        <div class="mianCenterMain">
            <div class="outer3 outer4 outer4-left pdr20">
                <div class="line">
                </div>
                <div class="index06">
                    <div class="index06left">
                        <h4 class="h4">
                            新闻
                        </h4>
                    </div>
                    <div class="index06right">
                        <a href="#" class="a12">更多> </a>
                    </div>
                </div>
                <ul>         
                    <c:forEach items="${sessionScope.information1}" var="information1">
                    <li>
                        <dl>
                            <dt class="filedt"></dt>
                            <dd>
                                <a href="detail01" class="title03" title="${information1.title}">${information1.title}</a>
                                <span class="title04"> 
                                <f:formatDate value="${information1.date}" 
								type="date" dateStyle="long"/></span>
                            </dd>
                        </dl>
                    </li>
                  </c:forEach>
                </ul>
            </div>
            <div class="outer3 outer4">
                <div class="line">
                </div>
                <div class="index06">
                    <div class="index06left">
                        <h4 class="h4">
                            通知公告
                        </h4>
                    </div>
                    <div class="index06right">
                        <a href="#" class="a12">更多> </a>
                    </div>
                </div>
                <ul>
                <c:forEach items="${sessionScope.information2}" var="information2">
                    <li >
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="${information2.title}">${information2.title}</a> 
                                <span class="title04">
                                <f:formatDate value="${information2.date}" 
								type="date" dateStyle="long"/></span>
                            </dd>
                        </dl>
                    </li>
                </c:forEach>
                </ul>
            </div>
        </div>    
    </div>       
               
     <!-- 成果与特色 -->
    <div class="mian_center01">
        <div class="middle">
            <div class="line">
            </div>
            <div class="index05">
                <div class="index05left">
                    <h4 class="h4">
                        成果与特色
                    </h4>
                </div>
                <div class="index05right">
                    <a href="#" class="a12">更多> </a>
                </div>
            </div>
            <div class="outer2">
                <div id="side2">
                    <ul class="m2">
                       <c:forEach items="${sessionScope.information3}" var="information3">
                        <li style="background-image: url(image/${information3.image1});"><a href="javascript:void(0)"></a>
                        </li>
                        </c:forEach>
                    </ul>
<!--                     <ul class="s2"> -->
<!--                         <li class="cur">1</li> -->
<!--                         <li class="">2</li> -->
<!--                         <li class="">3</li> -->
<!--                         <li class="">4</li> -->
<!--                         <li class="">5</li> -->
<!--                     </ul> -->
                </div>
            </div>
            <div class="outer3">
                <ul>
                <c:forEach items="${sessionScope.information3}" var="information3">
                    <li class="cur li01">
                        <dl>
                            <dt class="datedt"><span class="date01"> <f:formatDate value="${information3.date}" 
								type="date" dateStyle="long"/> </span><span class="date02">19</span>
                            </dt>
                            <dd>
                                <a href="#" class="title01" title="${information3.title}"><i></i>${information3.title}</a> <p
                                    class="title02"></p>
                            </dd>
                        </dl>
                    </li>
                </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <!-- 快速通道和下载 -->
    <div class="mianCenter">
        <div class="mianCenterMain">

            
            <div class="outer3 outer4 outer5 outer4-left pdr20">
                <div class="line">
                </div>
                <div class="index06">
                    <div class="index06left">
                        <h4 class="h4">
                            系统登录
                        </h4>
                    </div>
                    <div class="index06right">
                        <a href="#" class="a12"> </a>
                    </div>
                </div>
                <ul>
                    <li >
                        <dl>
                            <dt class="kuaidt"></dt>
                            <dd>
                                <a href="http://219.219.64.176:82/" class="title03" title="管理学院虚拟仿真实验教学平台">管理学院虚拟仿真实验教学平台</a> 
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="kuaidt"></dt>
                            <dd>
                                <a href="http://202.119.206.110/sbweb/" class="title03" title="仪器设备管理系统">仪器设备管理系统</a> 
                            </dd>
                        </dl>
                    </li>
                    <li >
                        <dl>
                            <dt class="kuaidt"></dt>
                            <dd>
                                <a href="#" class="title03" title="网上办公">实验室借用系统</a> 
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="kuaidt"></dt>
                            <dd>
                                <a href="#" class="title03" title="校园邮箱(教育网)">实验室开放系统</a> 
                            </dd>
                        </dl>
                    </li>
                    <li >
                        <dl>
                            <dt class="kuaidt"></dt>
                            <dd>
                                <a href="#" class="title03" title="网上办公">管理员登陆</a> 
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
            <div class="outer3 outer4 outer5">
                <div class="line">
                </div>
                <div class="index06">
                    <div class="index06left">
                        <h4 class="h4">
                            下载中心
                        </h4>
                    </div>
                    <div class="index06right">
                        <a href="#" class="a12">更多> </a>
                    </div>
                </div>
                <ul>
                <c:forEach items="${sessionScope.information4}" var="information4">
                    <li >
                        <dl>
                            <dt class="helpdt"></dt>
                            <dd>
                                <a href="UploadFiles/${information4.doc}" class="title03" title="${information4.title}">${information4.title}</a> <span class="title04">
                                     <f:formatDate value="${information4.date}" 
								type="date" dateStyle="long"/></span>
                            </dd>
                        </dl>
                    </li>
                </c:forEach>
                </ul>
            </div>
        </div>
     <!-- 成果与特色 -->
     <!-- 修改后的图片 -->
    </div>
    <!-- 快捷图片
    <div class="main-center">
        <div class="middle-menu-cent-midd">
            <div class="content-item-index">
                <a href="#" class="index01"></a>
            </div>
            <div class="content-item-index">
                <a href="#" class="index02"></a>
            </div>
            <div class="content-item-index">
                <a href="#" class="index03"></a>
            </div>
            <div class="content-item-index">
                <a href="#" class="index04"></a>
            </div>
        </div>
    </div> -->
     <!-- 底部 -->

    <div class="foot">
        <div class="foot_main">
            <p>
                <label>
                    版权所有：中国矿业大学管理学院实验中心
                </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label>
                    联系电话：0516-83591296
                </label>
            </p>
            <p>
                <label>
                    地址：江苏省徐州市中国矿业大学管理学院
                </label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
            </p>
        </div>
    </div>
</body>
</html>