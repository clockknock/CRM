package org.itheima.crm.service

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.domain.Linkman
import org.itheima.crm.domain.PageBean

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
interface LinkmanService {
    fun save(linkman: Linkman)
    fun findPage(criteria: DetachedCriteria, currentPage: Int, pageSize: Int): PageBean<Linkman>
}