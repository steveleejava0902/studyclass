package egovframework.example.main.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface MainService {
	void insertStudyClass(EgovMap egovMap) throws Exception;
	
	List<EgovMap> selecttest() throws Exception;
	List<EgovMap> selectname() throws Exception;
	List<EgovMap> selectnum() throws Exception;
	List<EgovMap> selectmain() throws Exception;

}
