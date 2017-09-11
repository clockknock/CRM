package org.itheima.crm.utils

import java.util.*

/**
 * Created by 钟未鸣 on 2017/9/11 .
 */
object UploadUtil{

    fun genUploadPath(imageUpLoadFileName: String):String{
        val sb = StringBuffer()
        val calendar = Calendar.getInstance()
        sb.append("/")
        sb.append(calendar.get(Calendar.YEAR))
        sb.append("/")
        sb.append(calendar.get(Calendar.MONTH)+1)
        sb.append("/")
        sb.append(calendar.get(Calendar.DAY_OF_MONTH))
        sb.append("/")
        sb.append(calendar.get(Calendar.HOUR_OF_DAY))
        sb.append("/")
        val suffix=imageUpLoadFileName.substring(imageUpLoadFileName.lastIndexOf("."))
        sb.append(UUID.randomUUID())
        sb.append(suffix)
        return sb.toString().replace("-","")

//        return sb.toString()
    }
}