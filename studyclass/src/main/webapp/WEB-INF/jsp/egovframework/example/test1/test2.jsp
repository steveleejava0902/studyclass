<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script>


function preP(){
	location.href="test11.do";
}

function nextP(){
	location.href="test22.do";
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

<div style="font-size:large;">[문제2] 조건문,반복문</div><br><br>

1 자신의 패키지 밑에 Question2 클래스파일을 생성한다.<br>
2 public void arrPrint(int c) 메소드를 만든다. <br>
3 메소드 기능은 파라미터 c 숫자만큼 정수타입 변수에 배열을 생성한다. 그리고 1부터 c까지의 숫자를 첫번째 배열부터 넣는다.<br>
그리고 배열의 값을 모두 콘솔에 출력한다.<br>
4 실행부는 arrPrint(5) 이와 같고 출력은 아래와 같이 되게 하라<br>
a[0]=1<br>
a[1]=2<br>
a[2]=3<br>
a[3]=4<br>
a[4]=5<br>
5 성공하면 소스를 commit and push하고 다음문제로 넘어간다<br><br><br>
	<div>
	<input type="button" onclick="preP()" value="이전문제" />
	<input type="button" onclick="nextP()" value="다음문제" />
	</div>
</div>


</body>
</html>