package org.example.service;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;
@Component

public class LifecycleService implements InitializingBean, DisposableBean {
    private static final Logger logger= Logger.getLogger(LifecycleService.class.getName());
    public LifecycleService(){
        logger.info("Constructor: Bean Created");
    }
    public void postConstruct(){
        logger.info("DI completed");
    }

    @Override
    public void afterPropertiesSet(){
        logger.info("afterpropertiesSet()");
    }
    public void run(){
        logger.info("Using lifecycleService");
    }

    @PreDestroy
    public void preDestroy(){
        logger.info("Bean about to destroy");
    }

    @Override
    public void destroy(){
        logger.info("destroy()");
    }


}
