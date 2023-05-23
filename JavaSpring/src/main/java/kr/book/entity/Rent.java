package kr.book.entity;

import java.util.Date;

import lombok.Data;
// 고객대여리스트 Entity
@Data
public class Rent {
  private int cust_no;
  private int rent_no;
  private String book_code;
  private int rent_price;
  private Date rent_date;
}
