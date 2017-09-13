package org.itheima.crm.web.action

import com.opensymphony.xwork2.ActionSupport

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
class LinkmanAction : ActionSupport() {
    private val LISTSUCCESS="listSuccess"

    fun do_list(): String {
        return LISTSUCCESS
    }
}