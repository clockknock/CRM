package org.itheima.crm.dao

import org.itheima.crm.domain.User

/**
 * Created by 钟未鸣 on 2017/9/8 .
 */
interface  UserDao {
    fun save(user: User)
}