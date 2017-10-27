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
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>  
    <title>我的通讯录</title>  
      <style type="text/css">  
    .odd{  
        background-color: #f2f2f2;  
    }  
    .even{  
        background-color: #dddddd;  
    }  
</style>
    <script type="text/javascript">  
    function del(id){  
        $.get("<%=basePath%>deladdress/deladdress?id=" + id,function(data){  
            if("success" == data.result){  
                alert("删除成功");  
                window.location.reload();  
            }else{  
                alert("删除失败");  
            }  
        });  
    }  
</script>  

  </head>  
    
  <body>  
   
    <table border="1"  align="center">  
        <tbody>  
            <tr class="${st.index%2==0?'even':'odd' }">  
                <th align="center">序号</th>  
                <th align="center">联系人</th>  
                <th align="center">联系人地址</th> 
                <th align="center">联系人电话</th>  
                <th align="center">E-mail</th>  
                <th align="center">操作</th>  
            </tr>  
            <c:if test="${!empty addressList }">  
                <c:forEach items="${addressList}" var="address">  
                    <tr>  
                        <td>${address.id }</td>  
                        <td>${address.contactor}</td>
                        <td>${address.address}</td>
                        <td>${address.phone}</td> 
                        <td>${address.email}</td>  
                        <td> 
                        <!-- <a href="<%=basePath%>address/getAddress?id=${address.id}">编辑</a>  -->
                          <a href="${pageContext.request.contextPath}/address/getAddress?id=${address.id}">编辑</a>  
                          <a href="${pageContext.request.contextPath}/address/deladdress?id=${address.id}" rel="external nofollow" >删除</a>
                        </td>
                    </tr>               
                </c:forEach>  
            </c:if>  
        </tbody>  
    </table> 
     <h6   align="center" ><a href="<%=basePath%>address/toAddAddress" >新增联系人</a></h6>   
  </body>  
</html>  