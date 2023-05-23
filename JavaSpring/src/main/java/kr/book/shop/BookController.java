package kr.book.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.book.entity.Customer;
import kr.book.entity.Money;
import kr.book.entity.Rent;
import kr.book.mapper.BookMapper;

@Controller
public class BookController {

	@Autowired
	private BookMapper mapper;
	
	// 클라이언트의 요청을 처리한다.
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/list")
	public String list(Model model) {
		List<Customer> cvo=mapper.list();
		model.addAttribute("cvo", cvo);
		return "list"; // list.jsp
	}
	@GetMapping("/register")
	public String register(Model model) {
		int cust_no=mapper.getCustNo();
		model.addAttribute("cust_no", cust_no);
		return "register"; // register.jsp
	}
    @PostMapping("/register")
    public String register(Customer cvo) {
    	mapper.register(cvo);
    	return "redirect:/list";
    }
    @GetMapping("/modify")
    public String modify(int cust_no, Model model) {
    	Customer cvo=mapper.get(cust_no);
    	model.addAttribute("cvo", cvo);
    	return "modify"; // modify.jsp
    }
    @PostMapping("/modify")
    public String modify(Customer cvo) {
    	mapper.modify(cvo);
    	return "redirect:/list";
    }    
    @RequestMapping("/rentList")
    public String rentList(Model model) {
    	List<Rent> rlist=mapper.rentList();
    	model.addAttribute("rlist", rlist);
    	return "rentList"; // rentList.jsp
    }    
    @RequestMapping("/rentMoney")
    public String rentMoney(Model model) {
    	List<Money> mlist=mapper.rentMoney();
    	model.addAttribute("mlist", mlist);
    	return "rent"; // rent.jsp
    }    
}
