package com.yangjie.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yangjie.entity.BugDetail;

import com.yangjie.mapper.BugDetailMapper;
import com.yangjie.service.BugDetaiService;

@Service
public class BugDetaiServiceImpl implements BugDetaiService {

	@Autowired
	private BugDetailMapper bm;
	
	public List<BugDetail> getAll() {
		List<BugDetail> BugDetailList=bm.getAll();
		return BugDetailList;
	}

	public List<BugDetail> createAll(int projectId) {
		List<BugDetail> BugDetailList=bm.createAll(projectId);
		return BugDetailList;
	}

	public boolean add(BugDetail bugDetail) {
		bugDetail.setCreateDate(new Date());
		boolean flag=bm.add(bugDetail);
		return flag;
	}

}
