<%@ page import="java.sql.*" %>

<%
// db 연결 정보
String url = "jdbc:mysql://localhost:3306/ggouppang_20220977?characterEncoding=utf8";
		String user = "root";
		String password = "123123";

// id를 받아온다 (getParameter를 통해)
String productId = request.getParameter("id");

// 상품 조회 쿼리 선언 및 초기화
String selectQuery = "SELECT * FROM product WHERE p_id = ?";

Connection conn = null;
PreparedStatement stmt = null;
PreparedStatement deleteStmt = null;
ResultSet rs = null;

try {
    // DB 연결
    Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);

    // 쿼리의 ? 필드에 대한 값을 지정
    stmt = conn.prepareStatement(selectQuery);
    stmt.setString(1, productId);

    // 쿼리 실행 및 결과 처리
    rs = stmt.executeQuery();
    if (rs.next()) {
        // 상품이 존재하는 경우 삭제 쿼리로 초기화
        String deleteQuery = "DELETE FROM product WHERE p_id = ?";

        // prepareStatement 객체를 다시 생성
        deleteStmt = conn.prepareStatement(deleteQuery);
        // ? 필드에 대한 값을 지정 (db 내부 필드 이름은 productId)
        deleteStmt.setString(1, productId);

        // 삭제 쿼리 실행
        int rowsDeleted = deleteStmt.executeUpdate();

        if (rowsDeleted > 0) {
            out.println("상품이 성공적으로 삭제되었습니다.");
        } else {
            out.println("상품 삭제에 실패하였습니다.");
        }
    } else {
        out.println("해당 상품이 존재하지 않습니다.");
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    // 객체 해제
    if (rs != null) {
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (deleteStmt != null) {
        try {
            deleteStmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (stmt != null) {
        try {
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

  String redirectUrl = "product_edit.jsp?edit=delete";
  response.sendRedirect(redirectUrl);
%>