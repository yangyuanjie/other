package com.yangjie.service;

import java.util.List;

import com.yangjie.entity.BugDetail;


public interface BugDetaiService {
	
	public List<BugDetail> getAll();
	
	public List<BugDetail> createAll(int projectId);
	
	public boolean add(BugDetail bugDetail);
}
