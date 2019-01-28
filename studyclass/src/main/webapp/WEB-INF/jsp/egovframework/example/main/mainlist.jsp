<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


	<table  style="border: 1px solid ">
			<tr style="border: 1px solid ">
				<th style="border: 1px solid ">이름</td>
				<th style="border: 1px solid ">나이</td>
				<th style="border: 1px solid ">이메일</td>
				<th style="border: 1px solid ">전화번호</td>
				<th style="border: 1px solid ">가까운역</td>
				<th style="border: 1px solid ">희망연봉</td>
				<th style="border: 1px solid ">전공</td>
				<th style="border: 1px solid ">직업</td>
				<th style="border: 1px solid ">연차</td>
			</tr>
		<c:forEach items="${test}" var="testlis" varStatus="status">
			<tr style="border: 1px solid ">
				<td style="border: 1px solid ">${testlis.name }</td>
				<td style="border: 1px solid ">${testlis.age }</td>
				<td style="border: 1px solid ">${testlis.email }</td>
				<td style="border: 1px solid ">${testlis.phonenum }</td>
				<td style="border: 1px solid ">${testlis.station }</td>
				<td style="border: 1px solid ">${testlis.money }</td>
				<td style="border: 1px solid ">${testlis.major }</td>
				<td style="border: 1px solid ">${testlis.job }</td>
				<td style="border: 1px solid ">${testlis.jobyear }</td>
				
			</tr>
		</c:forEach>
	
	</table>
