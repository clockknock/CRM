package org.itheima.crm.dao.impl

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.dao.DictDao
import org.itheima.crm.domain.BaseDict
import org.springframework.orm.hibernate5.support.HibernateDaoSupport

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class DictDaoImpl : DictDao,HibernateDaoSupport() {
    override fun findList(criteria: DetachedCriteria): List<*> {

        return hibernateTemplate.findByCriteria(criteria)
    }

    override fun save(dict: BaseDict) {
        hibernateTemplate.save(dict)
    }
}