<%-- 
    Document   : updatestatus
    Created on : Feb 11, 2022, 3:23:31 AM
    Author     : ASUS ViviBook
--%>

<%@page import="java.sql.*,java.util.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%try {
        int kpm = Integer.parseInt(request.getParameter("kpm"));
        String host = "jdbc:mysql://localhost:3306/genap2";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(host, "root", "");
        if (conn != null) {
            PreparedStatement pst = conn.prepareStatement("update peminjaman set status='dikembalikan' "
                    + "where kode_peminjaman='"+kpm+"'");
            pst.executeUpdate();
            response.sendRedirect("ViewPeminjaman.jsp");
        }
    } catch (Exception ex) {
        out.print(ex.getMessage());
    }
%>
