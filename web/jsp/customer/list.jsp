<%--suppress ALL --%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>客户列表</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="${pageContext.request.contextPath }/css/Style.css" type="text/css"
          rel="stylesheet"/>
    <link href="${pageContext.request.contextPath }/css/Manage.css" type="text/css"
          rel="stylesheet"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/addOptions.js"></script>
    <script type="text/javascript">
        $(function () {
            addOptions("006", "custLevel");
            addOptions("001", "custIndustry");
            addOptions("002", "custSource");
        });

        function to_page(page) {
            console.log(page)
            if (page) {
                $("#page").val(page);
            }
            document.customerForm.submit();
        }
    </script>

    <meta content="MSHTML 6.00.2900.3492" name="GENERATOR"/>
</HEAD>

<body>
<form id="customerForm" name="customerForm"
      action="${pageContext.request.contextPath }/customer/list.action" method="post">

    <table cellspacing="0" cellpadding="0" width="98%" border="0">
        <tbody>


        <tr>
            <td width="15">
                <img src="${pageContext.request.contextPath}/images/new_019.jpg" border="0">
            </td>
            <td width="100%" background="${pageContext.request.contextPath}/images/new_020.jpg"
                height="20"></td>
            <td width="15">
                <img src="${pageContext.request.contextPath }/images/new_021.jpg" border="0">
            </td>
        </tr>
        </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="98%" border="0">
        <tbody>
        <tr>
            <td width="15" background="${pageContext.request.contextPath}/images/new_022.jpg">
                <img src="${pageContext.request.contextPath}/images/new_022.jpg" border="0">
            </td>
            <td valign="top" width="100%" bgcolor="#ffffff">
                <table cellspacing="0" cellpadding="5" width="100%" border="0">
                    <tr>
                        <td class="manageHead">当前位置：客户管理 &gt; 客户列表</td>
                    </tr>
                    <tr>
                        <td height="2"></td>
                    </tr>
                </table>
                <table bordercolor="#ffffff" cellspacing="0" cellpadding="0" width="100%"
                       align="center" border="0">
                    <tbody>
                    <tr>
                        <td height="25">
                            <table cellspacing="0" cellpadding="2" border="0">
                                <tbody>
                                <tr>

                                    <td>客户名称：</td>
                                    <td><s:textfield class="textbox" id="custName"
                                                     style="width: 80px" maxlength="50"
                                                     name="custName"/>
                                    </td>

                                    <td>客户级别：</td>
                                    <td id="custLevel_data"
                                        data="<s:property value="cstLevel.dictId" />">
                                        <select name="cstLevel.dictId" id="custLevel"
                                                style="width: 100px;height:
                            22px;">
                                            <option value="0">请选择</option>
                                        </select>
                                    </td>

                                    <td>客户来源：</td>
                                    <td id="custSource_data"
                                        data="<s:property value="custSource.dictId" />">
                                        <select name="custSource.dictId" id="custSource"
                                                style="width: 100px;height:
                            22px;">
                                            <option value="0">请选择</option>
                                        </select>
                                    </td>

                                    <td>客户行业：</td>
                                    <td id="custIndustry_data"
                                        data="<s:property value="custIndustry.dictId" />">

                                        <select name="custIndustry.dictId" id="custIndustry"
                                                style="width: 100px;height:
                            22px;">
                                            <option value="0">请选择</option>
                                        </select>
                                    </td>

                                    <td>电话：</td>
                                    <td><s:textfield class="textbox" id="custPhone"
                                                     style="width: 80px" maxlength="50"
                                                     name="custPhone"/>
                                    </td>

                                    <td>手机：</td>
                                    <td><s:textfield class="textbox" id="sChannel2"
                                                     style="width: 80px" maxlength="50"
                                                     name="custMobile"/>
                                    </td>

                                    <td><input class="button" id="sButton2" type="submit"
                                               value=" 筛选 " name="sButton2"></td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <table id="grid"
                                   style="border-top-width: 0px; font-weight: normal; border-left-width: 0px; border-left-color: #cccccc; border-bottom-width: 0px; border-bottom-color: #cccccc; width: 100%; border-top-color: #cccccc; font-style: normal; background-color: #cccccc; border-right-width: 0px; text-decoration: none; border-right-color: #cccccc"
                                   cellspacing="1" cellpadding="2" rules="all" border="0">
                                <tbody>
                                <tr style="font-weight: bold; font-style: normal; background-color: #eeeeee; text-decoration: none">
                                    <td width="35%">客户名称</td>
                                    <td>客户级别</td>
                                    <td>客户来源</td>
                                    <td>电话</td>
                                    <td>手机</td>
                                    <td>操作</td>
                                </tr>

                                <s:iterator value="datas" var="customer">
                                    <tr style="font-weight: normal; font-style: normal;background-color: white; text-decoration: none">
                                        <td><s:property value="#customer.custName"/></td>
                                        <td><s:property
                                                value="#customer.cstLevel.dictItemName"/></td>
                                        <td><s:property
                                                value="#customer.custSource.dictItemName"/></td>
                                        <td><s:property value="#customer.custPhone"/></td>
                                        <td><s:property value="#customer.custMobile"/></td>
                                        <td><a
                                                href="${pageContext.request.contextPath}/customer/edit.action?custId=<s:property value="#customer.custId"/>">修改</a>
                                            &nbsp;&nbsp; <a
                                                    href="${pageContext.request.contextPath}/customer/delete.action?custId=<s:property value="#customer.custId"/>">删除</a>
                                        </td>
                                    </tr>
                                </s:iterator>

                                </tbody>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
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
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>
            <td width="15" background="${pageContext.request.contextPath}/images/new_023.jpg">
                <img src="${pageContext.request.contextPath}/images/new_023.jpg" border="0">
            </td>
        </tr>
        </tbody>
    </table>
    <table cellspacing="0" cellpadding="0" width="98%" border="0">
        <tbody>
        <tr>
            <td width="15">
                <img src="${pageContext.request.contextPath}/images/new_024.jpg" border="0">
            </td>
            <td align="center" width="100%"
                background="${pageContext.request.contextPath}/images/new_025.jpg" height="15"></td>
            <td width="15">
                <img src="${pageContext.request.contextPath}/images/new_026.jpg" border="0">
            </td>
        </tr>
        </tbody>
    </table>
</form>
<s:debug/>
</body>

</html>