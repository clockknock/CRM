package org.itheima.crm.web.action

import com.opensymphony.xwork2.Action
import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.itheima.crm.domain.User
import org.itheima.crm.service.UserService

/**
 * Created by 钟未鸣 on 2017/9/8 .
 */
class UserAction :ModelDriven<User>,ActionSupport() {
    private var user: User? = null
    private var userService: UserService? = null
        fun setUserService(service: UserService){
            this.userService = service
        }

    override fun getModel(): User {
        if(user==null){
            user = User()
        }
        return user as User
    }

    fun login():String{
        val loginUser: User = userService?.login(user!!) ?: return Action.ERROR

        println("登录成功 $loginUser")
        return Action.SUCCESS
    }
}