<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = request.getServletContext().getRealPath("image/product"); //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");


	Integer price;

	if (unitPrice.isEmpty()) // 데이터 타입을 문자열 -> 정수로 변환하는 과정
		price = 0;
	else
		price = Integer.valueOf(unitPrice); // '0'을 0으로 바꿔준다.

	long stock;

	if (unitsInStock.isEmpty()) // 데이터 타입을 문자열 -> 정수로 변환하는 과정
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);

                                          

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
                                          
	ProductRepository dao = ProductRepository.getInstance();  // dao 객체에 새로운 객체

	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
    newProduct.setFilename(fileName);


	dao.addProduct(newProduct);

	response.sendRedirect("index_ad.jsp"); // request 내장객체는 받을 때 | response 내장 객체는 반응 
%>
