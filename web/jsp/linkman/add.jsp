﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加联系人</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/Style.css"
	type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/Manage.css"
	type="text/css" rel="stylesheet" />
<meta content="MSHTML 6.00.2900.3492" name="GENERATOR" />
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
								<td colspan="3"><select name="customer.cust_id" class="textbox"
									style="width: 180px; height: 21px;">
										<option value="0">请选择</option>
								</select></td>
							</tr>
							<tr>
								<td>联系人名称：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_name"></td>

								<td>联系人性别：</td>
								<td><input type="radio" value="1" name="lkm_gender">男
									<input type="radio" value="2" name="lkm_gender">女</td>
							</tr>

							<tr>
								<td>联系人办公电话 ：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_phone"></td>

								<td>联系人手机 ：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_mobile"></td>
							</tr>

							<tr>
								<td>联系人邮箱 ：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_email"></td>

								<td>联系人QQ ：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_qq"></td>
							</tr>

							<tr>
								<td>联系人职位 ：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_position"></td>

								<td>联系人备注 ：</td>
								<td><input class="textbox" id="sChannel2"
									style="width: 180px" maxlength="50" name="lkm_comment"></td>
							</tr>

							<tr>
								<td></td>
								<td><s:actionerror /></td>
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
					<td align=middle width="100%"
						background="${pageContext.request.contextPath}/images/new_025.jpg"
						height=15></td>
					<td width="15"><img
						src="${pageContext.request.contextPath}/images/new_026.jpg"
						border="0"></td>
				</tr>
			</tbody>
		</table>
	</FORM>
</body>

</html>