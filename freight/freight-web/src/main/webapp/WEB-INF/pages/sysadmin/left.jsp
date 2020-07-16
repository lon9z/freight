<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../baselist.jsp" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/skin/default/css/left.css" media="all"/>
</head>
 
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
 
 
<!-- begin1  -->
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
        <div class="panel">
        <div class="panel_icon"><img src="${ctx}/skin/default/images/icon/user1_lock.png"/></div>
        <div class="panel-header">
        <div class="panel-title">权限管理</div>
        <div class="panel-content">
			 <ul>
                <shiro:hasPermission name="部门管理">
				<li><a href="${ctx}/dept/list" onclick="linkHighlighted(this)" target="main" id="aa_1">部门管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="用户管理">
				<li><a href="${ctx}/user/list" onclick="linkHighlighted(this)" target="main" id="aa_2">用户管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="角色管理">
				<li><a href="${ctx}/role/list" onclick="linkHighlighted(this)" target="main" id="aa_3">角色管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="模块管理">
				<li><a href="${ctx}/module/list" onclick="linkHighlighted(this)" target="main" id="aa_4">模块管理</a></li>
                </shiro:hasPermission>
			</ul>
        </div>
        </div>
    </div>
    <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>  
</div>	


</body>
</html>
