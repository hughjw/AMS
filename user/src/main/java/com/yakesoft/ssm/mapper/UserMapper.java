package com.yakesoft.ssm.mapper;

import com.yakesoft.ssm.entity.User;

public interface UserMapper {
     /**
      *  添加用户
      * @param user
      * @return  boolean
      */
     boolean  addUser(User  user);

     /**
      * 跟新用户
      * @param user
      * @return
      */
     boolean  updateUser(User user);

     /**
      *通过id删除用户
      * @param id
      * @return
      */
     boolean  deleteUser(int id);

     /**
      * 通过Id查询用户
      * @return
      */
     User   selectUserById(int id);

     /**
      * 查询所有用户
      * @return
      */
     User  selectAllUser();
     User  selectByUsernamePassword();
}
