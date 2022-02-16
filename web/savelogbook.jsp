<%-- 
    Document   : savelogbook
    Created on : Feb 11, 2022, 2:36:43 AM
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
                PreparedStatement pst = conn.prepareStatement("INSERT INTO form_logbook VALUES(?,?,?,?,?)");
                pst.setInt(1, kpg);
                pst.setInt(2, kpm);
                pst.setString(3, na);
                pst.setString(4, kr);
                if(na==null||kr==null){
                    pst.setString(5, "belum terisi");
                }else{
                    pst.setString(5, "terisi");
                }
                pst.executeUpdate();
                response.sendRedirect("updatestatus.jsp?kpm="+kpm);
            }
    }catch (Exception ex) {
        out.print(ex.getMessage());
    }
%>