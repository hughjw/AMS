package com.yakesoft.ssm.UserServiceimpl;
import com.yakesoft.ssm.entity.User;
import com.yakesoft.ssm.mapper.UserMapper;
import com.yakesoft.ssm.service.UserService;

public class UserServiceImpl implements UserService {
    private UserMapper userMapper;
    public boolean addUser(User user) {
        return userMapper.addUser(user);
    }

    public boolean updateUser(User user) {
        return userMapper.updateUser( user);
    }

    public boolean deleteUser(int id) {
        return userMapper.deleteUser( id);
    }

    public User selectUser(int id) {
        return userMapper.selectUserById( id);
    }

    public User selectAllUser() {
        return userMapper.selectAllUser();
    }

    @Override
    public User selectByUsernamePassword(String username,String password) {
        return  userMapper.selectByUsernamePassword();
    }
}
