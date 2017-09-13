package org.itheima.crm.dao

import org.hibernate.criterion.DetachedCriteria
import org.hibernate.criterion.Projections
import org.itheima.crm.domain.Linkman
import org.springframework.orm.hibernate5.support.HibernateDaoSupport

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
class LinkmanDaoImpl : LinkmanDao,HibernateDaoSupport(){
    override fun findList(criteria: DetachedCriteria, start: Int, pageSize: Int): List<Linkman> {
        criteria.setProjection(null)
        @Suppress("UNCHECKED_CAST")
        return hibernateTemplate.findByCriteria(criteria,start,pageSize) as List<Linkman>
    }

    override fun totalCount(criteria: DetachedCriteria): Long {
        criteria.setProjection(Projections.rowCount())
        return hibernateTemplate.findByCriteria(criteria)[0] as Long
    }

    override fun save(linkman: Linkman) {
        hibernateTemplate.save(linkman)
    }

}