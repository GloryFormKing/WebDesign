<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                        <li><a href="subpage">中心概括</a>
                        	<ul>
                                <li><a href="detail" title="中心简介">中心简介</a></li>
                                <li><a href="Detail2.html" title="发展规划">发展规划</a></li>
                                <li><a href="Detail3.html" title="规章制度">规章制度</a></li>
                                <li><a href="Detail4.html" title="仪器设备">仪器设备</a></li>
                                <li><a href="Detail4.html" title="软件介绍">软件介绍</a></li>
                                <li><a href="Detail5.html" title="师资队伍">师资队伍</a></li>
                                <li><a href="Detail5.html" title="实验室资源">实验室资源</a></li>
                            </ul> 
                        </li>
                        <li><a href="list2.html">信息公示</a>
                        	<ul>
                                <li><a href="Detail6.html" title="新闻">新闻</a></li>
                                <li><a href="Detail7.html" title="通知公告">通知公告</a></li>
                            </ul> 
                        </li>
                        <li><a href="list3.html">成果与特色</a>
                        	<ul>
                                <li><a href="Detail8.html" title="双创动态">双创动态</a></li>
                            </ul> 
                        </li>
                        <li><a href="list4.html">示范与辐射</a> </li>
                        <li><a href="list5.html">实验教学</a>
                        	<ul>
                                <li><a href="Detail9.html" title="课程一览">课程一览</a></li>
                                <li><a href="Detail10.html" title="教学大纲">教学大纲</a></li>
                                <li><a href="Detail9.html" title="实验项目">实验项目</a></li>
                                <li><a href="Detail10.html" title="实验课件">实验课件</a></li>
                                <li><a href="Detail9.html" title="实验案例">实验案例</a></li>
                                <li><a href="Detail10.html" title="实验报告">实验报告</a></li>
                                <li><a href="Detail10.html" title="实验报告">视频教学</a></li>
                            </ul>
                        </li>
                        <li><a href="list6.html">教学改革</a>
                        	<ul>
                                <li><a href="Detail11.html" title="教改项目">教改项目</a></li>
                                <li><a href="Detail12.html" title="教学论文">教学论文</a></li>
                                <li><a href="Detail11.html" title="科研项目">科研项目</a></li>
                                <li><a href="Detail12.html" title="教材建设">教材建设</a></li>
                                <li><a href="Detail12.html" title="获奖">获奖</a></li>
                            </ul>
                        </li>
                        <li><a href="list7.html">下载中心</a></li>
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
                    <c:forEach items="${sessionScope.messages}" var="messages">
                    <li>
                        <dl>
                            <dt class="filedt"></dt>
                            <dd>
                                <a href="detail01" class="title01" title="">${messages.title}</a> <span class="title01">
                                    ${messages.date}</span>
                                <img src="image/002.jpg" width="100px" height="100px">    
                                    ${messages.content}
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
                    <li >
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="硕士生、博士生一卡通领取通知">硕士生、博士生一卡通领取通知</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="毕业生一卡通销户退款提醒">毕业生一卡销户通退款提醒</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="校园无线网暂停通知">校园无线网暂停通知</a> <span class="title04">03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="毕业生一卡销户通退款提醒">毕业生一卡销户通退款提醒</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="硕士生、博士生一卡通领取通知">硕士生、博士生一卡通领取通知</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <!-- <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="毕业生一卡通销户退款提醒">毕业生一卡通销户退款提醒</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="毕业生一卡销户通退款提醒">毕业生一卡销户通退款提醒</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="messdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="华中师范大学校长杨宗凯：信息化">华中师范大学校长杨宗凯：信息化</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li> -->
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
                        <li style="background-image: url(image/ban01.jpg);"><a href="javascript:void(0)"></a>
                        </li>
                        <li style="background-image: url(image/ban02.jpg);"><a href="javascript:void(0)"></a>
                        </li>
                        <li style="background-image: url(image/ban03.jpg)"><a href="javascript:void(0)"></a>
                        </li>
                        <li style="background-image: url(image/ban04.jpg)"><a href="javascript:void(0)"></a>
                        </li>
                        <li style="background-image: url(image/ban05.jpg)"><a href="javascript:void(0)"></a>
                        </li>
                        <li style="background-image: url(image/ban06.jpg)"><a href="javascript:void(0)"></a>
                        </li>
                    </ul>
                    <ul class="s2">
                        <li class="cur">1</li>
                        <li class="">2</li>
                        <li class="">3</li>
                        <li class="">4</li>
                        <li class="">5</li>
                        <li class="">6</li>
                    </ul>
                </div>
            </div>
            <div class="outer3">
                <ul>
                    <li class="cur li01">
                        <dl>
                            <dt class="datedt"><span class="date01">2016-10 </span><span class="date02">19 </span>
                            </dt>
                            <dd>
                                <a href="#" class="title01" title="聊城大学网络信息中心领导来我校"><i></i>聊城大学网络信息中心领导来我校</a> <p
                                    class="title02" >各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="datedt"><span class="date01">2016-10 </span><span class="date02">19 </span>
                            </dt>
                            <dd>
                                 <a href="#" class="title01" title="聊城大学网络信息中心领导来我校"><i></i>聊城大学网络信息中心领导来我校</a> <p
                                    class="title02" >各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="datedt"><span class="date01">2016-10 </span><span class="date02">19 </span>
                            </dt>
                            <dd>
                                <a href="#" class="title01" title="聊城大学网络信息中心领导来我校"><i></i>聊城大学网络信息中心领导来我校</a> <p
                                    class="title02" >各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="datedt"><span class="date01">2016-10 </span><span class="date02">19 </span>
                            </dt>
                            <dd>
                                <a href="#" class="title01" title="聊城大学网络信息中心领导来我校"><i></i>聊城大学网络信息中心领导来我校</a> <p
                                    class="title02" >各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="datedt"><span class="date01">2016-10 </span><span class="date02">19 </span>
                            </dt>
                            <dd>
                               <a href="#" class="title01" title="聊城大学网络信息中心领导来我校"><i></i>聊城大学网络信息中心领导来我校</a> <p
                                    class="title02" >各单位：为做好我校2016年校内财务预算工作，请各位单位根据...</p>
                            </dd>
                        </dl>
                    </li>
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
                        <a href="#" class="a12">更多> </a>
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
                    <li >
                        <dl>
                            <dt class="helpdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="通过关注学校微信公众号，进行一">通过关注学校微信公众号，进行一</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="helpdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="一卡通为什么会冻结">一卡通为什么会冻结</a> <span class="title04">03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li >
                        <dl>
                            <dt class="helpdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="通过关注学校微信公众号，进行一">通过关注学校微信公众号，进行一</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="helpdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="一卡通为什么会冻结">一卡通为什么会冻结</a> <span class="title04">03-21</span>
                            </dd>
                        </dl>
                    </li>
                    <li >
                        <dl>
                            <dt class="helpdt"></dt>
                            <dd>
                                <a href="#" class="title03" title="通过关注学校微信公众号，进行一">通过关注学校微信公众号，进行一</a> <span class="title04">
                                    03-21</span>
                            </dd>
                        </dl>
                    </li>
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