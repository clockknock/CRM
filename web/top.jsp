<%--
  Created by IntelliJ IDEA.
  User: zhong
  Date: 2017/9/10
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
    <title>顶部</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta content="MSHTML 6.00.2900.3492" name="GENERATOR" />
    <style type="text/css">
        body {
            padding-right: 0px;
            padding-left: 0px;
            padding-bottom: 0px;
            margin: 0px;
            padding-top: 0px;
            background-color: #2a8dc8
        }

        body {
            font-size: 12px;
            color: #003366;
            font-family: verdana, arial, helvetica, sans-serif
        }

        td {
            font-size: 12px;
            color: #003366;
            font-family: verdana, arial, helvetica, sans-serif
        }

        div {
            font-size: 12px;
            color: #003366;
            font-family: verdana, arial, helvetica, sans-serif
        }

        p {
            font-size: 12px;
            color: #003366;
            font-family: verdana, arial, helvetica, sans-serif
        }
    </style>
</head>

<body>
<form id="form1" name="form1" action="" method="post">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
        <tr>
            <td width="10">
                <img src="images/new_001.jpg" border="0">
            </td>
            <td background="images/new_002.jpg">
                <font size="5">
                    <b>客户关系管理系统v1.0</b>
                </font>
            </td>
            <td background="images/new_002.jpg">
                <table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                    <tr>
                        <td align="right" height="35"></td>
                    </tr>
                    <tr>
                        <td height="35" align="right">
                            当前用户：${user.userCode } &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#" target="_top">
                                <font color=red>修改密码</font>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/user/logout.action"
                               target="_top">
                                <font color="red">安全退出</font>
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>
            <td width="10">
                <img src="images/new_003.jpg" border="0">
            </td>
        </tr>
        </tbody>
    </table>
</form>
</body>

</html>