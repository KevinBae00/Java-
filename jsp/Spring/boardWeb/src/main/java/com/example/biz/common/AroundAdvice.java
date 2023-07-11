package com.example.biz.common;

import org.aspectj.lang.ProceedingJoinPoint;

public class AroundAdvice {
    public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
//        실행 전에 할 일
        System.out.println("[BEFORE]: 비즈니스 메소드 수행 전에 처리할 내용...");
        Object returnObj = pjp.proceed();
//        실행 후에 할 일
        System.out.println("[AFTER]: 비즈니스 메소드 수행 후에 처리할 내용...");
        return returnObj;
    }
}
