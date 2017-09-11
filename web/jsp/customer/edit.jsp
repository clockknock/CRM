<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>修改客户</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath }/css/Style.css"
	type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/Manage.css"
	type="text/css" rel="stylesheet" />
<meta content="MSHTML 6.00.2900.3492" name="GENERATOR" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

<style type="text/css">
.errorMessage {
	list-style: none;
	color: red;
	padding: 0px;
	margin: 0px;
}
</style>

<script type="text/javascript">
	//根据类型查询数据
	function loadDicts(id, dictTypeCode) {
		var url = "${pageContext.request.contextPath}/customer/dict";
		var data = {
			"dict_type_code" : dictTypeCode
		};
		var callback = function(response) {
			for (var i = 0; i < response.length; i++) {
				//插入<option>标签
				var dict = response[i];
				var select = "";

				var selectId = $("#" + id + "Data").attr("data");
				if (selectId == dict.dict_id) {
					select = " selected='selected'";
				}

				var option = "<option value='"+dict.dict_id +"'"+ select + ">"
						+ dict.dict_item_name + "</option>";
				console.log(option);
				$("#" + id).append(option);
			}

		}
		$.post(url, data, callback, "json");
	}

	//当页面加载完成时
	$(document).ready(function() {
		//加载客户级别
		loadDicts("custLevel", "006");
		//加载信息来源
		loadDicts("custSource", "002");
		//加载所属行业
		loadDicts("custIndustry", "001");
	});
</script>

</head>

<body>
	<form id="form1" name="form1"
		action="${pageContext.request.contextPath}/customer/update.action"
		method="post" enctype="multipart/form-data">
		<s:hidden name="cust_id" value="cust_id" />

		<table cellspacing="0" cellpadding="0" width="98%" border="0">
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
		<table cellspacing="0" cellpadding="0" width="98%" border="0">
			<tbody>
				<tr>
					<td width="15"
						background="${pageContext.request.contextPath}/images/new_022.jpg">
						<img src="${pageContext.request.contextPath}/images/new_022.jpg"
						border="0">
					</td>
					<td valign="top" width="100%" bgcolor="#ffffff">
						<table cellspacing="0" cellpadding="5" width="100%" border="0">
							<tr>
								<td class="manageHead">当前位置：客户管理 &gt; 修改客户</td>
							</tr>
							<tr>
								<td height="2"></td>
							</tr>
						</table>
						<table cellspacing="0" cellpadding="5" border="0">
							<tr>
								<td>客户名称：</td>
								<td><s:textfield class="textbox" id="sChannel2"
										style="width: 180px" maxlength="50" name="cust_name" /></td>

								<td>客户级别 ：</td>
								<td id="custLevelData"
									data="<s:property value='custLevel.dict_id' />"><s:select
										list="#{'0':'请选择' }" class="textbox" id="custLevel"
										name="custLevel.dict_id" style="width: 180px; height: 19px;" /></td>
							</tr>

							<tr>
								<td>信息来源 ：</td>
								<td id="custSourceData"
									data="<s:property value='custSource.dict_id' />"><s:select
										list="#{'0':'请选择' }" class="textbox" id="custSource"
										name="custSource.dict_id" style="width: 180px; height: 19px;" /></td>

								<td>所属行业 ：</td>
								<td id="custIndustryData"
									data="<s:property value='custIndustry.dict_id' />"><s:select
										list="#{'0':'请选择' }" class="textbox" id="custIndustry"
										name="custIndustry.dict_id"
										style="width: 180px; height: 19px;" /></td>
							</tr>

							<tr>
								<td>固定电话 ：</td>
								<td><s:textfield class="textbox" id="sChannel2"
										style="width: 180px" maxlength="50" name="cust_phone" /></td>

								<td>移动电话 ：</td>
								<td><s:textfield class="textbox" id="sChannel2"
										style="width: 180px" maxlength="50" name="cust_mobile" /></td>
							</tr>

							<tr>
								<td>客户资质 ：</td>
								<td><input class="textbox" id="sChannel2" type="file"
									style="width: 180px; height: 21px;" name="cust_image_file"></td>
							</tr>

							<tr>
								<td></td>
								<td><s:actionerror /></td>
							</tr>

							<tr>
								<td rowspan=2><input class="button" id="sButton2"
									type="submit" value=" 保存  " name="sButton2"></td>
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
		<table cellspacing="0" cellpadding="0" width="98%" border="0">
			<tbody>
				<tr>
					<td width="15"><img
						src="${pageContext.request.contextPath}/images/new_024.jpg"
						border="0"></td>
					<td align="center" width="100%"
						background="${pageContext.request.contextPath}/images/new_025.jpg"
						height=15></td>
					<td width="15"><img
						src="${pageContext.request.contextPath}/images/new_026.jpg"
						border="0"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>

</html>