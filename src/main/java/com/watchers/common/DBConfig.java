package com.watchers.common;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

@Configuration
@MapperScan(basePackages = "com.watchers.repository" , sqlSessionFactoryRef = "SqlSessionFactory")
public class DBConfig {

    @Autowired
    private DBProperties dBProperties;
    public DBConfig() {
    		System.out.println("tqtqtq");
    }
    @Bean(name = "dataSource")
    public DataSource dataSource() {
    		System.out.println("tq");
        DataSource dataSource = new DataSource();
        dataSource.setDriverClassName(dBProperties.getDriverClassName());
        dataSource.setUrl(dBProperties.getUrl());
        dataSource.setUsername(dBProperties.getUsername());
        dataSource.setPassword(dBProperties.getPassword());
        System.out.println("데이터 소스 생성");
        return dataSource;
    }

    @Bean(name = "SqlSessionFactory")
    public SqlSessionFactory sqlSessionFactory(@Qualifier("dataSource") DataSource dataSource,
                                               ApplicationContext applicationContext) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        sqlSessionFactoryBean.setConfigurationProperties(mybatisProperties());
        sqlSessionFactoryBean.setMapperLocations(applicationContext.getResources(dBProperties.getMapperLocation()));
        System.out.println("SqlSessionFactory 생성");
        
        return sqlSessionFactoryBean.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(@Qualifier("SqlSessionFactory") SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }

    private Properties mybatisProperties() {
        Properties properties = new Properties();
        properties.put("lazyLoadingEnabled", "true");
        return properties;
    }
}
