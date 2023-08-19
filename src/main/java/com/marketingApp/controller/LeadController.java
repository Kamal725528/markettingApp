package com.marketingApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.marketingApp.entity.Lead;
import com.marketingApp.features.EmailService;
import com.marketingApp.service.LeadService;

@Controller
public class LeadController {
	
	@RequestMapping("/view")
	public String viewLeadPage() {
		return "create_lead";
	}
	
	@Autowired
	private LeadService leadService;
	
	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/saveLead")
	public String saveOneLead(Lead lead ,Model model) {
		
		System.out.println(lead.getFirstName());
		leadService.saveLead(lead);
		String msg="This is Autogenerated mail from my marketing app project which i made through spring-boot"
				+ " and as a demo i register your email as a customer to my app. "+" if you got this "
						+ "mail please respond with a message(I received mail)";
				
		emailService.sendEmail(lead.getEmail(), "Welcome mail from kamal App", msg);
		
		model.addAttribute("msg"," Lead record saved");
		return "create_lead";
	}
	
	@RequestMapping("/listall")
	public String getAllLead(Model m) {
		List<Lead> leads=leadService.getLead();
		m.addAttribute("leads", leads);
		return "list_lead";
	}
	
	@RequestMapping("/delete")
	public String deleteById(@RequestParam("id") long id, ModelMap m) {
		leadService.deleteLead(id);
		
		List<Lead> leads=leadService.getLead();
		m.addAttribute("leads",leads);
	
		return "list_lead";
	}
	
	@RequestMapping("/update")
	public String update(@RequestParam("id") long id, Model m) {
		Lead lead=leadService.update(id);
		m.addAttribute("lead", lead);
		
		return "update_lead";
	}
	
	@RequestMapping("/updateLead")
	public String updateOneLead(Lead lead ,Model m) {
		leadService.saveLead(lead);
		
		List<Lead> leads=leadService.getLead();
		m.addAttribute("leads",leads);
		
		
		return "list_lead";
		
	}
	

}