/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.db.dao;

import java.io.Serializable;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author giovanni
 * @param <T>
 */
@Repository
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@Transactional
public class GenericDao<T extends Serializable> extends AbstractDao
{
    
}
