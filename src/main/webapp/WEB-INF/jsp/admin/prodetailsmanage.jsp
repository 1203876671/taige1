<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台管理</title>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/css/style.css"/>
    <link href="${pageContext.request.contextPath}/static/admin/css/page.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/index/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/index/layer/layer.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/index/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/js/H-ui.admin.js"></script>
</head>
<body>
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 产品管理
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a class="btn btn-primary radius" href="upprodetails.html?id=0"><i
                        class="Hui-iconfont">&#xe600;</i> 添加内容</a>
			</span>
        <span class="r">共有数据：<strong>${pageInfo.total }</strong> 条</span>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
            <tr class="text-c">
                <%--<th><input type="checkbox" id="sltall"/> </th>--%>
                <th width="80">编号</th>
                <th width="150">产品名称</th>
                <th width="150">同类产品</th>
                <th width="150">活性成分</th>
                <th width="150">产品用途</th>
                <th width="150">产品溶剂</th>
                <th width="150">适用体系</th>
                <th width="150">产品外观</th>
                <th width="200">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list }" var="item">
                <input hidden="hidden" id="proid" name="proid" value="${proid}"/>
                <tr class="text-c">
                    <td>${item.id }</td>
                    <td>${item.name }</td>
                    <td>${item.likeproduct }</td>
                    <td>${item.ingredients }</td>
                    <td>${item.uses }</td>
                    <td>${item.solvent }</td>
                    <td>${item.system }</td>
                    <td>${item.appearance }</td>
                    <td class="f-14 td-manage">
                        <a href="javascript:del(${item.id })"><i class="Hui-iconfont">&#xe6e2;</i></a>
                        <a style="text-decoration:none" class="ml-5" href="upprodetails.html?id=${item.id }"
                           title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div id="PageNum">
        <section>
            <div class="bd points-goods-list">
                <ul class="pages">
                    <li><a href="prodetailsmanage.html?page=1&rows=${pageInfo.pageSize}$proid=${proid}">首页</a>
                    </li>
                    <li class="prev"><a
                            href="prodetailsmanage.html?page=${pageInfo.prePage}&rows=${pageInfo.pageSize}$proid=${proid}">上一页</a>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="nav">
                        <c:if test="${nav == pageInfo.pageNum}">
                            <li>
                                <a href="prodetailsmanage.html?page=${nav}&rows=${pageInfo.pageSize}$proid=${proid}"
                                   class="active">${nav}</a></li>
                        </c:if>
                        <c:if test="${nav != pageInfo.pageNum}">
                            <li>
                                <a href="prodetailsmanage.html?page=${nav}&rows=${pageInfo.pageSize}$proid=${proid}">${nav}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                    <li class="next"><a
                            href="prodetailsmanage.html?page=${pageInfo.nextPage}&rows=${pageInfo.pageSize}$proid=${proid}">下一页</a>
                    </li>
                    <li>
                        <a href="prodetailsmanage.html?page=${pageInfo.pages }&rows=${pageInfo.pageSize}$proid=${proid}">末页</a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
</div>
</div>
<script type="text/javascript">
    //全选与反选
    $("#sltall").click(function () {
        if ($(this).prop("checked")) {
            $("[name='id']").prop("checked", true);//全选
        } else {
            $("[name='id']").prop("checked", false);//取消全选
        }
    });


    function downs() {
        var chkvalue = "";//定义一个数组
        $("input[name='id']:checked").each(function () {
            chkvalue += $(this).val() + ",";
        });
        window.location.href = "signexcels.html?chkvalue=" + chkvalue;
    };


    function del(id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.post("deleteprodetails.html", {id: id}, function (data) {
                if (data.is) {
                    layer.alert(data.msg, {skin: 'layui-layer-molv', closeBtn: 0, anim: 4}, function () {
                        window.location = window.location;
                    });
                } else {
                    layer.msg(data.msg, {icon: 2, time: 1000});
                }
            }, "json");
        });
    }
</script>
</body>
</html>