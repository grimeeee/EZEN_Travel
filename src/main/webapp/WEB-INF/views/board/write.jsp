<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/write.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	// 취소 버튼
	$('#cancel').click(function(){
		var result = confirm('취소하시겠습니까?');
		if(result){
			// yes
			// 게시판으로 돌아가게끔 설정
			location.replace('board.do');
		} else {
			// no
		}
	});
	
	// 등록 버튼
	$('#update').click(function(){
		var up = confirm('등록하시겠습니까?');
		if(up){
			// yes
			if($('#title').val() == ""){
				alert('제목을 입력해주세요.');
				$('#title').focus();
				return false;
			}
		
			if($('#content').val() == ""){
				alert('내용을 입력해주세요.');
				$('#content').focus();
				return false;
			}
			
			// 게시글 작성 시 엔터 값을 <br/>로 받기 위해 재설정 한다.
			$('[name=content]').val(
					$('[name=content]').val().replace(/\n/gi, '<br/>'));
		
			$('#frm').attr('action', 'write.do').submit();
		} else{
			// no
		}
	});	
	
	
	
});


</script>
</head>
<body>
	<!-- 헤더 영역 -->
	<header class="et header">
		<div class="et login">
			<!--우측상단탭-->
			<ul class="login_list">
				<li><a href="#" class="login_button">로그인</a></li>
			</ul>
		</div>

		<div class="et logo">
			<!--중앙로고배너-->
			<h1 class="logo_img">
				<a href="#"> <img src="resources/image/logo.png" alt="로고" />
				</a>
			</h1>
		</div>
		<div class="et category">
			<!--하단카테고리-->
			<ul class="category_list">
				<li><a href="#">태그필터</a></li>
				<li><a href="#">커뮤니티</a></li>
				<li><a href="#">소개</a></li>
			</ul>
		</div>
	</header>
<!-- 섹션 영역 -->
<section class="et content_section">
<!-- 게시글 작성 -->
	<div class="content_wrap">
		<form name="frm" id="frm" method="post">
			<div class="content_head">
				<div class="head_fi">
					<h2>글쓰기</h2>
				</div>
				<div class="head_btn">
					<input type="button" id="cancel" value="취소" />
					<input type="button" id="update" value="등록" />
				</div>
			</div>
			<div class="content_main">
				<div class="content_ti">
					<input type="text" name="title" id="title" value="" placeholder="제목을 입력해 주세요." />
				</div>
				<div class="content_co">
					<textarea cols="50" rows="20" name="content" id="content" style="resize:none" placeholder="내용을 입력해 주세요."></textarea>
				</div>
			</div>
		</form>
	</div>
</section>
<!-- footer -->
	<footer class="et footer">
		<div class="et info1">
			<h4>고객센터</h4>
			<h4>070-4795-4042</h4>
			<div id="bottomText">
				<p>월요일 ~ 금요일 / 10:00 - 17:00</p>
				<p>점심시간 12:00 - 13:00</p>
				<p>주말 및 공휴일 휴무</p>
			</div>
			<div id="bottomIcon">
				<p>
					<img src=resources/image/final_footer01.png alt="01" id="icon1">
					플러스 친구 : ezen_travel
				</p>
				<p>
					<img src=resources/image/final_footer02.png alt="02" id="icon2">
					인스타그램 : ezen_travel
				</p>
			</div>
		</div>
		<div class="et info2">
			<p>법인명(상호) : ezentravel</p>
			<br />
			<p>Copyright © ezentravel. All rights reserved. Hosting by cafe24
				corp.</p>
		</div>
	</footer>
</body>
</html>
