package org.itheima.crm.dao

import org.itheima.crm.domain.Linkman
import org.springframework.orm.hibernate5.support.HibernateDaoSupport

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
class LinkmanDaoImpl : LinkmanDao,HibernateDaoSupport(){
    override fun save(linkman: Linkman) {
        hibernateTemplate.save(linkman)
    }

}