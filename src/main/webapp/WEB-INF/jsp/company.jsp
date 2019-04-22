<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="font-size: 100px;">

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/company.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_header_footer.css"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/Marquee.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/swiper.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/js.js" type="text/javascript"></script>
    <!--<script src="js/MetaController.js"></script>
        <script src="js/MetaController.js"></script>-->
    <title>泰格助剂</title>
</head>

<body>
<div class="top">
    <div class="mainbox clearfix">
        <p class="welcome">欢迎进入泰格助剂！</p>
        <div class="top_right clearfix">
				<span>
					<i class="icon_tel"></i>
					<b>021-50796110</b>
				</span>
            <span>
					<i class="icon_fax"></i>
					<b>stanley.luo@tech-polymer.cn</b>
				</span>
        </div>
    </div>
</div>

<div class="header">
    <div class="mainbox clearfix header_nav">
        <a class="logo" href="index.jsp">
            <img src="images/logo.png">
        </a>
        <div class="munes">
            <span class="mune1"></span>
            <span class="mune2"></span>
            <span class="mune3"></span>
        </div>
        <div class="nav">
            <ul class="navul clearfix dropdown">
                <li class="navli">
                    <a href="index.jsp">首页</a>
                </li>
                <li class="navli cur-active">
                    <a class="level" href="company.html">关于泰格</a>
                    <div class="level_down">
                        <a href="company.html">公司简介</a>
                        <a href="company.html">公司愿景</a>
                        <a href="company.html">安全环保</a>
                        <a href="company.html">价值传递</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="goods.html">产品中心</a>
                    <div class="level_down">
                        <a href="download.html">分散剂</a>
                        <a href="download.html">流平剂</a>
                        <a href="download.html">消泡剂</a>
                        <a href="download.html">基材润湿剂</a>
                        <a href="download.html">附着力促进剂</a>
                        <a href="download.html">特用助剂</a>
                        <a href="download.html">流变助剂</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="news.html">新闻资讯</a>
                    <div class="level_down">
                        <a href="news.html">公司新闻</a>
                        <a href="news.html">行业动态</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="application-list-shui.html">应用推荐</a>
                    <div class="level_down">
                        <a href="application-list-shui.html">水性体系</a>
                        <a href="application-list-you.html">油性体系</a>
                        <a href="ask.html">样品索取</a>
                        <a href="download-list.html">资料下载</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="contact.html">联系我们</a>
                    <div class="level_down">
                        <a href="contact.html">联系方式</a>
                        <a href="recruit.html">人才招聘</a>
                    </div>
                </li>
                <li class="language">
                    <a href="#">EN</a>
                </li>
            </ul>
        </div>
    </div>
    <script>
        $(".nav li").hover(function () {
                $(this).addClass("cur");
                $(this).children(".level_down").stop().slideDown('fast');
            },
            function () {
                $(this).removeClass("cur");
                $(this).children(".level_down").stop().slideUp('fast')
            })
        $(".level_down p").hover(function () {
                $(this).css({
                    "background": "#27a01c",
                    "color": "#fff"
                })
            },
            function () {
                $(this).css({
                    "background": "#fff",
                    "color": "#000"
                })
            });
    </script>
</div>
<!--company_banner-->
<div class="company_banner banner-public"
     style="background: url(images/company_banner.jpg)  repeat-x center top; background-size:cover;">
    <h2>关于泰格</h2>
    <span></span>
    <p>ABOUT THE TIGER IS VERY EXCTING, SEE EVERYTHING</p>
</div>
<!--company_banner-->
<div class="company_content">
    <div class="company_center">
        <div class="company_profile">
            <h4>公司简介</h4>
            <p>COMPAMY &nbsp; PROFILE</p>
            <div class="profile_left">
                <div class="company_img">
                    <img src="${pageContext.request.contextPath}/static/images/company_content.jpg"/>
                </div>
            </div>
            ${company.context}
        </div>
    </div>
</div>
<div class="footer_banner">
    <img src="images/footer_banner.jpg"/>
    <div class="footer_mask">
        <div class="footer_mask_center">
            <h3>价值传递</h3>
            <span>WALUE TRANSFER</span>
            <p>
                通过亲水性聚醚的接枝改性,可赋予聚硅氧烷以水溶性无论是表面点位，还是沉降体积都是片面的，最终看分散的好坏，要看分散液中分散质的粒度大小及其随时间的变化料用蜡主要以添加剂的形式加入，蜡类添加剂一般以水乳液形式存在，最初是用于改善涂膜的表面防扩性能。</p>
        </div>
    </div>
</div>
<div class="footer">
    <div class="mainbox clearfix">
        <div class="footer_l aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-right">
            <div class="footer_nav clearfix">
                <dl>
                    <dt>关于泰格</dt>
                    <dd>
                        <a href="company.html?type=1">公司简介</a>
                    </dd>
                    <dd>
                        <a href="company.html?type=2">公司愿景</a>
                    </dd>
                    <dd>
                        <a href="company.html?type=3">安全环保</a>
                    </dd>
                    <dd>
                        <a href="company.html?type=4">价值传递</a>
                    </dd>
                </dl>

                <dl>
                    <dt>新闻资讯</dt>
                    <dd>
                        <a href="news.html">公司新闻</a>
                    </dd>
                    <dd>
                        <a href="news.html">行业动态</a>
                    </dd>
                </dl>

                <dl>
                    <dt>产品中心</dt>
                    <dd>
                        <a href="download.html">分散剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">流平剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">消泡剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">基材润湿剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">附着力促进剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">特用助剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">流变助剂</a>
                    </dd>
                </dl>

                <dl>
                    <dt>应用推荐</dt>
                    <dd>
                        <a href="application-list-shui.html">水性体系</a>
                    </dd>
                    <dd>
                        <a href="application-list-you.html">油性体系</a>
                    </dd>
                    <dd>
                        <a href="ask.html">样品索取</a>
                    </dd>
                    <dd>
                        <a href="download-list.html">资料下载</a>
                    </dd>
                </dl>
                <dl>
                    <dt>联系我们</dt>
                    <dd>
                        <a href="contact.html">联系方式</a>
                    </dd>
                    <dd>
                        <a href="recruit.html">人才招募</a>
                    </dd>
                </dl>
            </div>
            <div class="footer_bot">
                <p>上海泰格聚合物技术有限公司 电话：021-50796110 传真：021-50796113 地址：上海市浦东新区张江路665号德宏大厦602室</p>
                <p>版权所有 2016-2018 沪ICP备09072940号-1 网站制作：杰冠网络</p>
            </div>
        </div>

        <div class="footer_logo aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-left">
            <img src="images/footer-top-logo.png" style="width: 260px;">
            <img src="images/footer_logo.png">
        </div>
    </div>
</div>
<div class="footer_flixd_bottom"></div>
<div class="footer_flixd">
    <ul>
        <li>
            <a href="index.jsp" class="frist_a">
                <i class="frist"></i>首頁</a>
        </li>
        <li>
            <a href="contact.html" class="tel_a">
                <i class="phon_i"></i>
            </a>
        </li>
        <li>
            <a href="goods.html" class="frist_a">
                <i class="goods_i"></i>产品中心</a>
        </li>
    </ul>
</div>
<script src="${pageContext.request.contextPath}/static/js/header_footer.js" type="text/javascript"
        charset="utf-8"></script>
</body>

</html>