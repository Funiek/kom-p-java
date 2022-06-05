package com.ds360.komp.utils;

import org.apache.logging.log4j.LogManager;

import javax.annotation.Priority;
import javax.interceptor.AroundInvoke;
import javax.interceptor.Interceptor;
import javax.interceptor.InvocationContext;

@Interceptor
@Logged
@Priority(Interceptor.Priority.APPLICATION)
public class ObjectActionInterceptor {
    private final org.apache.logging.log4j.Logger log = LogManager.getLogger(getClass());

    @AroundInvoke
    public Object log(InvocationContext context) throws Exception {
        Object[] parameters = context.getParameters();
        StringBuilder stringBuilder = new StringBuilder();

        stringBuilder.append(context.getMethod().getName()).append("======================== ");

        for (Object parameter : parameters) {
            stringBuilder.append(parameter.toString()).append(" ");
        }

        log.info(stringBuilder.toString());

        return context.proceed();
    }
}
