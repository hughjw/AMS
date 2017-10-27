<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>编辑用户</title>  
      
    <script type="text/javascript">  
    function updateAddress(){  
        var form = document.forms[0];  
        form.action = "<%=basePath%>address/updateaddress";  
        form.method="post";  
        form.submit();  
    }  
</script>  
  
  </head>  
    
  <body>  
    <h1>编辑通讯录</h1>  
    <form action="" name="userForm">  
    	 <input type="hidden" name="id" value="${address.id }"/>
    	 <table border="1" >
            <tr>  
                <th>联系人</th>
                	<td>
               			<input type="text"  name="contactor" style="color:#FF0000;"  value="${address.contactor}"/>
              	  	</td>  
            </tr> 
             <tr>  
                <th>地址</th> 
                <td>
               			<input type="text" name="address" style="color:#FF0000;" value="${address.address }">
              	 </td>   
            </tr> 
             <tr>  
                <th>电话</th>
                <td>
               			<input type="text" name="phone"style="color:#FF0000;" value="${address.phone}">
              	 </td>   
            </tr> 
            <tr> 
                <th>email</th> 
                <td>
               		<input type="text"  name="email" style="color:#FF0000;" value="${address.email}">

               </td> 
            </tr> 
             <tr> 
                <th></th> 
                <td>
                <input type="button"  value="编辑" onclick="updateAddress()">
              	</td> 
            </tr>                    
       </table>
    </form> 
     
  </body>  
    
</html>  