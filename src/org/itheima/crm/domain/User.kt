package org.itheima.crm.domain

/**
 * Created by 钟未鸣 on 2017/9/8.
 */

data class User(var userId: Long?, var userCode: String?, var userName: String?,
                var userPassword: String?, var userState: Int?) {
    constructor() :this(null,null,null,null,null)
}