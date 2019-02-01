package egovframework.example.main.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.main.service.MainService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class MainController {
	
	
	@Resource
	private MainService mainservice;
	
	@RequestMapping(value = "main.do")
	public String initMain(ModelMap model) throws Exception {
		
		/*List<EgovMap> test = mainservice.selecttest();
		System.out.println(test);

		model.addAttribute("test", test);*/
		
		return "main/main.tiles";
	}
	
	@RequestMapping(value = "mainlist.do")
	public String mainlist(ModelMap model) throws Exception {
		
		List<EgovMap> test = mainservice.selectmain();
		System.out.println(test);

		model.addAttribute("test", test);
		
		return "main/mainlist.tiles";
	}
	
	
	@RequestMapping(value = "studyInsert.do")
	public String studyInsert(ModelMap model, HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("test");
		System.out.println("phone::"+request.getParameter("classphonenum"));
		System.out.println("classname::"+request.getParameter("classname"));
		System.out.println("classstation::"+request.getParameter("classstation"));
		
		String insertedYN="false";
		
		List<EgovMap> test = mainservice.selectmain();
		for(EgovMap testsel:test){
			System.out.println("testsel name"+testsel.get("name"));
			System.out.println("testsel phonenum"+testsel.get("phonenum"));
			if(request.getParameter("classname").equals(testsel.get("name"))){
				insertedYN="true";
			}else if(request.getParameter("classphonenum").equals(testsel.get("phonenum"))){
				insertedYN="true";
			}
			
		}
		
		if("true".equals(insertedYN)){
			model.addAttribute("insertYn", "N");
			
		}else{
			EgovMap userMap = new EgovMap();
			userMap.put("phonenum",request.getParameter("classphonenum") );
			userMap.put("email",request.getParameter("classemail") );
			userMap.put("name",request.getParameter("classname") );
			userMap.put("age",request.getParameter("classage") );
			userMap.put("money",request.getParameter("classmoney") );
			userMap.put("station",request.getParameter("classstation") );
			userMap.put("job",request.getParameter("job") );
			userMap.put("jobyear",request.getParameter("jobyear") );
			userMap.put("major",request.getParameter("major") );
			
			mainservice.insertStudyClass(userMap);
			System.out.println("insert done::");
			model.addAttribute("insertYn", "Y");
			
		}


		return "main/main.tiles";
	}	
	

	@RequestMapping(value = "test1.do")
	public String test1(ModelMap model) throws Exception {
		
		return "test1/test1.tiles";
	}
	
	@RequestMapping(value = "test11.do")
	public String test11(ModelMap model) throws Exception {
		
		return "test1/test11.tiles";
	}
	
	@RequestMapping(value = "test2.do")
	public String test2(ModelMap model) throws Exception {
		
		return "test1/test2.tiles";
	}
	
	@RequestMapping(value = "test22.do")
	public String test22(ModelMap model) throws Exception {
		
		return "test1/test22.tiles";
	}
	
	@RequestMapping(value = "test3.do")
	public String test3(ModelMap model) throws Exception {
		
		return "test1/test3.tiles";
	}
	
	@RequestMapping(value = "test4.do")
	public String test4(ModelMap model) throws Exception {
		
		return "test1/test4.tiles";
	}
	
}
