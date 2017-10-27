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
      
    <title>添加通讯录</title>  
      
    <script type="text/javascript">  
    function addAddress(){  
        var form = document.forms[0];  
        form.action = "<%=basePath%>address/addAddress";  
        form.method="post";  
        form.submit();  
    }  
	</script>  
  
  </head>  
    


  <body>  
    <h1>添加通讯录</h1>  
    <form action="aa" name="addressForm">  
      
       <table border="1" >
            <tr>  
                <th>联系人</th>
                	<td>
               			<input type="text"  name="contactor" style="color:#FF0000;" />联系人不能为空!
              	  	</td>  
            </tr> 
             <tr>  
                <th>地址</th> 
                <td>
               			<input type="text" name="address" style="color:#FF0000;">地址不能为空!
              	 </td>   
            </tr> 
             <tr>  
                <th>电话</th>
                <td>
               			<input type="text" name="phone"style="color:#FF0000;">电话不能为空!
              	 </td>    
            </tr> 
            <tr> 
                <th>email</th> 
                <td>
               		<input type="text"  name="email" style="color:#FF0000;" onblur="checktxt();">email不能为空

              	 </td> 
            </tr> 
             <tr> 
                <th></th> 
                <td>
                 <input type="button" value="添加联系人" onclick="addAddress()"> 
              	 </td> 
            </tr>                    
       </table>
        
    </form> 
   
  </body>  
</html>