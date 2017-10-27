<html>
<title>登录雅可AMS</title>
<body>
<div class="w loc">
    <div class="h-title" id="logo">
        <div class="l" style="margin: 13px 10px;font-size: 20px;font-family: '微软雅黑';letter-spacing: 2px">欢迎登录</div>
    </div>
</div>
< id="jvForm" cation=""  method="post">
    <input type="hidden" name="returnUrl" value="${param.returnUrl}"/>
    <li id="errorName" class="errorTip" <c:if test="${empty error}"> style="display:none"</c:if>>${error}></li>
    <li><label for="username">用户名：</label>
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
    <label for="captcha">验证码：</label>
    <span class="bg_text small">
        <input type="text" id="captcha" name="code" maxlength="7"/>
    </span>
    <img src="/shopping/getCodeImage.aspx" onclick="this.src='/shopping/getCodeImage.aspx?d='+new Date()" class="code" alt="换一张" /><a href="javascript:void(0);" onclick="$('.code').attr('src','/shopping/getCodeImage.aspx?d='+new Date())" title="换一张">换一张</a></li>
</li>
<li>
    <input type="submit" value="登录" class="hand btn66x23">
    <a href="regist.jsp">注册</a>
    <!--title属性可以让鼠标悬停在超链接上的时候，显示该超链的文字注释-->
    <a href="#"title="忘记密码？">忘记密码</a>
</li>
</ul>
</form>
</body>
</html>
