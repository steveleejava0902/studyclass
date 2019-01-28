/**
 * 
 */

function emailChk(value){
	var emailYn = true;
	var val = value;
    var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    //var regExp = /[a-z0-9]{2,}@[a-z0-9-]{2,}.[a-z0-9]{2,}/i; --이메일 체크
    if (regExp.test(val)) {
    	emailYn = false;
    }
    return emailYn;
}


function phoneNumChk(value){

	var emailYn = true;
	var val = value;
	var regExp = /^\d{3}\d{3,4}\d{4}$/;
    //var regExp = /[a-z0-9]{2,}@[a-z0-9-]{2,}.[a-z0-9]{2,}/i; --이메일 체크
    if (regExp.test(val)) {
    	emailYn = false;
    }
    return emailYn;
}

