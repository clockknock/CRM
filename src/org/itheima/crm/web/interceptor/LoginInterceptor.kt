package org.itheima.crm.web.interceptor

import com.opensymphony.xwork2.ActionInvocation
import com.opensymphony.xwork2.interceptor.AbstractInterceptor
import org.apache.struts2.ServletActionContext
import org.itheima.crm.web.action.UserAction

/**
 * Created by 钟未鸣 on 2017/9/10 .
 * 登录拦截器
 */
class LoginInterceptor: AbstractInterceptor(){
    private val NEEDLOGIN="needLogin"

    override fun intercept(invocation: ActionInvocation?): String {
        //如果是UserAction,放行
        val action = invocation?.action
        if(action is UserAction){
            return invocation.invoke()
        }
        val user = ServletActionContext.getRequest().session.getAttribute("user")
        if(user !=null){
            //已经登录,放行
            if (invocation != null) {
                return invocation.invoke()
            }
        }
        return NEEDLOGIN
    }

}