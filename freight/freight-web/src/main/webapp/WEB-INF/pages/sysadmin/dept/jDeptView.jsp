<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>

<body>
<form name="icform" method="post">
    <input type="hidden" name="id" value="${id}"/>
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
        查看部门
    </div>


    <div>
        <table class="commonTable" cellspacing="1">
            <tr>
                <td class="columnTitle">上级部门：</td>
                <td class="tableContent">
                    ${dept.parentName}
                </td>
            </tr>
            <tr>
                <td class="columnTitle">部门名称：</td>
                <td class="tableContent">${dept.deptName}</td>
            </tr>
            <tr>
                <td class="columnTitle">部门状态：</td>
                <td class="tableContent">${dept.state==1?'启用':'停用'}</td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>