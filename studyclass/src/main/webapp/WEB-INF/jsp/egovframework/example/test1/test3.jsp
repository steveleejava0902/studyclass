<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script>

function preP(){
	location.href="test22.do";
}

function nextP(){
	location.href="test4.do";
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

<div style="font-size:large;">[문제3] 상속</div><br><br>

1 steveleejava0902 패키지안에 있는 Person클래스를 내 패키지로 카피한다<br>
2 자신의 패키지 밑에 Singer 클래스파일을 생성하고 Person클래스를 상속받는다<br>
3 Singer에 인스턴스변수 major, titlesong 를 스트링으로 정의하고
접근제한자는 데이터 은닉화 시킬 수 있도록 붙이고 getter,setter를 각각 만든다.<br>
4 추가로 famousSongs 인스턴스변수를 해쉬맵<string,string>으로으로 만든다. <br>
5 Question3 클래스를 main함수와 함께 만들고, Singer클래스를 인스턴스화 시킨 후(생성자에 값은 임의값을 넣는다) <br>
famousSongs에 first,second,third 키값에 난알아요,하여가,교실이데아 값을 넣는다. <br>
6 해쉬맵에 값들을 모두 콘솔에 출력한다(반복문을 이용하라)<br>
7 성공하면 소스를 commit and push하고 다음문제로 넘어간다<br><br><br>
	<div>
	<input type="button" onclick="preP()" value="이전문제" />
	<input type="button" onclick="nextP()" value="다음문제" />

	</div>
</div>


</body>
</html>