<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>登录雅可AMS</title>
<body>
<form  action="user/login">
    <li ><label for="username" >用户名：</label>
        <span class="bg_text">
            <input type="text" id="username" name="username" maxlength="100"/>
        </span>
    </li>
    <li><label for="password">密码：</label>
        <span class="bg_text">
             <input type="password" id="password" name="password" maxlength="32">
        </span>
    </li>
    <li>
          <input type="submit" value="登录" class="hand btn66x23">
          <a href="config/res">注册</a>
         <!--title属性可以让鼠标悬停在超链接上的时候，显示该超链的文字注释-->
          <a href="#"title="忘记密码？">忘记密码</a>
    </li>
    </ul>
</form>
</body>
</html>
