package org.itheima.crm.service.impl

import org.itheima.crm.dao.UserDao
import org.itheima.crm.domain.User
import org.itheima.crm.service.UserService

/**
 * Created by 钟未鸣 on 2017/9/8 .
 */
class UserServiceImpl :UserService {
    private var userDao: UserDao? =null
    fun setUserDao(userDao: UserDao){
        this.userDao = userDao
    }

    override fun save(user: User) {
        userDao?.save(user)
    }

    override fun login(user: User?): User? {
       var user:User? = userDao?.login(user)
        return user
    }

}

