<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日历值的获取</title>
<!-- 必需先导入jquery函数库，再导入easyui函数库 -->
<script src="../js/easyui/jquery.min.js"></script>
<script src="../js/easyui/jquery.easyui.min.js"></script>
<script src="../js/easyui/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="../js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../js/easyui/themes/default/easyui.css">
<script type="text/javascript">
      $(document).ready(function(){
    	  $("#dt").datetimebox({
    		  value:'2016-12-06 14:55:00',
    		  width:150,
    		  required: true,    
    		  showSeconds: false //设置不显示秒 
    	  });
    	  $("#1").click(function(){
    		  alert($("#dt").val());//val只能获得初始值，改变后的值获取不到
    	  });
    	  $("#2").click(function(){
    		  alert($("#dt").datetimebox('getValue'));//可以获得改变后的值
    	  });
    	  $("#set").click(function(){
    		  $("#dt").datetimebox('setValue',"2016-10-06 14:30:00");
    	  });
      })
</script>
</head>
<body>
   <input id="dt" type="text" name="birthday"></input>
   <input class="easyui-datetimebox" id="tt" type="text" name="bb" ></input>
   <button id="set">setValue</button><br/>    
   <button id="1">val</button>
   <button id="2">getValue</button>     
</body>
</html>