<%@ page contentType = "text/html; charset=utf-8" %>
 <nav class="navbar navbar-expand  navbar-white bg-white">
      <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
          </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">coffee beans</a>
        <a class="dropdown-item" href="#">coffee grinder</a>
        <a class="dropdown-item" href="#">coffee extractor</a>
        <a class="dropdown-item" href="#">Espresso machine</a>
     </div>
	</div>

    <div>
        <img src="..\image\coffeeduck.jpg" class="img-fluid" alt="main_image">
    </div>

     <div class="container">
         <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="./index.jsp">로그인</a>
            <a class="navbar-brand" href="./index.jsp">회원가입</a>
            <a class="navbar-brand" href="./index.jsp">고객센터</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a> 
            <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
         </div>
      </div>
     </nav>
