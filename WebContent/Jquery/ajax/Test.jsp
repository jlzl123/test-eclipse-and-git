<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="../../js/easyui/jquery.min.js"></script>
<script type="text/javascript">
     var shuju=[];
     
     put=function(){
    	 alert(shuju);
     }
     
     $(document).ready(function(){
    	 $("button").click(function(){
    		 $.ajax({
    			 type:"get",
    			 url:"/easyui/DatagridTest1",
    			 success:function(data){
    				 shuju=data;
    			 }
    		 });
    	 put();
    	 });
    	 $("#tt").datagrid({
			 columns:[[
			           {field:'name',title:'name'},
			            field:'name',title:'name'},
			            field:'name',title:'name'}
			            ]]
		 });
     })
</script>
<body>
  <button>ajax请求内容</button>
  <table id="tt"></table>
</body>
</html>