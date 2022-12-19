function allck(){
	var result=1;
	console.log('실행중')
	if ($("#name").val() == "") {
		$(".blankname").css("display","inline");
		$(".redname").css("display","none");
		$(".greenname").css("display","none");
		$("#name").focus();
		result=0;
	
	}
	if ($("#name").val().length <= 1) {
		$(".blankname").css("display","inline");
		$(".redname").css("display","none");
		$(".greenname").css("display","none");
		$("#name").focus();
		result=0;
	
	}
	for (var i=0; i<$("#name").val().length; i++)  { 
	
	    var chk = $("#name").val().substring(i,i+1); 
	
	    if(chk.match(/[0-9]/)) { 
	
	    		$(".blankname").hide();
				$(".redname").show();
				$(".greenname").hide();
				$("#name").focus();
				result=0;
	
	       
	
	    }
	
	    if(chk.match(/([^가-힣a-zA-Z\x20])/i)){
	
    		$(".blankname").hide();
			$(".redname").show();
			$(".greenname").hide();
			$("#name").focus();
			result=0;

	        
	
	    }
	
	    if($("#name").val() == " "){
	
	    	$(".blankname").hide();
			$(".redname").show();
			$(".greenname").hide();
			$("#name").focus();
			result=0;
	        
	
	    }
	
	}
    var id=$("#userid").val();
    //특수문자가 있는지 확인
    var spe = id.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    // 한글이 있는지 확인
    var korean = id.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi); 

    if ((id.length < 5) || (id.length > 20)) {
 
      $(".idLength").show();
      $(".idOverlap").hide();
      $(".idtrue").hide();
      $(".idBlank").hide();
      $("#userid").focus();
	  result=0;
     
    }
    if (id.match( /[\s]/g)) {
      $(".idLength").hide();
      $(".idOverlap").hide();
      $(".idtrue").hide();
      $(".idBlank").show();
      $("#userid").focus();
	  result=0;
    }
    if (spe > 0 || korean > 0) {
      $(".idLength").show();
      $(".idOverlap").hide();
      $(".idtrue").hide();
      $(".idBlank").hide();
      $("#userid").focus();
	  result=0;
    }
     
        let pw = $("#pwd").val();
        let pw2 =$("#pwd_check").val();
        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

        if (pw.length < 8 || pw.length > 20) {
            $(".pwdmsg").show();
            $(".pwdblank").hide();
            $(".pwdmix").hide();
            $(".pwdsame").hide();
            $(".pwdid").hide();
            $(".redlock").show();
            $(".bluelock").hide();
            $("#pwd").focus();
	  		result=0;

        } else if (pw.search(/\s/) != -1) {
            $(".pwdblank").show();
            $(".pwdmsg").hide();
            $(".pwdmix").hide();
            $(".pwdsame").hide();
            $(".pwdid").hide();
            $(".redlock").show();
            $(".bluelock").hide();
            $("#pwd").focus();
	  		result=0;

        } else if (number < 0 || english < 0 || spece < 0) {
             $(".pwdmix").show();
             $(".pwdmsg").hide();
             $(".pwdblank").hide();
             $(".pwdsame").hide();
             $(".pwdid").hide();
             $(".redlock").show();
            $(".bluelock").hide();
           $("#pwd").focus();
	  		result=0;

        } 
          else if (/(\w)\1\1\1/.test(pw)) {
            $(".pwdsame").show();
             $(".pwdid").hide();
             $(".pwdmix").hide();
             $(".pwdmsg").hide();
             $(".pwdblank").hide();
             $(".redlock").show();
            $(".bluelock").hide();
           $("#pwd").focus();
	  		result=0;

        
        } 
        

    
	


  // 이메일 검증 스크립트 작성
  var emailVal = $("#email").val();

  var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  // 검증에 사용할 정규식 변수 regExp에 저장

  if (emailVal.match(regExp) != null) {
    
  }
  else {
    $(".mailmsg").show();
    $("#email").focus();
	result=0;
  }
	if(result==0){
		
		return;
	}
	else{
		save();
		return;
	}
}



