<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>客户列表</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<link href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/css/Manage.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>

		<script language=javascript>
			function to_page(page) {
				if(page) {
					$("#page").val(page);
				}
				document.customerForm.submit();
			}
		</script>

		<meta content="MSHTML 6.00.2900.3492" name="GENERATOR" />
	</HEAD>

	<body>
		<form id="customerForm" name="customerForm" action="${pageContext.request.contextPath }/customerServlet?method=list" method=post>

			<table cellspacing="0" cellpadding="0" width="98%" border="0">
				<tbody>


					<tr>
						<td width="15">
							<img src="${pageContext.request.contextPath}/images/new_019.jpg" border="0">
						</td>
						<td width="100%" background="${pageContext.request.contextPath}/images/new_020.jpg" height="20"></td>
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
							<table bordercolor="#ffffff" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
								<tbody>
									<tr>
										<td height="25">
											<table cellspacing="0" cellpadding="2" border="0">
												<tbody>
													<tr>
													
													<td>客户名称：</td>
													<td><input class="textbox" id="sChannel2"
														style="width: 80px" maxlength="50" name="cust_name">
													</td>

													<td>客户级别：</td>
													<td><select class="textbox" id="sChannel2"
														style="width: 80px; height: 19px;"
														name="custLevel.dict_id">
															<option value="0">请选择</option>
													</select></td>

													<td>客户来源：</td>
													<td><select class="textbox" id="sChannel2"
														style="width: 80px; height: 19px;"
														name="custSource.dict_id">
															<option value="0">请选择</option>
													</select></td>
													
													<td>客户行业：</td>
													<td><select class="textbox" id="sChannel2"
														style="width: 80px; height: 19px;"
														name="custIndustry.dict_id">
															<option value="0">请选择</option>
													</select></td>

													<td>电话：</td>
													<td><input class="textbox" id="sChannel2"
														style="width: 80px" maxlength="50" name="custName">
													</td>

													<td>手机：</td>
													<td><input class="textbox" id="sChannel2"
														style="width: 80px" maxlength="50" name="custName">
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
											<table id="grid" style="border-top-width: 0px; font-weight: normal; border-left-width: 0px; border-left-color: #cccccc; border-bottom-width: 0px; border-bottom-color: #cccccc; width: 100%; border-top-color: #cccccc; font-style: normal; background-color: #cccccc; border-right-width: 0px; text-decoration: none; border-right-color: #cccccc" cellspacing="1" cellpadding="2" rules="all" border="0">
												<tbody>
													<tr style="font-weight: bold; font-style: normal; background-color: #eeeeee; text-decoration: none">
														<td>客户名称</td>
														<td>客户级别</td>
														<td>客户来源</td>
														<td>联系人</td>
														<td>电话</td>
														<td>手机</td>
														<td>操作</td>
													</tr>
													<c:forEach items="${list}" var="customer">
														<tr style="font-weight: normal; font-style: normal; background-color: white; text-decoration: none">
															<td>${customer.custName }</td>
															<td>${customer.custLevel }</td>
															<td>${customer.custSource }</td>
															<td>${customer.custLinkman }</td>
															<td>${customer.custPhone }</td>
															<td>${customer.custMobile }</td>
															<td>
																<a href="${pageContext.request.contextPath }/customerServlet?method=edit&custId=${customer.custId}">修改</a>
																&nbsp;&nbsp;
																<a href="${pageContext.request.contextPath }/customerServlet?method=delete&custId=${customer.custId}">删除</a>
															</td>
														</tr>

													</c:forEach>

												</tbody>
											</table>
										</td>
									</tr>

									<tr>
										<td>
											<span id="pagelink">
											<div
												style="line-height: 20px; height: 20px; text-align: right">
												共[<b>${total}</b>]条记录,[<b>${totalPage}</b>]页
												,每页显示
												<select name="pageSize">
												
												<option value="15" <c:if test="${pageSize==1 }">selected</c:if>>1</option>
												<option value="30" <c:if test="${pageSize==30 }">selected</c:if>>30</option>
												</select>
												条
												[<a href="javascript:to_page(${page-1})">前一页</a>]
												<B>${page}</B>
												[<a href="javascript:to_page(${page+1})">后一页</a>] 
												到
												<input type="text" size="3" id="page" name="page" />
												页
												
												<input type="button" value="Go" onclick="to_page()"/>
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
						<td align=middle width="100%" background="${pageContext.request.contextPath}/images/new_025.jpg" height="15"></td>
						<td width="15">
							<img src="${pageContext.request.contextPath}/images/new_026.jpg" border="0">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</body>

</html>