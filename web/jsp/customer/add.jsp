<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>添加客户</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<link href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/css/Manage.css" type="text/css" rel="stylesheet" />
		<script	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
		<script>
            console.log("add.jsp load")
			$(function(){
			    var url ="${pageContext.request.contextPath}/customer/dict.action"
				var data={"dictTypeCode":"001"}
				var callback= function (dicts) {
                    $(dicts).each(function(i,element){
					    console.log(element)
					})
                }
                var type="json"
				$.post(url,data,callback,type)

			})
		</script>
		<meta content="MSHTML 6.00.2900.3492" name="GENERATOR" />
	</head>

	<body>
		<form id="form1" name="form1"
			  action="${pageContext.request.contextPath}/customer/save.action" method="post">

			<table cellspacing="0" cellpadding="0" width="98%" border="0">
				<tbody>
					<tr>
						<td width="15">
							<IMG src="${pageContext.request.contextPath}/images/new_019.jpg" border="0">
						</td>
						<td width="100%" background="${pageContext.request.contextPath}/images/new_020.jpg" height="20"></td>
						<td width="15">
							<img src="${pageContext.request.contextPath}/images/new_021.jpg" border="0">
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
									<td class="manageHead">当前位置：客户管理 &gt; 添加客户</td>
								</tr>
								<tr>
									<td height="2"></td>
								</tr>
							</table>

							<table cellspacing="0" cellpadding="5" border="0">

								<tr>
									<td>客户名称：</td>
									<td>
										<input class="textbox" id="cust_name" style="width: 180px"
											   maxlength="50"
											   name="custName">
									</td>
									<td>客户级别 ：</td>
									<td>
										<input class="textbox" id="cust_level" style="width: 180px"
											   maxlength="50" name="custLevel">
									</td>
								</tr>

								<tr>
									<td>信息来源 ：</td>
									<td>
										<input class="textbox" id="cust_source" style="width: 180px"
											   maxlength="50" name="custSource">
									</td>
									<td>所属行业 ：</td>
									<td>
										<input class="textbox" id="cust_industry" style="width: 180px"
											   maxlength="50" name="custIndustry">
									</td>
								</tr>

								<tr>
									<td>固定电话 ：</td>
									<td>
										<input class="textbox" id="cust_phone" style="width: 180px"
											   maxlength="50" name="custPhone">
									</td>
									<td>移动电话 ：</td>
									<td>
										<input class="textbox" id="cust_mobile" style="width: 180px"
											   maxlength="50" name="custMobile">
									</td>
								</tr>

								<tr>
									<td rowspan="2">
										<input class=button id=sButton2 type=submit value=" 保存 " name="sButton2">
									</td>
								</tr>
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
						<td align="middle" width="100%" background="${pageContext.request.contextPath}/images/new_025.jpg" height="15"></td>
						<td width="15">
							<img src="${pageContext.request.contextPath}/images/new_026.jpg" border="0">
						</td>
					</tr>
				</tbody>
			</table>
		</FORM>
	</body>

</html>