function nameck(){
	
	if ($("#name").val() == "") {
		$(".blankname").css("display","inline");
		$(".redname").css("display","none");
		$(".greenname").css("display","none");
	
		return false;
	
	}
	/* 2글자 미만 사용 금지 */
	
	if ($("#name").val().length <= 1) {
		$(".blankname").css("display","inline");
		$(".redname").css("display","none");
		$(".greenname").css("display","none");
		return false;
	
	}
	for (var i=0; i<$("#name").val().length; i++)  { 
	
	    var chk = $("#name").val().substring(i,i+1); 
	
	    if(chk.match(/[0-9]/)) { 
	
	    		$(".blankname").hide();
				$(".redname").show();
				$(".greenname").hide();
	
	        return false;
	
	    }
	
	    if(chk.match(/([^가-힣a-zA-Z\x20])/i)){
	
    		$(".blankname").hide();
			$(".redname").show();
			$(".greenname").hide();

	        return false;
	
	    }
	
	    if($("#name").val() == " "){
	
	    	$(".blankname").hide();
			$(".redname").show();
			$(".greenname").hide();
	        return false;
	
	    }
	
	}
		$(".blankname").hide();
		$(".redname").hide();
		$(".greenname").show();
		
};


function idck(str) {
    var id=str;
    //특수문자가 있는지 확인
    var spe = id.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    // 한글이 있는지 확인
    var korean = id.search(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi); 

    if ((id.length < 5) || (id.length > 20)) {
 
      $(".idLength").show();
      $(".idOverlap").hide();
      $(".idtrue").hide();
      $(".idBlank").hide();
      
      return false;
    }
    if (id.match( /[\s]/g)) {
      $(".idLength").hide();
      $(".idOverlap").hide();
      $(".idtrue").hide();
      $(".idBlank").show();
      return false;
    }
    if (spe > 0 || korean > 0) {
      $(".idLength").show();
      $(".idOverlap").hide();
      $(".idtrue").hide();
      $(".idBlank").hide();
      return false;
    }
    
	  $(".idLength").hide();
      $(".idOverlap").hide();
      $(".idtrue").show();
      $(".idBlank").hide();
    return;
};

function pwck() {
        let id = $("#username").val();
        let pw = $("#pwd").val();
        let pw2 =$("#pwd_check").val();
        let number = pw.search(/[0-9]/g);
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

        if (pw.length < 8 || pw.length > 20) {
            $(".pwdmsg").show();
            $(".pwdblank").hide();
            $(".pwdmix").hide();
            $(".pwdsame").hide();
            $(".pwdid").hide();
            $(".redlock").show();
            $(".bluelock").hide();
            return false;

        } else if (pw.search(/\s/) != -1) {
            $(".pwdblank").show();
            $(".pwdmsg").hide();
            $(".pwdmix").hide();
            $(".pwdsame").hide();
            $(".pwdid").hide();
            $(".redlock").show();
            $(".bluelock").hide();
            return false;

        } else if (number < 0 || english < 0 || spece < 0) {
             $(".pwdmix").show();
             $(".pwdmsg").hide();
             $(".pwdblank").hide();
             $(".pwdsame").hide();
             $(".pwdid").hide();
             $(".redlock").show();
            $(".bluelock").hide();
           return false;

        } 
          else if (/(\w)\1\1\1/.test(pw)) {
            $(".pwdsame").show();
             $(".pwdid").hide();
             $(".pwdmix").hide();
             $(".pwdmsg").hide();
             $(".pwdblank").hide();
             $(".redlock").show();
            $(".bluelock").hide();
           return false;

        
        } else {
             $(".pwdid").hide();
             $(".pwdmix").hide();
             $(".pwdmsg").hide();
             $(".pwdblank").hide();
             $(".pwdsame").hide();
             $(".redlock").hide();
            $(".bluelock").show();
            
        }



    };
    
 function pwdcheck(){
	if( $("#pwd_check").val() == ""){
		$(".ckfalse").show();
		$(".cktrue").hide();
	}
	else{
		if($("#pwd").val() == $("#pwd_check").val()){
		$(".ckfalse").hide();
		$(".cktrue").show();
		return;
	}
	else{
		$(".ckfalse").show();
		$(".cktrue").hide();
	
		return false;
	}
	}
	
};

function mailck() {
  // 이메일 검증 스크립트 작성
  var emailVal = $("#email").val();

  var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  // 검증에 사용할 정규식 변수 regExp에 저장

  if (emailVal.match(regExp) != null) {

    $(".mailmsg").hide();
    return;
  }
  else {
    $(".mailmsg").show();

    return;
  }
};


function save(){
	
}

    
    

 
