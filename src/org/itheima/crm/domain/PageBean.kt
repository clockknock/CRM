package org.itheima.crm.domain

import org.itheima.crm.dao.impl.CustomerDaoImpl

/**
 * Created by 钟未鸣 on 2017/9/11 .
 */
//data class PageBean(var pageSize:Int?,var currentPage:Int?,var totalPage:Int?,var datas:List<T>)
class PageBean<T> {

    var currentPage: Int = 0// 当前页：1开始
    var totalPage: Int = 0// 总页数
    var totalCount: Long = 0// 总条数
    var pageSize: Int = 0// 每页显示的条数
    var datas: List<T>? = null

    override fun toString(): String {
        return "PageBean(currentPage=$currentPage, totalPage=$totalPage, totalCount=$totalCount, pageSize=$pageSize, datas=$datas)"
    }


}
