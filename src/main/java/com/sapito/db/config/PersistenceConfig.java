/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.config;

import java.util.Properties;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author giovanni
 */
@Configuration
@EnableTransactionManagement
public class PersistenceConfig
{
    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean()
    {
        LocalContainerEntityManagerFactoryBean em = 
                new LocalContainerEntityManagerFactoryBean();
        
        em.setDataSource(dataSource());
        em.setPackagesToScan(new String[] {"com.sapito.db.entities"});
        
        JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(jpaVendorAdapter);
        em.setJpaProperties(additionalProperties());
        
        return em;
    }
    
    @Bean
    public DataSource dataSource()
    {
        try
        {
            InitialContext context = new InitialContext();
            return (DataSource) context.lookup("jdbc/sapito");
        }
        catch(NamingException ex)
        {
            System.err.println("Exception getting jdbc/sapito from jndi");
            ex.getExplanation();
            return null;
        }
    }
    
    @Bean
    public PlatformTransactionManager transactionManager(EntityManagerFactory emf)
    {
        JpaTransactionManager transactionMgr = new JpaTransactionManager();
        transactionMgr.setEntityManagerFactory(
                entityManagerFactoryBean().getObject()
        );
        
        return transactionMgr;
    }

    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation()
    {
        return new PersistenceExceptionTranslationPostProcessor();
    }
    
    public Properties additionalProperties()
    {
        return new Properties()
        {
            {
                setProperty("hibernate.hbm2ddl.auto", "create");
                setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
            }
        };
        
    }
    
}
