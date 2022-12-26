/**
 * 
 */
function search1(){
	console.log('실행중')
$.ajax({
		type : "GET",
		dataType : "json",
		url : "https://www.googleapis.com/youtube/v3/search?q=자바&key=AIzaSyC__XjgtHRF3Qpq15asUfYKOwMWx9K99BA&part=id,snippet&type=video&maxResults=20",
		contentType: 'application/json',
		success : function(data) {
			for(var i=0; i<20; i++){
				let save={
				videoUrl: "https://www.youtube.com/embed/"+data.items[i].id.videoId,
				title: data.items[i].snippet.title,
				thumbnail: "https://img.youtube.com/vi/"+data.items[i].id.videoId+"/0.jpg",
				category: "JAVA"
				}
				$.ajax({
				type : "post",
				dataType : "json",
				contentType: 'application/json',
				data:JSON.stringify(save), 
				url : "/auth/updatevideo",
				success : function(data) {
				
				console.log("저장완료");

				}
				})
				
				
				
			}
			
		},
		complete : function(data) {},
		error : function(xhr, status, error) {} 
	});
	}
	function search2(){
	console.log('실행중')
$.ajax({
		type : "GET",
		dataType : "json",
		url : "https://www.googleapis.com/youtube/v3/search?q=C언어&key=AIzaSyC__XjgtHRF3Qpq15asUfYKOwMWx9K99BA&part=id,snippet&type=video&maxResults=20",
		contentType: 'application/json',
		success : function(data) {
			for(var i=0; i<20; i++){
				let save={
				videoUrl: "https://www.youtube.com/embed/"+data.items[i].id.videoId,
				title: data.items[i].snippet.title,
				thumbnail: "https://img.youtube.com/vi/"+data.items[i].id.videoId+"/0.jpg",
				category: "Cc"
				}
				$.ajax({
				type : "post",
				dataType : "json",
				contentType: 'application/json',
				data:JSON.stringify(save), 
				url : "/auth/updatevideo",
				success : function(data) {
				
				console.log("저장완료");

				}
				})
				
				
				
			}
			
		},
		complete : function(data) {},
		error : function(xhr, status, error) {} 
	});
	}
	function search3(){
	console.log('실행중')
$.ajax({
		type : "GET",
		dataType : "json",
		url : "https://www.googleapis.com/youtube/v3/search?q=자바스크립트&key=AIzaSyC__XjgtHRF3Qpq15asUfYKOwMWx9K99BA&part=id,snippet&type=video&maxResults=20",
		contentType: 'application/json',
		success : function(data) {
			for(var i=0; i<20; i++){
				let save={
				videoUrl: "https://www.youtube.com/embed/"+data.items[i].id.videoId,
				title: data.items[i].snippet.title,
				thumbnail: "https://img.youtube.com/vi/"+data.items[i].id.videoId+"/0.jpg",
				category: "JavaScript"
				}
				$.ajax({
				type : "post",
				dataType : "json",
				contentType: 'application/json',
				data:JSON.stringify(save), 
				url : "/auth/updatevideo",
				success : function(data) {
				
				console.log("저장완료");

				}
				})
				
				
				
			}
			
		},
		complete : function(data) {},
		error : function(xhr, status, error) {} 
	});
	}
	function search4(){
	console.log('실행중')
$.ajax({
		type : "GET",
		dataType : "json",
		url : "https://www.googleapis.com/youtube/v3/search?q=오라클 강의&key=AIzaSyC__XjgtHRF3Qpq15asUfYKOwMWx9K99BA&part=id,snippet&type=video&maxResults=20",
		contentType: 'application/json',
		success : function(data) {
			for(var i=0; i<20; i++){
				let save={
				videoUrl: "https://www.youtube.com/embed/"+data.items[i].id.videoId,
				title: data.items[i].snippet.title,
				thumbnail: "https://img.youtube.com/vi/"+data.items[i].id.videoId+"/0.jpg",
				category: "Oracle"
				}
				$.ajax({
				type : "post",
				dataType : "json",
				contentType: 'application/json',
				data:JSON.stringify(save), 
				url : "/auth/updatevideo",
				success : function(data) {
				
				console.log("저장완료");

				}
				})
				
				
				
			}
			
		},
		complete : function(data) {},
		error : function(xhr, status, error) {} 
	});
	}
	function search5(){
	console.log('실행중')
$.ajax({
		type : "GET",
		dataType : "json",
		url : "https://www.googleapis.com/youtube/v3/search?q=파이썬&key=AIzaSyC__XjgtHRF3Qpq15asUfYKOwMWx9K99BA&part=id,snippet&type=video&maxResults=20",
		contentType: 'application/json',
		success : function(data) {
			for(var i=0; i<20; i++){
				let save={
				videoUrl: "https://www.youtube.com/embed/"+data.items[i].id.videoId,
				title: data.items[i].snippet.title,
				thumbnail: "https://img.youtube.com/vi/"+data.items[i].id.videoId+"/0.jpg",
				category: "Python"
				}
				$.ajax({
				type : "post",
				dataType : "json",
				contentType: 'application/json',
				data:JSON.stringify(save), 
				url : "/auth/updatevideo",
				success : function(data) {
				
				console.log("저장완료");

				}
				})
				
				
				
			}
			
		},
		complete : function(data) {},
		error : function(xhr, status, error) {} 
	});
	}