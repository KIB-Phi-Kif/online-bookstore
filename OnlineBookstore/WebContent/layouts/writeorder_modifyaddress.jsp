<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@page import="com.chicken.util.C"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/pro_city_town/area.js"></script>
<script type="text/javascript" src="js/pro_city_town/location.js"></script>
<title>修改地址</title>
</head>
<body>
	<%
		//获取该地址的所有信息，以便之后填入对话框中
		String aid=request.getParameter("aid");
		String receiver_name=request.getParameter("receiver_name");
		String province=request.getParameter("province");
		String city=request.getParameter("city");
		String town=request.getParameter("town");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String fixphone=request.getParameter("fixphone");
		String code=request.getParameter("code");
	%>
	
	<div class="addaddress_window">
		<div>收&nbsp;&nbsp;货&nbsp;人&nbsp;&nbsp;<input type="text" name="receiver_name" autofocus="autofocus" value="<%=receiver_name%>"></div>
		
		<!-- 省市区三级联动 -->
		<div>收货地区&nbsp;&nbsp;<select id="loc_province" style="width:80px;"></select>
		<select id="loc_city" style="width:100px;"></select>
		<select id="loc_town" style="width:120px;"></select></div>
		
		<div>收货地址&nbsp;&nbsp;<input type="text" name="receive_address" style="width:448px;" value="<%=address%>"></div>
		<div>邮政编码&nbsp;&nbsp;<input type="text" name="receive_code" value="<%=code%>"></div>
		<div>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机&nbsp;&nbsp;<input type="text" name="receive_phone" value="<%=phone%>">&nbsp;&nbsp;或&nbsp;&nbsp;固定电话&nbsp;&nbsp;<input type="text" name="receive_fixphone" value="<%=fixphone%>"></div>
		<input type="submit" class="greenbutton" value="修改" style="margin-left:67px;margin-top:5px;" onclick="modifyAddress('<%=aid%>')">
	</div>

<script>
$(document).ready(function(){
	showLocation();

	//初始时设置选中的省、市、区
	$("#loc_province option").each(function(){
		if($(this).text() == '<%=province%>')
		{
			$(this).attr("selected","selected");
			$('#loc_province').trigger("change"); //触发province的change事件
			return false; //跳出所有循环
		}
	});
	$("#loc_city option").each(function(){
		if($(this).text() == '<%=city%>')
		{
			$(this).attr("selected","selected");
			$('#loc_city').trigger("change"); //触发city的change事件
			return false; //跳出所有循环
		}
	});
	$("#loc_town option").each(function(){
		if($(this).text() == '<%=town%>')
		{
			$(this).attr("selected","selected");
			return false; //跳出所有循环
		}
	});
});
</script>	
</body>
</html>