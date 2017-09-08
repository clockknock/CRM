package org.itheima.crm.utils

import org.springframework.util.DigestUtils

/**
 * Created by 钟未鸣 on 2017/9/8 .
 */
object MD5Util{
    fun deafultMd5(msg: String): String{
        return md5(msg,5)
    }

    fun md5(msg: String): String {
        return DigestUtils.md5DigestAsHex(msg.byteInputStream())
    }

    /**
     * 加密多次
     *
     * @param password
     * @param count
     * @return
     */
    fun md5(password: String, count: Int): String {
        var password = password
        for (i in 0 until count) {
            password = md5(password)
        }
        return password
    }
}