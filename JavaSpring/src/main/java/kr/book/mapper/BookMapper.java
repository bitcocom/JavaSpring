package kr.book.mapper;

import java.util.List;

import kr.book.entity.Customer;
import kr.book.entity.Money;
import kr.book.entity.Rent;

public interface BookMapper {
  // 데이터베이스 연동 메서드를 정의한다.
  public List<Customer> list();	
  public int getCustNo();
  public void register(Customer cvo);
  public Customer get(int cust_no);
  public void modify(Customer cvo);
  public List<Rent> rentList();
  public List<Money> rentMoney();
}

