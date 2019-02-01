<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script>
function goGit(){
	window.open('https://m.blog.naver.com/PostView.nhn?blogId=kimnx9006&logNo=220574706346&proxyReferer=https%3A%2F%2Fwww.google.com%2F','_blank');
}

function nextP(){
	location.href="test11.do";
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


@ git 프로젝트 연결<br><br>
url : https://github.com/steveleejava0902/studytest.git<br>
User : steveleejava0902<br>
Password : 1313zz!!<br><br>

1 이클립스 열고 import로 git 프로젝트 연결하라, 아래 url을 참고하세요.<br><br>
2 src 밑에 자신의 이메일 계정(@앞내용만)으로 패키지만들기 <br>
(예:steveleejava0902@gmail.com => steveleejava0902 로 패키지생성)<br><br>
<input type="button" onclick="goGit()" value="참고사이트" />
<br><br><br><br>
<div style="font-size:large;">[문제1] 객체 이해</div><br><br>

1 자신의 패키지 밑에 Question1 클래스파일을 생성한다<br>
2 main 메서드 안에 printTest("스티브리자바테스트문제풀이중"); 이라고 코딩한다.<br>
3 에러가나는 곳에 마우스를 올리고 create method를 클릭하여 자동으로 메서드를 생성한다.<br>
4 메서드 안에 System.out.println(string); 를 코딩하고 실행해본다<br>
5 출력을 확인한 후 메서드명 앞에 있는 static을 제거한다.<br>
6 에러가 나는 상태에서 main메서드 안쪽에서만 코딩을 해서 printTest메서드를 실행해서 첫 실행과 같은 결과를 실행해봐라.<br>
7 성공하면 소스를 commit and push하고 다음문제로 넘어간다<br><br><br>

<input type="button" onclick="nextP()" value="다음문제" />

</div>


</body>
</html>