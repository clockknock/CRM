package org.itheima.crm.web.action

import com.opensymphony.xwork2.Action
import com.opensymphony.xwork2.ActionSupport

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class TestAction: ActionSupport() {

    fun test(): String{
        println("test...")
        return Action.SUCCESS
    }
}