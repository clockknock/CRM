package org.itheima.crm.dao

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.domain.Linkman

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
interface LinkmanDao {
    fun save(linkman: Linkman)
    fun totalCount(criteria: DetachedCriteria): Long
    fun findList(criteria: DetachedCriteria, start: Int, pageSize: Int): List<Linkman>
}