package kr.book.mapper;

import java.util.List;

import kr.book.entity.Customer;
import kr.book.entity.Money;
import kr.book.entity.Rent;

public interface BookMapper {
  // 데이터베이스 연동 메서드를 정의한다.
  // 고객목록조회 메서드	
  public List<Customer> list();	
  // 고객번호 생성 메서드
  public int getCustNo();
  // 고객등록 메서드
  public void register(Customer cvo);
  // 고객정보 가져오기 메서드
  public Customer get(int cust_no);
  // 고객정보수정 메서드
  public void modify(Customer cvo);
  // 고객대여리스트 메서드
  public List<Rent> rentList();
  // 고객대여금액조회 메서드(조인)
  public List<Money> rentMoney();
}

