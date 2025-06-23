package com.kh.service;

import java.util.List;

import com.kh.domain.Member;

public interface MemberService {
	 public void register(Member member);
	 public void modify(Member member);
	 public void delete(Member member);
	 public Member read(Member member);
	 public List<Member> list();
}
