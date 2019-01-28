<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script>
function goGit(){
	window.open('https://m.blog.naver.com/PostView.nhn?blogId=kimnx9006&logNo=220574706346&proxyReferer=https%3A%2F%2Fwww.google.com%2F','_blank');
}

function preP(){
	location.href="test1.do";
}

function nextP(){
	location.href="test2.do";
}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
@FONT-FACE {
	font-family: 'testfont';
	src:url("/fonts/netmarbleL.ttf");

}
</style>

</head>
<body>
<div style="font-family: testfont;">

<div style="font-size:large;">[문제1-1] value</div><br><br>
1 Question11 클래스를 내 패키지 않에 main 메서드와 함께 만든다.<br>
2 아래 코드를 메인 안에 넣는다.<br>
		String val = new String("value");<br><br>
		
		if(val == "value") {<br>
			System.out.println("동작했음. 잘했어");<br>
		}else {<br>
			System.out.println("동작못했어. 다시 생각해봐");<br>			
		}<br>
3 소스를 실행해보라. "동작못했어" 라는 문구가 출력된다면, 현재 상태에서 한줄만 변경해서 "동작했어"가 출력되도록 하라.<br><br><br>
4 성공하면 소스를 commit and push하고 다음문제로 넘어간다<br><br><br>
<input type="button" onclick="preP()" value="이전문제" />
<input type="button" onclick="nextP()" value="다음문제" />

</div>


</body>
</html>