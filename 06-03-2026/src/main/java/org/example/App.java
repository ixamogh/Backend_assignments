package org.example;

import org.example.manual.TimeService;
import org.example.resources.AppConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext context=new AnnotationConfigApplicationContext(AppConfig.class);
        UserController contoller=context.getBean(UserController.class);
        contoller.sayHello();
        TimeService timeService=context.getBean(TimeService.class);
        timeService.beanCreation();

    }
}
