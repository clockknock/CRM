package org.itheima.crm.service.impl

import org.hibernate.criterion.DetachedCriteria
import org.hibernate.criterion.Restrictions
import org.itheima.crm.dao.UserDao
import org.itheima.crm.domain.User
import org.itheima.crm.service.UserService
import org.itheima.crm.utils.MD5Util

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

    override fun login(user: User): User? {
        val criteria = DetachedCriteria.forClass(User::class.java)
        user.userPassword=MD5Util.deafultMd5(user.userPassword!!)
        criteria.add(Restrictions.eq("userCode",user.userCode))
        criteria.add(Restrictions.eq("userPassword",user.userPassword))

        val users = userDao?.login(criteria)

        if(users==null || users.size==0  ){
            return null
        }
        return users[0] as User?
    }

}

