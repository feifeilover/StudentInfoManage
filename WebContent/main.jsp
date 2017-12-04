<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>JSP学生管理系统</title>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
<script type="text/javascript" sr="jquery-easyui-1.5.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function() {
		var treeData=[{
			text:"根",
			children:[{
				text:"班级信息管理系统",
				attributes:{url:"gradeInfoManage.jsp"}
			},{
				text:"学生信息管理系统",
				attributes:{url:"studentInfoManage.jsp"}
			}]
		}];
		$('#tree').tree({
			data:treeData,
			lines:true,
			
			onClick:function(node) {
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		});
		//新增tabs
		function openTab(text,url) {
			if($("#tabs").tabs('exists',text)){
				$("#tabs").tabs('select',text);
			}else {
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$("#tabs").tabs('add',{
					title:text,
					closable:true,
					content:content
				});
					
			}
		}
		
	});
	

</script>

</head>
<body class="easyui-layout">
	<div region="north" style="height:100px; background-color:#E0EDFF"><img src="images/main.jpg"></div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页"></div>
		</div>
		
	</div>
	<div region="west" style="width:100px" title="导航菜单" split="true">
		<ul id="tree"></ul>
	</div>
	<div region="south" style="height:25px" align="center">版权所有：菲菲所有</div>
	

</body>
</html>