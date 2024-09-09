<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>예매하다 공지사항</title>
</head>
<body>

<link rel="stylesheet" href="css/style1.css">
<ul id="top_gnb">
  <li>
    <a href="">로그인</a>
  </li>
  <li>
    <a href="">회원가입</a>
  </li>
  <li>
    <a href="">
      고객센터
    </a>
    <ul style="visibility: hidden;">
      <li><a href="">공지사항</a></li>
      <li><a href="">FAQ</a></li>
      <li><a href="">1:1문의</a></li>
    </ul>
  </li>
</ul>


    </div>
    <!-- <div style="position:absolute; top:60px; right:0; z-index:1;">
      <a href="event.php?no=202407" id="202407_wbnr_top">
        <img src="talk/event/2024/07/202407_wbnr_top.png" style="width:190px;" alt="2024 여름방학 기획전"/>
      </a>
    </div> -->
  </div>

<div class="gnb_wrap" style="height:55px; padding-top:2px;">
    <a href=""></a>
    <div style="position:absolute; top:2px; left:335px;">
      <style type="text/css">
    input:focus {
        outline: none;
    }

    .search_box {
        font-size: 15px;
        height: 38px;
        line-height: 38px;
        padding: 0 20px;
        vertical-align: top;
        border: 1px solid #e0e0e0;
        width: 240px;
        background: #f9f9f9;
    }


    .dropdown {
        position: relative;
        display: inline-block;
    }

    /* Dropdown Content (Hidden by Default) */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        width: 280px;
        max-height: 40vh;
        overflow-y: scroll;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 100;
        border: 1px solid #e0e0e0;
        border-top: hidden;
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        color: #999;
        font-size: medium;
    }

    /* Links inside the dropdown */
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    /* Change color of dropdown links on hover */
    .dropdown-content a:hover {
        background-color: #f1f1f1
    }

    /* Show the dropdown menu on hover */
    .dropdown-content.show {
        display: block;
    }

    .search_box.show {
        border-bottom: hidden;
        border-bottom-left-radius: unset;
        border-bottom-right-radius: unset;
    }

    /* Change the background color of the dropdown button when the dropdown content is shown */
    .dropdown:hover .dropbtn {
        background-color: #3e8e41;
    }

    mark {
        background-color: unset !important;
        color: #ff4b4b !important;
    }
</style>

<form name="frm" method="get" action="https://timeticket.co.kr/all_search.php" onsubmit="return">
  <div style="vertical-align:top; position:relative;" class="dropdown">
    <input type="text" name="search_word" id="search_word" value="" class="search_box" autocomplete="off">
    <!-- GA4 입력을 위해 q 파라미터 추가 -->
    <input type="hidden" name="q" id="q" value="">
    <div style="position:absolute; top:2px; left:230px;">
      <button type="submit" id="search_btn" style="padding: 8px; background: none; border: none;">
        <img src="/img/search_btn.png" alt="검색하기" onfocus="this.blur();">
      </button>
    </div>
    <div id="dropdown-content" class="dropdown-content">
    </div>
  </div>
</form>
<script src="/js/search.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('search_btn').addEventListener('click', function () {
      document.getElementById('q').value = document.getElementById('search_word').value;
    });
    document.getElementById('search_word').addEventListener('input', () => TTAutocomplete.callback());
  });
  window.addEventListener("beforeunload", () => {
    document.getElementById('search_word').value = ''
    TTAutocomplete.clear()
  });
</script>

<!--search_part.html-->
    </div>
  </div>

<div class="gnb_wrap" style="height:45px;">
    <div style="position:absolute; right:0;">
      <script type="text/javascript">
  var timeout         = 100;
  var closetimer                = 0;
  var ddmenuitem      = 0;
  function top_gnb_open() {
    top_gnb_canceltimer();
    top_gnb_close();
    ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');
  }
  function top_gnb_close()
  {
  if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');
  }
  function top_gnb_timer() {
    closetimer = window.setTimeout(top_gnb_close, timeout);
  }
  function top_gnb_canceltimer() {
  if(closetimer)	{
    window.clearTimeout(closetimer);
    closetimer = null;
    }
  }
  $(document).ready(function()
  {
    $('#top_gnb > li').bind('mouseover', top_gnb_open);
    $('#top_gnb > li').bind('mouseout',  top_gnb_timer);
  });
  document.onclick = top_gnb_close;
</script>



<div class="mypage_left_wrap" style="height: 783px;">

      <div class="mypage_left_title">
        고객센터
      </div>

      <ul>
        <li onclick="" class="mypage_left_sub">
                  <span class="mypage_left_sub_on">공지사항</span>
                </li>

        <li onclick="" class="mypage_left_sub">
                  <span class="mypage_left_sub_off">자주 묻는 질문</span>
        
        </li><li onclick="" class="mypage_left_sub">
                  <span class="mypage_left_sub_off">1:1문의</span>
                </li>
      </ul>

    </div>

<div class="mypage_right_wrap">

      <div class="mypage_right_title">
                  공지사항
              </div>

      <div style="margin-top:17px; ">

	<ul class="bbs_list_header">
		<li style="width:75px;">번호</li>
		<li style="width:590px;">제목</li>
		<li style="width:90px">작성일</li>
	</ul>

	<div class="bbs_list_paging" "="">
        <style type="text/css">
          #page{text-align:center; padding:0 0 30px 0;}
          #page a,div#page b{border:1px solid #d9d9d9; color:#555; font-size:14px; padding:5px 9px; margin:0 2px; background:#fff; }
          #page a:hover{text-decoration:none; color:black; background:#ededed;}
          #page a.prev{width:70px; padding-left:5px;}
          #page a.next{width:70px;padding-right:5px;}
          #page b.now{border:0px;color:#ff0000;font-weight:bold; background:none}
        </style>
        <div id="page">
  <span onclick="location.reload();" style="cursor:pointer"><b class="now">1</b></span><a href="/bbs_list.php?tb=board_notice&amp;pg=2&amp;number=&amp;category=" class="pgnum">2</a><a href="/bbs_list.php?tb=board_notice&amp;pg=3&amp;number=&amp;category=" class="pgnum">3</a><a href="/bbs_list.php?tb=board_notice&amp;pg=4&amp;number=&amp;category=" class="pgnum">4</a><a href="/bbs_list.php?tb=board_notice&amp;pg=5&amp;number=&amp;category=" class="pgnum">5</a>..<a href="/bbs_list.php?tb=board_notice&amp;pg=6&amp;number=&amp;category=" class="next">다음</a></div></div>
	<div></div>

</div>



    </div>

</body>
</html>