<%@ page import="org.itheima.crm.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: zhong
  Date: 2017/9/8
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" >
<html>
<%@ include file="checkLogin.jsp"%>

<head>
    <base href="${pageContext.request.contextPath}/">
    <title>客户关系管理系统</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta content="MSHTML 6.00.2900.3492" name="GENERATOR"/>
</head>

<frameset framespacing="0" rows="80,*" frameborder="0">
    <frame name="top" src="top.jsp" frameborder="0" noresize="noresize" scrolling="no"/>
    <frameset frameSpacing="0" frameBorder="0" cols="220,*">
        <frame name="menu" src="menu.jsp" frameBorder="0" noresize="noresize"/>
        <frame name="main" src="welcome.htm" frameBorder="0"/>
    </frameset>
    <noframes>
        <p>This page requires frames, but your browser does not support them.
        </p>
    </noframes>
</frameset>

</html>
