<%--suppress ALL --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <TITLE>添加联系人</TITLE>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="${pageContext.request.contextPath }/css/Style.css"
          type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath }/css/Manage.css"
          type="text/css" rel="stylesheet"/>
    <meta content="MSHTML 6.00.2900.3492" name="GENERATOR"/>
</head>

<body>
<form id="form1" name="form1"
      action="${pageContext.request.contextPath }/linkman/save.action"
      method="post">

    <table cellspacing="0" cellpadding=0 width="98%" border="0">
        <tbody>
        <tr>
            <td width="15"><img
                    src="${pageContext.request.contextPath}/images/new_019.jpg"
                    border="0"></td>
            <td width="100%"
                background="${pageContext.request.contextPath}/images/new_020.jpg"
                height="20"></td>
            <td width="15"><img
                    src="${pageContext.request.contextPath}/images/new_021.jpg"
                    border="0"></td>
        </tr>
        </tbody>
    </table>
    <table cellspacing="0" cellpadding=0 width="98%" border="0">
        <tbody>
        <tr>
            <td width="15"
                background=${pageContext.request.contextPath}/images/new_022.jpg>
                <img src="${pageContext.request.contextPath}/images/new_022.jpg"
                     border="0">
            </td>
            <td valign="top" width="100%" bgcolor="#ffffff">
                <table cellspacing="0" cellpadding="5" width="100%" border="0">
                    <tr>
                        <td class="manageHead">当前位置：联系人管理 &gt; 添加联系人</td>
                    </tr>
                    <tr>
                        <td height="2"></td>
                    </tr>
                </table>
                <table cellSpacing="0" cellpadding="5" border="0">
                    <tr>
                        <td>所属客户：</td>
                        <td colspan="3">
                            <select name="customer.custId" class="textbox"
                                    style="width: 180px; height: 21px;">
                                <option value="0">请选择</option>
                                <s:iterator value="customers" var="customer">
                                    <s:if test="customer.custId == #customer.custId">
                                        <option selected
                                                value="<s:property value="#customer.custId"/>">
                                            <s:property
                                                    value="#customer.custName"/>
                                        </option>
                                    </s:if>
                                    <s:else>
                                        <option
                                                value="<s:property value="#customer.custId"/>">
                                            <s:property
                                                    value="#customer.custName"/>
                                        </option>
                                    </s:else>

                                </s:iterator>

                            </select></td>
                    </tr>
                    <tr>
                        <td>联系人名称：</td>
                        <td>
                            <s:textfield class="textbox" id="lkmName"
                                         style="width: 180px" maxlength="50" name="lkmName"/>
                        </td>

                        <td>联系人性别：</td>
                        <td>
                            <s:radio list="#{'1':'男','2':'女'}" name="lkmGender"></s:radio>
                        </td>
                    </tr>

                    <tr>
                        <td>联系人办公电话 ：</td>
                        <td><s:textfield class="textbox" id="lkmPhone"
                                         style="width: 180px" maxlength="50" name="lkmPhone"/></td>

                        <td>联系人手机 ：</td>
                        <td><s:textfield class="textbox" id="lkmMobile"
                                         style="width: 180px" maxlength="50" name="lkmMobile"/></td>
                    </tr>

                    <tr>
                        <td>联系人邮箱 ：</td>
                        <td><s:textfield class="textbox" id="lkmEmail"
                                         style="width: 180px" maxlength="50" name="lkmEmail"/></td>

                        <td>联系人QQ ：</td>
                        <td><s:textfield class="textbox" id="lkmQq"
                                         style="width: 180px" maxlength="50" name="lkmQq"/></td>
                    </tr>

                    <tr>
                        <td>联系人职位 ：</td>
                        <td><s:textfield class="textbox" id="lkmPosition"
                                         style="width: 180px" maxlength="50"
                                         name="lkmPosition"/></td>

                        <td>联系人备注 ：</td>
                        <td><s:textfield class="textbox" id="lkmComment"
                                         style="width: 180px" maxlength="50"
                                         name="lkmComment"/></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><s:actionerror style="color:red"/></td>
                    </tr>

                    <tr>
                        <td rowspan=2><input class="button" id="sButton2"
                                             type="submit" value="保存 " name="sButton2"></td>
                    </tr>
                </table>

            </td>
            <td width="15"
                background="${pageContext.request.contextPath }/images/new_023.jpg">
                <img src="${pageContext.request.contextPath}/images/new_023.jpg"
                     border="0">
            </td>
        </tr>
        </tbody>
    </table>
    <table cellspacing="0" cellpadding=0 width="98%" border="0">
        <tbody>
        <tr>
            <td width="15"><img
                    src="${pageContext.request.contextPath}/images/new_024.jpg"
                    border="0"></td>
            <td align="center" width="100%"
                background="${pageContext.request.contextPath}/images/new_025.jpg"
                height=15></td>
            <td width="15"><img
                    src="${pageContext.request.contextPath}/images/new_026.jpg"
                    border="0"></td>
        </tr>
        </tbody>
    </table>
    <s:debug/>
</FORM>
</body>

</html>