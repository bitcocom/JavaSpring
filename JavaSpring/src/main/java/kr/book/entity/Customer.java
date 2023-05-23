package kr.book.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Customer {
   private int cust_no;
   private String cust_name;
   private String phone;
   private Date join_date;
   private String cust_email;
   private String grade;
}
