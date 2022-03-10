<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/aside.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">

    <title>클래식기타 모임</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); // 인코딩 꼭 써주는게 좋다 
		
		String mId = request.getParameter("id");
		String mPw = request.getParameter("pw");
		
		if(mId.equals("tiger") && mPw.equals("12345"))
		{
			session.setAttribute("member_id", mId);
			session.setAttribute("member_pw", mPw);
			
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("<script>alert('로그인 정보가 일치하지 않습니다.');</script>");
			out.println("</script");
			response.sendRedirect("index.jsp");
		}
		
	%>



    <div id="wrap"> <!-- 전체 범위 레이아웃 wrap 시작 -->
        <header>
            <a href="index.html"><img id="logo" src="img/logo.png"></a>
            <nav id="top_menu">
                <a href="index.html">HOME</a> | LOGIN | JOIN | NOTICE
            </nav>
            <nav id="main_menu">
                <ul>
                    <li><a href="board_write.jsp">자유 게시판</a></li>
                    <li><a href="#">기타 연주</a></li>
                    <li><a href="#">공동 구매</a></li>
                    <li><a href="#">연주회 안내</a></li>
                    <li><a href="#">회원 게시판</a></li>
                </ul>
            </nav>
        </header> <!-- header -->

        <aside>
            <article id="login_box">
                <div id="input_button">
                    <img id="login_title" src="img/ttl_login.png">
                    <h2><%=mId %>님</h2>
                    <h3>로그인 중</h3>
					<h2><a href="logoutOk.jsp">로그아웃</a></h2>
					
                </div>
                <div class="clear"></div>
                <div id="join_search">
                    <img src="img/btn_join.gif">
                    <img src="img/btn_search.gif">
                </div>
            </article> <!-- login_box -->

            <article id="guestbook">
                <div id="guestbook_title">
                    <img src="img/ttl_memo.gif">
                </div>
                <ul>
                    <li>안녕하세요!</li>
                    <li>안녕하세요!</li>
                    <li>안녕하세요!</li>
                    <li>안녕하세요!</li>
               </ul>
            </article>

        </aside> <!-- aside -->

        <main> <!-- 메인컨텐츠 시작 -->
            <img src="img/main_img.png">
            <section id="notice_free_youtube">
                <article id="notice"> <!-- 공지사항 시작 -->
                    <div class="latest_title">
                        <img class="latest_img" src="img/latest1.gif">
                        <img class="more" src="img/more.gif">
                        <div class="clear"></div>
                    </div>
                    <div class="latest_content">
                        <img class="book_image" src="img/book_pen.gif">
                        <ul class="list">
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                        </ul>
                    </div>
                </article> <!-- 공지사항 끝-->
                <article id="free"> <!-- 자유게시판 시작 -->
                    <div class="latest_title">
                        <img class="latest_img" src="img/latest2.gif">
                        <img class="more" src="img/more.gif">
                        <div class="clear"></div>
                    </div>
                    <div class="latest_content">
                        <img class="book_image" src="img/book_pen.gif">
                        <ul class="list">
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                            <li>
                                <div class="subject">루바토 개편과 사이트 이용...</div>
                                <div class="date">2022-01-13</div>
                                <div class="clear"></div>
                            </li>
                        </ul>
                    </div>
                </article> <!-- 자유게시판 끝 -->
                <article id="youtube"> <!-- 유튜브 시작 -->
                    <div class="latest_title">
                        <img class="latest_img" src="img/latest3.gif">
                        <img class="more" src="img/more.gif">
                        <div class="clear"></div>
                    </div>
                    <img id="youtube_img" src="img/bach.jpg">
                </article> <!-- 유튜브 끝 -->
            </section>
            <section id="gallery"> <!-- 갤러리 시작 -->
                <img src="img/latest4.gif">
                <div id="gallery_box"> <!-- 갤러리 박스 시작 -->
                    <div id="gallery_list">
                        <div class="items">
                            <ul>
                                <li><img src="img/img1.jpg"></li>
                                <li>기타 페스티벌 4중주</li>
                            </ul>
                        </div>
                        <div class="items">
                            <ul>
                                <li><img src="img/img1.jpg"></li>
                                <li>기타 페스티벌 4중주</li>
                            </ul>
                        </div>
                        <div class="items">
                            <ul>
                                <li><img src="img/img1.jpg"></li>
                                <li>기타 페스티벌 4중주</li>
                            </ul>
                        </div>
                    </div> <!-- 갤러리 리스트 끝 -->
                </div> <!-- 갤러리 박스 끝 -->
            </section> <!-- 갤러리 끝 -->
        </main> <!-- main -->
        <div class="clear"></div>

        <footer> <!-- footer 시작 -->
            <img id="footer_logo" src="img/footer_logo.gif">
            <ul id="address">
                <li>서울시 강남구 삼성동 1234 우 : 123-111</li>
                <li>TEL : (02)-1234-1234 / Email : abc@abc.com</li>
                <li>COPYRIGHTⓒ 루바토 ALL RIGHTS RESERVED</li>
            </ul>
            <ul id="footer_sns">
                <li><img src="img/facebook.gif"></li>
                <li><img src="img/blog.gif"></li>
                <li><img src="img/twitter.gif"></li>
            </ul>
        </footer> <!-- footer 끝 -->
    </div> <!-- wrap -->
</body>
</html>