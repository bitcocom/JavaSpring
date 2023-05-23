package kr.book.entity;

import lombok.Data;
// 고객대여금액조회 Entity
@Data
public class Money {
  private int cust_no;
  private String cust_name;
  private String grade;
  private int price;
}
