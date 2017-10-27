package com.yakesoft.ssm.service;

import com.yakesoft.ssm.entity.User;

public interface UserService {
    boolean  addUser(User user);
    boolean  updateUser(User user);
    boolean  deleteUser(int id);
    User   selectUser(int id);
    User  selectAllUser();
    User  selectByUsernamePassword(String username,String password);
}
