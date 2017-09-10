<%@ page import="org.itheima.crm.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: zhong
  Date: 2017/9/10
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) request.getSession().getAttribute("user");
    if(user==null){
        response.sendRedirect(request.getContextPath()+"/login.jsp");
    }
%>