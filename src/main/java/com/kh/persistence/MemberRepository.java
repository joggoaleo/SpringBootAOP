package com.kh.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kh.domain.Member;
@Repository
public interface MemberRepository extends JpaRepository<Member, Integer> {

}
