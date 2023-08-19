package com.marketingApp.service;

import java.util.List;

import com.marketingApp.entity.Lead;

public interface LeadService {
	public void saveLead(Lead lead);
	public List<Lead> getLead();
	public void deleteLead(long id);
	public Lead update(long id);

}
