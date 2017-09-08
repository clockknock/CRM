<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<TITLE>联系人列表</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/Style.css"
	type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Manage.css"
	type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>

<script language=javascript>
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.customerForm.submit();
	}
</script>

<meta content="MSHTML 6.00.2900.3492" name="GENERATOR">
</head>

<body>
	<form id="customerForm" name="customerForm"
		action="${pageContext.request.contextPath}/linkman/list.action"
		method="post">

		<table cellSpacing=0 cellPadding=0 width="98%" border="0">
			<tbody>
				<tr>
					<td width="15"><img
						src="${pageContext.request.contextPath }/images/new_019.jpg"
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
						background="${pageContext.request.contextPath }/images/new_022.jpg">
						<img src="${pageContext.request.contextPath }/images/new_022.jpg"
						border="0">
					</td>
					<td valign="top" width="100%" bgcolor="#ffffff">
						<table cellspacing="0" cellpadding="5" width="100%" border="0">
							<tr>
								<td class="manageHead">当前位置：联系人管理 &gt; 联系人列表</td>
							</tr>
							<tr>
								<td height="2"></td>
							</tr>
						</table>
						<table bordercolor="#cccccc" cellspacing="0" cellpadding="0"
							width="100%" align="center" border="0">
							<tbody>
								<tr>
									<td height="25">
										<table cellspacing="0" cellpadding="2" border="0">
											<tbody>
												<tr>
													<td>联系人名称：</td>
													<td><input class="textbox" id="sChannel2"
														style="WIDTH: 80px" maxLength="50" name="lkm_name"></td>

													<td>性别：</td>
													<td><select name="lkm_gender"
														style="WIDTH: 80px; height: 21px" class="textbox">
															<option value="0">请选择</option>
															<option value="1">男</option>
															<option value="2">女</option>
													</select>
													<td>办公电话：</td>
													<td><input class="textbox" id="sChannel2"
														style="WIDTH: 80px" maxLength="50" name="lkm_phone"></td>

													<td>手机：</td>
													<td><input class="textbox" id="sChannel2"
														style="WIDTH: 80px" maxLength="50" name="lkm_mobile"></td>

													<td>邮箱：</td>
													<td><input class="textbox" id="sChannel2"
														style="WIDTH: 80px" maxLength="50" name="lkm_email"></td>

													<td>QQ：</td>
													<td><input class="textbox" id="sChannel2"
														style="WIDTH: 80px" maxLength="50" name="lkm_qq"></td>

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
												<tr
													style="font-weight: bold; font-style: normal; background-color: #eeeeee; text-decoration: none">
													<td>联系人名称</td>
													<td>性别</td>
													<td>办公电话</td>
													<td>手机</td>
													<td>邮箱</td>
													<td>QQ</td>
													<td>操作</td>
												</tr>

												
													<tr
														style="font-weight: normal; font-style: normal; background-color: white; text-decoration: none">
														<td>${linkman.lkm_name}</td>
														<td>${linkman.lkm_gender}</td>
														<td>${linkman.lkm_phone}</td>
														<td>${linkman.lkm_mobile}</td>
														<td>${linkman.lkm_email}</td>
														<td>${linkman.lkm_qq}</td>
														<td><a
															href="${pageContext.request.contextPath}/linkman/edit.action?lkm_id=<s:property value='#linkman.lkm_id' />">修改</a>
															&nbsp;&nbsp; <a
															href="${pageContext.request.contextPath}/linkman/delete.action?lkm_id=<s:property value='#linkman.lkm_id' />">删除</a>
														</td>
													</tr>
												

											</tbody>
										</table>
									</td>
								</tr>

								<tr>
									<td><span id="pagelink">
											<div
												style="line-height: 20px; height: 20px; text-align: right">
												共[<b><s:property value="totalCount" /></b>]条记录,[<b><s:property
														value="totalPage" /></b>]页 ,每页显示

												<s:select name="pageSize" onchange="javascript:to_page()"
													list="#{'3':'3','5':'5','10':'10','20':'20','30':'30'}" />

												条
												<s:if test="currentPage > 1">
												[<a href="javascript:to_page(${currentPage-1})">前一页</a>] 
												</s:if>

												<B>${currentPage}</B>

												<s:if test="currentPage < totalPage"> 
												[<a href="javascript:to_page(${currentPage+1})">后一页</a>] 
												</s:if>

												到
												<s:textfield type="text" size="3" id="page"
													name="currentPage" />

												页 <input type="button" value="Go"
													onclick="javascript:to_page()" />
											</div>
									</span></td>
								</tr>
							</tbody>
						</table>
					</td>
					<td width="15"
						background="${pageContext.request.contextPath}/images/new_023.jpg">
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
					<td align="middle" width="100%"
						background="${pageContext.request.contextPath}/images/new_025.jpg"
						height="15"></td>
					<td width="15"><img
						src="${pageContext.request.contextPath}/images/new_026.jpg"
						border="0"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>

</html>