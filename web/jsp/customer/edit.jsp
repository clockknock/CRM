<%--suppress ALL --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>修改客户</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="${pageContext.request.contextPath }/css/Style.css"
          type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath }/css/Manage.css"
          type="text/css" rel="stylesheet"/>
    <meta content="MSHTML 6.00.2900.3492" name="GENERATOR"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/addOptions.js"></script>

    <style type="text/css">
        .errorMessage {
            list-style: none;
            color: red;
            padding: 0px;
            margin: 0px;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            addOptions("006", "custLevel");
            addOptions("001", "custIndustry");
            addOptions("002", "custSource");
        });
    </script>

</head>

<body>
<form id="form1" name="form1"
      action="${pageContext.request.contextPath}/customer/update.action"
      method="post" enctype="multipart/form-data">
    <s:hidden name="custId" value="custId"/>

    <table cellspacing="0" cellpadding="0" width="98%" border="0">
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
    <table cellspacing="0" cellpadding="0" width="98%" border="0">
        <tbody>
        <tr>
            <td width="15"
                background="${pageContext.request.contextPath}/images/new_022.jpg">
                <img src="${pageContext.request.contextPath}/images/new_022.jpg"
                     border="0">
            </td>
            <td valign="top" width="100%" bgcolor="#ffffff">
                <table cellspacing="0" cellpadding="5" width="100%" border="0">
                    <tr>
                        <td class="manageHead">当前位置：客户管理 &gt; 修改客户</td>
                    </tr>
                    <tr>
                        <td height="2"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="5" border="0">

                    <tr>
                        <td>客户名称：</td>
                        <td>
                            <s:textfield class="textbox" id="cust_name" style="width: 180px"
                                         maxlength="50"
                                         name="custName"/>
                        </td>
                        <td>客户级别 ：</td>
                        <td id="custLevel_data" data="<s:property value="cstLevel.dictId" />">
                            <select name="cstLevel.dictId" id="custLevel"
                                    style="width: 180px;height:
                            22px;">
                                <option value="0">请选择</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>信息来源 ：</td>
                        <td id="custSource_data" data="<s:property value="custSource.dictId" />">
                            <select name="custSource.dictId" id="custSource"
                                    style="width: 180px;height:
                            22px;">
                                <option value="0">请选择</option>
                            </select>
                        </td>

                        <td>所属行业 ：</td>
                        <td id="custIndustry_data"
                            data="<s:property value="custIndustry.dictId" />">

                            <select name="custIndustry.dictId" id="custIndustry"
                                    style="width: 180px;height:
                            22px;">
                                <option value="0">请选择</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>固定电话 ：</td>
                        <td>
                            <s:textfield class="textbox" id="cust_phone" style="width: 180px"
                                         maxlength="50" name="custPhone"/>
                        </td>
                        <td>移动电话 ：</td>
                        <td>
                            <s:textfield class="textbox" id="cust_mobile" style="width: 180px"
                                         maxlength="50" name="custMobile"/>
                        </td>
                    </tr>

                    <tr>
                        <td>用户资质 ：</td>
                        <td>
                            <input type="file" id="imageUpLoad" name="imageUpLoad" style="width:
                            180px;height: 22px;">
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td style="color: #ff0000;">
                            <s:actionerror/>
                        </td>
                    </tr>

                    <tr>
                        <td rowspan="2">
                            <input class=button id=sButton2 type=submit value=" 更新 "
                                   name="sButton2">
                        </td>
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
    <table cellspacing="0" cellpadding="0" width="98%" border="0">
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
</form>
</body>

</html>