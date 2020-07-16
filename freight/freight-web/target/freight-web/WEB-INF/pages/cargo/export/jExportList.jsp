<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script>
        function isOnlyChecked() {
            var checkBoxArray = document.getElementsByName('exportId');
            var count = 0;
            for (var index = 0; index < checkBoxArray.length; index++) {
                if (checkBoxArray[index].checked) {
                    count++;
                }
            }
            //jquery
            //var count = $("[input name='id']:checked").size();
            if (count == 1)
                return true;
            else
                return false;
        }

        function toView() {
            if (isOnlyChecked()) {
                formSubmit('${ctx}/export/toView', '_self');
            } else {
                alert("请先选择一项并且只能选择一项，再进行操作！");
            }
        }

        //实现更新
        function toUpdate() {
            if (isOnlyChecked()) {
                formSubmit('${ctx}/export/toUpdate', '_self');
            } else {
                alert("请先选择一项并且只能选择一项，再进行操作！");
            }
        }

        //实现删除
        function toDelete() {
            if (isOnlyChecked()) {
                formSubmit('${ctx}/export/delete', '_self');
            } else {
                alert("请先选择一项并且只能选择一项，再进行操作！");
            }
        }

        //提交
        function toSub() {
            if (isOnlyChecked()) {
                formSubmit('${ctx}/export/submit', '_self');
            } else {
                alert("请先选择一项并且只能选择一项，再进行操作！");
            }
        }

        //取消
        function toCal() {
            if (isOnlyChecked()) {
                formSubmit('${ctx}/export/cancel', '_self');
            } else {
                alert("请先选择一项并且只能选择一项，再进行操作！");
            }
        }
    </script>
</head>

<body>
<form id="frm" method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="view"><a href="#" onclick="toView();this.blur();">查看</a></li>
                        <li id="update"><a href="#" onclick="toUpdate();this.blur();">修改</a></li>
                        <li id="delete"><a href="#" onclick="toDelete();this.blur();">删除</a></li>
                        <li id="new"><a href="#" onclick="toSub();this.blur();">提交</a></li>
                        <li id="new"><a href="#" onclick="toCal();this.blur();">取消</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="${ctx }/skin/default/images/icon/currency_yen.png"/>
        出口报运列表
    </div>

    <div>


        <div class="eXtremeTable">
            <jsp:include page="${ctx}/common/page.jsp"></jsp:include>
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('exportId',this)"></td>
                    <td class="tableHeader">报运号</td>
                    <td class="tableHeader">货物数/附件数</td>
                    <td class="tableHeader">信用证号</td>
                    <td class="tableHeader">收货人及地址</td>
                    <td class="tableHeader">装运港</td>
                    <td class="tableHeader">目的港</td>
                    <td class="tableHeader">运输方式</td>
                    <td class="tableHeader">价格条件</td>
                    <td class="tableHeader">制单日期</td>
                    <td class="tableHeader">状态</td>
                </tr>
                </thead>
                <tbody class="tableBody">


                <c:forEach items="${pb.datas}" var="o" varStatus="status">
                    <tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
                        <td><input type="checkbox" name="exportId" value="${o.exportId}"/></td>
                        <td>${o.exportId}</td>
                        <td align="center">
                                ${o.exportProductNum}
                            /
                                ${o.extEproductNum}
                        </td>
                        <td>${o.lcno}</td>
                        <td>${o.consignee}</td>
                        <td>${o.shipmentPort}</td>
                        <td>${o.destinationPort}</td>
                        <td>${o.transportMode}</td>
                        <td>${o.priceCondition}</td>
                        <td><fmt:formatDate value="${o.inputDate }" pattern="yyyy-MM-dd"/></td>
                        <td><c:if test="${o.state==0}">草稿</c:if>
                            <c:if test="${o.state==1}"><font color="green">已上报</font></c:if></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>

    </div>


</form>
</body>
</html>

