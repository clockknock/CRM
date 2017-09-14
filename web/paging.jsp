<%--suppress ALL --%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhong
  Date: 2017/9/14
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<span id="pagelink">
    <div
            style="line-height: 20px; height: 20px; text-align: right">
        共[<b>${totalCount}</b>]条记录,[<b>${totalPage}</b>]页
        ,每页显示
        <s:select name="pageSize"
                  list="#{'5':'5','10':'10','20':'20','30':'30'}"
                  onchange="to_page()"></s:select>
        条
        <s:if test="currentPage >1">
            [<a href="javascript:to_page(${currentPage-1})">前一页</a>]
        </s:if>
        <B><s:property value="currentPage"/></B>
        <s:if test="currentPage < totalPage">
            [<a href="javascript:to_page(${currentPage+1})">后一页</a>]
        </s:if>
        到
        <input type="text" size="3" id="page"
               name="currentPage"/>
        页

        <input type="button" value="Go"
               onclick="to_page()"/>
    </div>
</span>
