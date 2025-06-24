package com.kh.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Aspect
@Component
@Slf4j
public class TimeCheckerAdvice {

	@Around("execution(* com.kh.service.MemberService*.*(..))")
	public Object timeLog(ProceedingJoinPoint pjp) throws Throwable{
		
		long startTime = System.currentTimeMillis();
		
		Object result = pjp.proceed();
		
		long endTime = System.currentTimeMillis();
		
		log.info(pjp.getSignature().getName() + ":" + (endTime-startTime));
		return result;
	}
}
