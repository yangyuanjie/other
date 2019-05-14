package com.yangjie.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yangjie.entity.BugDetail;
import com.yangjie.service.BugDetaiService;

@Controller
@RequestMapping("/view")
public class BugDetailController {
	
	@Autowired
	private BugDetaiService bs;
	
	@RequestMapping("/index")
	public String view(HttpServletRequest request){
		request.setAttribute("list", bs.getAll());
		return "index";
	}
	
	@RequestMapping("/creat")
	public String creat(Integer projectId,Model model){
		model.addAttribute("list", bs.createAll(projectId));
		return "index";
	}
	
	@RequestMapping("/add")
	public String add(){
		
		return "add";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(BugDetail bugDetail){
		boolean flag=bs.add(bugDetail);
		if(flag){//表示添加成功
			System.out.println("<script>alert('添加成功！');</script>");
		}else{
			System.out.println("<script>alert('添加失败！');</script>");
		}
		return "redirect:/view/index";
	}
}
