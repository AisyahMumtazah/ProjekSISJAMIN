<%-- 
    Document   : savelogbook_U
    Created on : Feb 11, 2022, 4:00:08 AM
    Author     : ASUS ViviBook
--%>

<%@page import="java.sql.*,java.util.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int kpm = Integer.parseInt(request.getParameter("kode_peminjaman"));
    int kpg = Integer.parseInt(request.getParameter("kode_pengembalian"));
    String na = request.getParameter("nama_anggota");
    String kr = request.getParameter("kondisi_ruangan");
    try {
        String host = "jdbc:mysql://localhost:3306/genap2";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(host, "root", "");
        if (conn != null) {
            PreparedStatement pst = conn.prepareStatement("update form_logbook set nama_anggota='"+na
                    + "',kondisi_ruangan='"+kr+"', status='terisi' where kode_pengembalian='"+kpg+"'");
            pst.executeUpdate();
            response.sendRedirect("ViewPeminjaman.jsp");
        }
    } catch (Exception ex) {
        out.print(ex.getMessage());
    }
%>
