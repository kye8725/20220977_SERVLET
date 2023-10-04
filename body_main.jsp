<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 커피 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
        </div>
    </div>
</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 

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
 

      <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="image/product/<%=product.getProductId()%>.jpg"a class="card-img" alt="...">
                        <div class="card-img-overlay">
                        
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p><a href="product_detail.jsp?id=<%=product.getProductById()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
