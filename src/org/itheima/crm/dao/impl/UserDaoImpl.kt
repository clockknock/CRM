package org.itheima.crm.dao.impl

import org.itheima.crm.dao.UserDao
import org.itheima.crm.domain.User
import org.itheima.crm.utils.MD5Util
import org.springframework.orm.hibernate5.support.HibernateDaoSupport
import org.springframework.transaction.annotation.Transactional

/**
* Created by 钟未鸣 on 2017/9/8 .
*/
@Transactional
open class UserDaoImpl : UserDao,HibernateDaoSupport() {

    override fun save(user: User) {
        user.userPassword=MD5Util.deafultMd5(user.userPassword!!)
        hibernateTemplate.save(user)
    }
}