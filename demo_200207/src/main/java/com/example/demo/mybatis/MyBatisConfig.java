package com.example.demo.mybatis;

import java.io.IOException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration // 환경설정을 할 수 있는 어노테이션?
@MapperScan(basePackages = {"com.example.demo.dao"})
public class MyBatisConfig {
	
	//SqlSessionFactoryBean의 역할을 수행하는 메소드.
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean ssF=new SqlSessionFactoryBean();
		ssF.setDataSource(dataSource);
		PathMatchingResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();
		ssF.setMapperLocations(resolver.getResources("classpath:com/example/demo/mapper/*.xml"));
		ssF.setTypeAliasesPackage("com.example.demo.vo"); //해당 패키지에 있는 애들에 alias 적용.
		return ssF.getObject();
	}
	
	//SqlSessionTemplate
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
		SqlSessionTemplate ss=new SqlSessionTemplate(sqlSessionFactory);
		return ss;
	}

}
