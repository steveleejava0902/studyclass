package egovframework.example.main.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.main.service.MainService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class MainServiceimpl implements MainService{

	@Resource
	private MainMapper mainMapper;
	
	@Override
	public void insertStudyClass(EgovMap egovMap) throws Exception {
		// TODO Auto-generated method stub
		mainMapper.insertStudyClass(egovMap);
	}

	@Override
	public List<EgovMap> selecttest() throws Exception {
		// TODO Auto-generated method stub
		return mainMapper.selecttest();
	}

	@Override
	public List<EgovMap> selectmain() throws Exception {
		// TODO Auto-generated method stub
		return mainMapper.selectmain();
	}

	@Override
	public List<EgovMap> selectname() throws Exception {
		// TODO Auto-generated method stub
		return mainMapper.selectname();
	}

	@Override
	public List<EgovMap> selectnum() throws Exception {
		// TODO Auto-generated method stub
		return mainMapper.selectnum();
	}

}
