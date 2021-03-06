package egovframework.example.main.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface MainMapper {

	void insertStudyClass(EgovMap egovMap) throws Exception;
	
	List<EgovMap> selecttest() throws Exception;

	List<EgovMap> selectmain() throws Exception;
	
	List<EgovMap> selectname() throws Exception;
	List<EgovMap> selectnum() throws Exception;
}
