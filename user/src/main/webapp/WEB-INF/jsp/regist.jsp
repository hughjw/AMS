<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>注册雅可AMS</title>
<style type="text/css">
    div{}
    #d1{background-color:yellow;}
    #d2{background-color:yellow;}
    #d3{background-color:yellow;}
</style>
<body>
<form>
    <table align="center">
        <tr>
            <th colspan="4" align="left" id="d1">您的账户信息</th>
        </tr>
        <tr>
            <td colspan="2" align="right">
                姓名: <font color="red">*</font>
            </td>
            <td colspan="2" align="right">
                <input type="text" size="36" value="英文字母，数字或者下划线，长度为4-16个字符">
            </td>
        </tr>

        <tr>
            <td colspan="2" align="right">
                密码: <font color="red">*</font>
            </td>
            <td colspan="2" align="right">
                <input type="text" size="36" value="6-16个字母或数字组成">
            </td>
        </tr>

        <tr>
            <td colspan="2" align="right">
                重新输入密码:<font color="red">*</font>
            </td>
            <td colspan="2" align="right">
                <input type="text" size="36" value="和密码保持一致">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                出生日期:<font color="red">*</font>
            </td>
            <td colspan="2" align="right">
                <input type="text" size="36" value="yyyy-MM-dd">
            </td>
        </tr>

        <tr>
            <td colspan="2" align="right">性别</td>
            <td>
                <input type="radio" size="36" name="gender" checked="checked" >男
                <input type="radio" size="36" name="gender" checked="checked">女
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                邮箱<font  color="red">* </font>
            </td>
            <td>
                <input type="text" size="36">
            </td>
        </tr>
        <tr colspan="4" align="left" id="d2">
            <td>
                所在地<font color="red">*</font>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">国家</td>
            <td colspan="2">
                <select>
                    <option>-----请选择------</option>
                    <opiton>国家1</opiton>
                    <opiton>国家2</opiton>
                    <option>国家3</option>
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="right">省份
            <td colspan="2">
                <select>
                    <option>-----请选择------</option>
                    <opiton>省份</opiton>
                    <opiton>省份</opiton>
                    <option>省份</option>
                </select>
            </td>
        </tr>
        <tr colspan="4" align="left" id="d3">
            <td>
                确认信息<font color="red">*</font>
                <br>
            </td>
        <tr>
            <td colspan="4"  align="center">
                <input type="submit" value="提交注册"><br/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>