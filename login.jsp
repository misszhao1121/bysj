<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
            body {background-image: url(img/liu3718.jpg);}
        </style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	    </script>

	</head>

  <body  marginheight="0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" text="#666666" bgcolor="#336699">
  <table align="center">
    <tr>
      <td align="center" height="400" valign="middle">
      <form action="" name="ThisForm" method="post">
      <table  background="img/loginA.jpg" width="500" height="300" border="0" cellspacing="0" cellpadding="0" style="margin-top:90" align="center">
          <tr>
            <th height="70" colspan="2" class="" scope="col"></th>
		  </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="">用户名:</th>
            <td width="60%" height="30" class="">&nbsp;<input name="userName" type="text" size="20" style="height:17px; border:solid 1px #bbbbbb"></td>
          </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="">密&nbsp;&nbsp;码:</th>
            <td height="30" class="">&nbsp;<input name="userPw" type="password" size="20" style="height:17px; border:solid 1px #bbbbbb"></td>
          </tr>
          <tr>
            <th height="35" colspan="2" scope="row" class="">							
            <img src="<%=path %>/img/dl.gif" onClick="check1()"> 
           <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/></th>
		</tr>
        </table>
      </form>
      </td>
    </tr>
  </table>
</body>
</html>
