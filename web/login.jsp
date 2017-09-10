<%@ page import="org.itheima.crm.domain.User" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhong
  Date: 2017/9/8
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" >

<%
    User user = (User) request.getSession().getAttribute("user");
    if(user!=null){
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
%>
<HTML >

<head>
    <base href="${pageContext.request.contextPath}/">

    <META http-equiv="content-type" content="text/html; charset=utf-8">
    <style type=text/css>
        body {
            font-size: 12px;
            color: #ffffff;
            font-family: 宋体
        }

        td {
            font-size: 12px;
            color: #ffffff;
            font-family: 宋体
        }

        .errorMessage {
            list-style: none;
            text-align: left;
            padding-left: 5px;
            margin: 0px;
        }
    </style>
    <meta content="MSHTML 6.00.6000.16809" name="GENERATOR" />
</head>

<body>
<form id="form1" name="form1" action="${pageContext.request.contextPath}/user/login.action"
      method="post">

    <div id="UpdatePanel1">
        <div id="div1" style="left: 0px; position: absolute; top: 0px; background-color: #0066ff"></div>
        <div id="div2" style="left: 0px; position: absolute; top: 0px; background-color: #0066ff"></div>

        <div>&nbsp;&nbsp; </div>
        <DIV>
            <TABLE cellSpacing="0" cellPadding="0" width="900" align="center" border="0">
                <tbody>
                <tr>
                    <td style="height: 105px">
                        <img src="${pageContext.request.contextPath}/images/login_1.gif" border="0">
                    </td>
                </tr>
                <tr>
                    <td background="images/login_2.jpg" height="300">
                        <table height="300" cellPadding="0" width="900" border="0">
                            <tbody>
                            <tr>
                                <td colspan="2" height="35"></td>
                            </tr>
                            <tr>
                                <td width="360"></td>
                                <td>
                                    <table cellspacing="0" cellpadding="2" border="0">
                                        <tbody>
                                        <tr>
                                            <td style="height: 28px" width="80">登 录 名：</td>
                                            <td style="height: 28px" width="150">
                                                <s:textfield id="txtName" style="width: 130px"
                                                   name="userCode"/>
                                            </td>
                                            <td style="height: 28px" width=370>
                                                <span id="RequiredFieldValidator3"
                                                      style="font-weight: bold; visibility:
                                                      visible; color: red">
                                                    <s:fielderror >
                                                        <s:param>userCode</s:param>
                                                    </s:fielderror>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 28px">登录密码：</td>
                                            <td style="height: 28px">
                                                <s:password id="txtPwd" style="width: 130px"
                                                     type="password"
                                                   name="userPassword"/>
                                            </td>
                                            <td style="height: 28px">
                                                <span id="RequiredFieldValidator4"
                                                      style="font-weight: bold; visibility:
                                                      visible; color: red">
                                                    <s:fielderror >
                                                        <s:param>userPassword</s:param>
                                                    </s:fielderror>
                                                </span>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="height: 28px">验证码：</td>
                                            <td style="height: 28px">
                                                <s:textfield id="txtCode" style="width: 130px"
                                                   name="validateCode"/>
                                            </td>
                                            <td style="height: 28px">
                                                <span id="RequiredFieldValidator5"
                                                      style="font-weight: bold; visibility:
                                                      visible; color: red">
                                                    <s:fielderror >
                                                        <s:param>validateCode</s:param>
                                                    </s:fielderror>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 28px"></td>
                                            <td style="height: 28px">
                                                <img type="image"
                                                       src="${pageContext.request.contextPath}/user/validateCode.action"
                                                       alt="验证码">
                                            </td>

                                        </tr>

                                        <tr>
                                            <td style="height: 18px"></td>
                                            <td style="height: 18px"></td>
                                            <td style="height: 18px"></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <input id="btn" style="border-top-width: 0px; border-left-width: 0px; border-bottom-width: 0px; border-right-width: 0px" onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("btn", "", true, "", "", false, false))' type="image" src="${pageContext.request.contextPath}/images/login_button.gif" name="btn">
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath}/images/login_3.jpg" border="0">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</form>
</body>

</html>