package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.kh.domain.Member;
import com.kh.persistence.MemberRepository;

public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberRepository repository;
	
	@Override
	@Transactional
	public void register(Member member) {
		repository.save(member);

	}

	@Override
	@Transactional
	public void modify(Member member) {
		Member memberEntity = repository.getOne(member.getNo());
		memberEntity.setId(member.getId());
		memberEntity.setName(member.getName());
		memberEntity.setPw(member.getPw());

	}

	@Override
	@Transactional
	public void delete(Member member) {
		repository.delete(member);
	}

	@Override
	@Transactional(readOnly = true)
	public Member read(Member member) {
		
		return repository.getOne(member.getNo());
	}

	@Override
	@Transactional(readOnly = true)
	public List<Member> list() {
		return repository.findAll();
	}

}
