<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script>


function preP(){
	location.href="test2.do";
}

function nextP(){
	location.href="test3.do";
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

<div style="font-size:large;">[문제2-2] 배열심화 </div><br><br>

1 자신의 패키지 밑에 Question22 클래스파일을 main메서드와 함께 생성한다.<br>
2 main안에  "doubleArryMake(3, 5);" 코드를 추가하라.<br>
3 에러가나는 곳에 마우스를 올리고 create method를 클릭하여 자동으로 메서드를 생성한다.<br>
&nbsp;&nbsp;&nbsp;&nbsp;	그러면 2개의 정수형 파라미터 (i,j)를 input으로 받는 doubleArryMake 메서드를 만들어진다.<br>
4 메서드 안에 문자열 이중배열 arr[][]을 만들고 파라미터 i,j에 따라 배열의 공간을 만든다 <br>
예)i=5,j=7  57개의 배열공간생성.<br>
5 2차원 배열arr에 arr[0][0]부터 ij번째까지 "arr[1][2] = 12" 형식으로 값을 넣는다<br>
예)i=5,j=7라면 <br>
arr[0][0]=0<br>
arr[0][1]=1<br>
.<br>
.<br>
.<br>
.<br>
arr[1][1]=11<br>
.<br>
.<br>
.<br>
57번째 배열에 = 57<br>
6 배열의 값을 모두 콘솔에 출력한다.<br>
예) 0 , 1 , 2 가아님 /  arr[0][0]=0 , arr[0][1]=1 형태로 출력  <br>

7 성공하면 소스를 commit and push하고 다음문제로 넘어간다<br><br><br>



	<div>
	<input type="button" onclick="preP()" value="이전문제" />
	<input type="button" onclick="nextP()" value="다음문제" />
	</div>
</div>


</body>
</html>