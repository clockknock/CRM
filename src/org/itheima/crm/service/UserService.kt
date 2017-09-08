package org.itheima.crm.service

import org.itheima.crm.domain.User

/**
 * Created by 钟未鸣 on 2017/9/8 .
 */
interface UserService{
    fun save(user: User)
    fun login(user: User?): User ?
}