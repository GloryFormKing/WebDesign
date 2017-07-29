
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
<div class="detail_center">
        <div class="detail_centerbg">
            <div class="list07">
                <div class="list07left list07left">
                    <h4 class="h4">
                        ${requestScope.type.name}&nbsp;&nbsp;
                    </h4>
                </div>
                <div class="list07right list07right licon">
                    <span class="a13">当前位置：首页 > ${requestScope.type.name}</span>
                </div>
            </div>
            <div class="detail_title">
                <p class="title">
                 ${requestScope.information.title}</p>
                <br />
                <p>
                    <span class="blue">信息来源：</span>${requestScope.information.source}&nbsp;&nbsp;&nbsp;&nbsp; <span class="blue">发布日期：</span>2016-08-22&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="blue">浏览次数：</span>580
                </p>
            </div>
            <div class="detail_data">
                <div id="sub_text_area">
                  <p>${requestMapping.information.content}</p>
                  <image src="image/${requestScope.information.image1 }" />
                </div>
            </div>
            <div class="detail_foot">
                <p>
                   ${requestScope.information.author}</p>
                <p>
                     <f:formatDate value="${requestScope.information.date}" type="date" dateStyle="long"/>
                <br />
                <br />
                <br />
                <p>
                </p>
            </div>
        </div>
    </div>

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