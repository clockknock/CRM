package org.itheima.crm.dao

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.domain.BaseDict

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
interface DictDao{
    fun save(dict: BaseDict)
    fun findList(criteria: DetachedCriteria) : List<*>
}