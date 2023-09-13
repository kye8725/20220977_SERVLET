<%@ page contentType = "text/html; charset=utf-8" %>
 <%! String greeting = "꾸팡.COM에 오신 것을 환영합니다.";
        String tagline = "하단 페이지 : 확인";%>
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">
            <%=greeting%>
         </h1>
      </div>
   </div>

    <div class="card bg-dark text-white">
     <img src="image/image4.png" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">첫 주문 이벤트</h5>
    <p class="card-text">출처 : 콩볶는 사람들</p>
      </div>
  </div>

    <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        원두커피
      </a>
      <a href="#" class="list-group-item list-group-item-action">콜드브루</a>
      <a href="#" class="list-group-item list-group-item-action">커피머신</a>
      <a href="#" class="list-group-item list-group-item-action">에스프레소머신</a>
    </div>
