package kr.book.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Rent {
  private int cust_no;
  private int rent_no;
  private String book_code;
  private int rent_price;
  private Date rent_date;
}
