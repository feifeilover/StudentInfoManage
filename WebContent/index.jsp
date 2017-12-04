<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>JSP学生管理系统</title>
<script type="text/javascript">
	function resetValue() {
		document.getElementById("userName").value = "";
		document.getElementById("password").value = "";
	}
</script>
</head>
<body>
	<div align="center">
		<form action="login" method="post">
			<table background="images/login.jpg" width="740" height="500"
				border="0">
				<tr height="180">
				</tr>
				<tr height="10">
					<td width="38%"></td>
					<td width="10%">用户名:</td>
					<td width="33%"><input type="text" name="userName" value="${userName }"
						id="userName" /></td>
					<td width="19%"></td>
				</tr>
				<tr height="10">
					<td width="38%"></td>
					<td width="10%">密码:</td>
					<td width="33%"><input type="password" name="password"
						value="${password }" id="password" /></td>
					<td width="19%"></td>
				</tr>
				<tr height="10">
					<td width="38%"></td>
					<td width="10%"><input type="button" value="重置"
						onclick="resetValue()" /></td>
					<td width="33%"><input type="submit" value="登录" /></td>
					<td width="19%"></td>
				</tr>
				<tr height="10">
					<td width="38%"></td>
					<td colspan="3">
						<font color="red">${error }</font>					
					</td>
				</tr>
				<tr>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>