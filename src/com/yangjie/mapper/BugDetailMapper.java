package com.yangjie.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import com.yangjie.entity.*;

public interface BugDetailMapper {
	
	public List<BugDetail> getAll();
	
	public List<BugDetail> createAll(@Param("projectId") Integer projectId);
	
	public boolean add(BugDetail bugDetail);
}
