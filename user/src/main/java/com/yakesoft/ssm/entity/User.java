package com.yakesoft.ssm.entity;

import java.io.Serializable;
public class User implements Serializable{
    private  int  id ;//用户id
    private  String username;//用户名
    private  String  password;//密码
    private  String  repassword;//确认密码
    private  String  date;//出生日期
    private  String  email;//邮箱
    private  String  sex;//性别
    private   String  comefromguo;//国家
    private   String  comefromsheng;//省份

    public User(int id, String username, String password, String repassword, String date, String email, String sex, String comefromguo, String comefromsheng) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.repassword = repassword;
        this.date = date;
        this.email = email;
        this.sex = sex;
        this.comefromguo = comefromguo;
        this.comefromsheng = comefromsheng;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getComefromguo() {
        return comefromguo;
    }

    public void setComefromguo(String comefromguo) {
        this.comefromguo = comefromguo;
    }

    public String getComefromsheng() {
        return comefromsheng;
    }

    public void setComefromsheng(String comefromsheng) {
        this.comefromsheng = comefromsheng;
    }

    public User(String date) {
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", repassword='" + repassword + '\'' +
                ", date='" + date + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
