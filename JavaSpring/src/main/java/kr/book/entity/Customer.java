package kr.book.entity;

import java.util.Date;

import lombok.Data;
// 고객정보 Entity
@Data
public class Customer {
   private int cust_no;
   private String cust_name;
   private String phone;
   private Date join_date;
   private String cust_email;
   private String grade;
}
