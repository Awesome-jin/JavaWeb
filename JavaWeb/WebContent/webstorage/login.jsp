<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Storage를 이용한 로그인</title>
</head>
<body>

<!-- 쿠키와 목적은 같다. 체크박스를 체크하면 id를 다시 불러오기. 이걸 storage를 이용해서 해보자. -->

<h3> 로그인 </h3>

	<!-- 쿠키를 이용한 방식과 다르게 id까지 설정해주도록 하자 -->
	
	<form action ="./loginprocess.jsp" method = "post" id="loginform"> 
		
		
		ID : <input type = "text" name ="id" required=required id="id"><br/> 
		
		비밀번호 : <input type 
		
		
		= "password" name ="pw" required=required/><br/> 
		
		<input type = "checkbox" name ="idsave" value="idsave" id="idsave"> 아이디저장 <br/>
		
		<input type = "submit" value = "signin"/> 
	
	</form>
	
	
	<script>
	
		var loginform = document.getElementById("loginform");
		var ids = document.getElementById("id"); //id나 pw 이런것들은 이미 사용하고 있는 변수명일 가능성이 높다.
		var idsave = document.getElementById("idsave");
		
		//폼의 데이터를 submit 할 때~
		loginform.addEventListener("submit", function(e){
			if(idsave.checked==true){ //idsave에 체크가 되어 있다면
				localStroage["id"] = ids.value; //로컬 스토리지에 id라는 키에다가 ids의 value를 저장해라
			}else{
				delete localStorage["id"]; //체크가 안되어 있으면 로컬스토리지에서 제거해라
			}
		});
		
		
		//윈도우가 로드 될 때 아이디 저장 여부를 확인해서 존재하면 표시해주게 하기
		window.addEventListener("load", function(e){ //윈도우가 로드 될 때~
			if(localStorage["id"]){  //localStorage에 id가 있다면
				ids.value = localStorage["id"]; // 값으로 넣어주고 checked도 true로 만들어주기
				idsave.checked = true;
			}else{
				ids.value="";
				idsave.checked = false;
			}
		})
		
	</script>
</body>
</html>