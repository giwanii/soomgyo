function hide1(){
	$(".comm_board1").show();
	$(".comm_board2").hide();
	$(".comm_board3").hide();
	$(".comm_board4").hide();
	$(".comm_board5").hide();
	$(".menu1").css("background-color", "#ecd3ce");
		
	
	$(".menu2").css("background-color", "");
		
	
	$(".menu3").css("background-color", "");
		

	$(".menu4").css("background-color", "");
		
	
	$(".menu5").css("background-color", "");
}
function hide2(){
	$(".comm_board1").hide();
	$(".comm_board2").show();
	$(".comm_board3").hide();
	$(".comm_board4").hide();
	$(".comm_board5").hide();
	
	$(".menu1").css("background-color", "");

	$(".menu2").css("background-color", "#ecd3ce");
		
	$(".menu3").css("background-color", "");
		
	$(".menu4").css("background-color", "");
		
	$(".menu5").css("background-color", "");
		
	
	
}
function hide3(){
	$(".comm_board1").hide();
	$(".comm_board2").hide();
	$(".comm_board3").show();
	$(".comm_board4").hide();
	$(".comm_board5").hide();
	$(".menu1").css("background-color", "");
		
	
	$(".menu2").css("background-color", "");
		
	
	$(".menu3").css("background-color", "#ecd3ce");
		

	$(".menu4").css("background-color", "");
		
	
	$(".menu5").css("background-color", "");
}
function hide4(){
	$(".comm_board1").hide();
	$(".comm_board2").hide();
	$(".comm_board3").hide();
	$(".comm_board4").show();
	$(".comm_board5").hide();
	$(".menu1").css("background-color", "");
		
	
	$(".menu2").css("background-color", "");
		
	
	$(".menu3").css("background-color", "");
		

	$(".menu4").css("background-color", "#ecd3ce");
		
	
	$(".menu5").css("background-color", "");
	
}
function hide5(){
	$(".comm_board1").hide();
	$(".comm_board2").hide();
	$(".comm_board3").hide();
	$(".comm_board4").hide();
	$(".comm_board5").show();
	$(".menu1").css("background-color", "");
		
	
	$(".menu2").css("background-color", "");
		
	
	$(".menu3").css("background-color", "");
		

	$(".menu4").css("background-color", "");
		
	
	$(".menu5").css("background-color", "#ecd3ce");
}

let index = {
	init: function(){
		$("#btn-save").on("click",()=>{
			this.save();
		});
	},
	save: function(){
		let data={
			category: $("#category").val(),
			title: $("#title").val(),
			content: $("#content").val()
		};
		console.log(data)
		$.ajax({
			type:"POST",
			url:"/api/board",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다");
			location.href="/auth/community";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
}
index.init();