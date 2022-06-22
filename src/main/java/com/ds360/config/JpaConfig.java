package com.ds360.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.jta.JtaTransactionManager;

@Configuration
@EnableJpaRepositories(basePackages = {"com.ds360.komp.repository"} ,enableDefaultTransactions = false)
@EnableTransactionManagement
public class JpaConfig {
    
    @Bean
    public LocalEntityManagerFactoryBean entityManagerFactory() {
        LocalEntityManagerFactoryBean factoryBean = new LocalEntityManagerFactoryBean();
        factoryBean.setPersistenceUnitName("KompDB");
        
        return factoryBean;
    }
    
    @Bean
    public JtaTransactionManager transactionManager() {
        var transactionManager = new JtaTransactionManager();
        transactionManager.setAutodetectUserTransaction(true);
        transactionManager.setNestedTransactionAllowed(true);
        transactionManager.setDefaultTimeout(100);
        transactionManager.setRollbackOnCommitFailure(false);
        transactionManager.setGlobalRollbackOnParticipationFailure(false);
        return transactionManager;
    }
    
}