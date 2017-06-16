package com.test.CRUD.service;

import com.test.CRUD.model.User;

import java.util.List;

public interface UserService {
    int createUser(User user);
    User updateUser(User user);
    void deleteUser(int id);
    List<User> getAllUsers();
    User getUser(int id);
    List<User> getAllUsers(String userName);
}
