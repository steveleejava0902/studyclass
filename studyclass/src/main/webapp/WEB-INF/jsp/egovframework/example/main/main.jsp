<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	request.setCharacterEncoding("UTF-8");

%>

<script type="text/javascript">
$(function(){
	var insertYn = "${insertYn}";
	if(insertYn ==  "Y"){
		alert("저장되었습니다. 테스트 문제로 이동합니다.");	
		alert("주의) 문제는 총 5문제 입니다. 난이도는 각각 다르지만 점수는 같으니 최대한 많이 푸는데 집중하세요. 완벽하게 못풀더라도 풀려는 노력의 흔적이나 거의 풀었다면 점수가 있습니다. 그럼 화이팅~!! ")
		location.href="test1.do";
	}else if(insertYn ==  "N"){
		
		
		var con = confirm("이미 저장되었습니다. 테스트 문제로 이동할까요?");	
		if(con == true)	location.href="test1.do";
		else location.href="main.do";
		
	}
	
})

function chkNumKey(event,num){
	
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 9){
		
	}else{
		alert("숫자만 입력가능합니다.");
		
		if(num==0){
			var phoneVal = $("#phone");
			phoneVal.val("");
		}else if(num==1){
			var age = $("#age");
			age.val("");
		}else if(num==2){
			var money = $("#money");
			money.val("");
		}else if(num==3){
			var jobyear = $("#jobyear");
			jobyear.val("");
		}
	}
}

function inputValidCheck(){
	
	var emailVal = $("#email");
	var nameVal = $("#name");
	var ageVal = $("#age");
	var moneyVal = $("#money");
	var phoneVal = $("#phone");
	var stationVal = $("#station");
	var jobyear = $("#jobyear");
	
	var form = document.getElementById('frm');

	
	
	if(emailVal.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("이메일 주소를 입력해 주세요");
		return;
	}
	
	if(emailChk(emailVal.val().trim())){
		//alert("이메일 주소형식에 맞춰 입력해주세요.");
		alert("이메일 주소형식에 맞춰 입력해주세요.");
		return;
	}
	
	if(phoneVal.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("전화번호를 입력해 주세요");
		return;
	}
	
	if(phoneNumChk(phoneVal.val().trim())){
		//alert("이메일 주소를 입력해 주세요");
		alert("전화번호를 형식에 맞게 입력해 주세요");
		return;
	}
	
	if(nameVal.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("이름을 입력해 주세요");
		return;
	}
	
	if(ageVal.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("나이를 입력해 주세요");
		return;
	}
	

	
	if(moneyVal.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("희망연봉을 입력해 주세요");
		return;
	}
	
	if(stationVal.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("가까운역을 입력해 주세요");
		return;
	}

	if(jobyear.val().trim() == ""){
		//alert("이메일 주소를 입력해 주세요");
		alert("연차를 입력해 주세요");
		return;
	}
	
	$("#insertForm").submit();
	
}

function test(){
	
	location.href="test1.do";
	
}

</script>

<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="header">
                <h4 class="title">Edit Profile</h4>
            </div>
            <div class="content">
            
            <form id="insertForm" action="studyInsert.do" method="post">
                <div class="row">


                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">이메일 주소</label>
                            <input id="email" type="email" class="form-control" name="classemail" placeholder="Email" autocomplete="off">
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>전화번호</label>
                            <input id="phone" type="text" class="form-control" name="classphonenum" onkeyup="chkNumKey(event,0)" placeholder="숫자만(예:01012341234)" autocomplete="off" maxlength="13">
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>집에서 가까운 지하철역</label>
                            <input id="station" type="text" class="form-control" name="classstation" placeholder="Station Name" autocomplete="off">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>이름</label>
                            <input id="name" type="text" class="form-control" name="classname" placeholder="Name" autocomplete="off">
                        </div>
                    </div>
     
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>나이</label>
                            <input id="age" type="text" class="form-control" name="classage" onkeyup="chkNumKey(event,1)" placeholder="Age" autocomplete="off">
                        </div>
                    </div>
                </div>
                

                <div class="row">
                	<div class="col-md-3">
                        <div class="form-group">
                            <label>전공/비전공</label><br>
                           
                            <input type="radio" name = "major" value = "N" checked="checked">비전공
                            <input type="radio" name = "major" value = "Y">전공
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>5년후 받고 싶은 연봉</label>
                            <input id="money" type="text" class="form-control" name="classmoney" onkeyup="chkNumKey(event,2)" placeholder="Money" autocomplete="off">
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>취업중</label><br>
                            <input type="radio" name = "job" value = "1" checked="checked">취준생
                            <input type="radio" name = "job" value = "2">정직원<br>
                            <input type="radio" name = "job" value = "3">프리랜서
                        </div>
                    </div>
                   <div class="col-md-3">
                        <div class="form-group">
                            <label>연차</label>
                            <input id="jobyear" type="text" class="form-control" name="jobyear" onkeyup="chkNumKey(event,3)" placeholder="숫자만(예:0)" autocomplete="off">
                        </div>
                    </div>
                </div>
               
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>개인정보동의</label>
                            <textarea rows="5" class="form-control" placeholder="Here can be your description" readonly>
위에 수집한 개인정보는 절대 밖으로 유출하지 않으며, 스터디모임 및 스티브리자바가 운영하는 교육 목적 이외에 사용하지 않습니다. 개인정보공유와 관련하여, 본인은 동의내용을 숙지하였으며, 이에 따라 본인의 개인정보를 스티브리자바가 수집 및 이용하는 것에 대해 동의합니다.
                            </textarea>
                        </div>
                    </div>
                </div>
                <button type="button" onclick="inputValidCheck()" class="btn btn-info btn-fill pull-right">동의 및 테스트 문제로 넘어가기</button>
                
                <div class="clearfix"></div>
                
                
            </form>    
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-user">
            <div class="image">
                <img src="images/bootstrap/full-screen-image-11.jpg" alt="..."/>
            </div>
            <div class="content">
                <div class="author">
                     <a href="#">
                    <img class="avatar border-gray" src="images/bootstrap/stevelee3.png" alt="..."/>
                      <h4 class="title">스티브리 자바<br />
                         <small>과외의 신!</small>
                      </h4>
                    </a>
                </div>
                <p class="description text-center"> "코딩을 두려워하지 마라! <br>
                                   당황하고, 쪽팔려보라. <br>하지만 두번은 안된다! <br>
                                   그렇게 3년만 노력하라~ 반드시 성공하게 된다.
                                   모두가 억대 연봉을 받는 그날까지!"
                </p>
            </div>
            <hr>
            <div class="text-center">
                <button href="#" class="btn btn-simple" onclick="test()"><i class="fa fa-facebook-square"></i></button>
                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>
            </div>
        </div>
    </div>
</div>