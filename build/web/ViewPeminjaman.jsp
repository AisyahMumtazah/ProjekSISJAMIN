<%-- 
    Document   : ViewPeminjaman
    Created on : Feb 7, 2022, 2:35:04 PM
    Author     : A S U S
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="css/ruang-admin.min.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <div id="wrapper">
            <%@include file= "sidebar.html" %>

            <!--<div class="container-fluid" id="container-wrapper">               
              <div class="row">-->
            <div class="col-lg-12">
                <div class="card mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">History Peminjaman Lab</h6>
                    </div>
                    <div class="table-responsive p-3">
                        <table class="table align-items-center table-flush" id="dataTable">
                            <thead class="thead-light">
                                <tr>
                                    <th>Kode Peminjaman</th>
                                    <th>Kategori</th>
                                    <th>Nama Peminjam</th>
                                    <th>No.Induk</th>
                                    <th>Email</th>
                                    <th>No.Telp</th>
                                    <th>Level</th>
                                    <th>Tanggal Peminjaman</th>
                                    <th>Tanggal Mulai</th>
                                    <th>Tanggal Akhir</th>
                                    <th>Jam Mulai</th>
                                    <th>Jam Selesai</th>
                                    <th>Keperluan</th>
                                    <th>No.Ruangan</th>
                                </tr>
                                <%
                                    String host = "jdbc:mysql://localhost:3306/genap2";

                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection(host, "root", "");
                                        Statement stmt = conn.createStatement();
                                        String query = "select * from peminjaman,peminjam where peminjam.no_induk=peminjaman.no_induk"
                                                + " and peminjaman.status='dikembalikan'";
                                        ResultSet rs = stmt.executeQuery(query);
                                        while (rs.next()) {%>

                                <%! int i = 1;%>
                                <tr>
                                    <% for (i = 1; i <= 15; i++) {%>
                                    <td>
                                        <%=rs.getString(i)%>
                                    </td>
                                    <%}%>
                                </tr>
                                <%}
                                    } catch (SQLException e) {

                                    }


                                %>
                                </tbody>
                        </table>
                    </div>
                </div>
                <%@include file="footer.html" %>
            </div>
        </div>
        <%@include file="script.jsp" %>
    </body>
</html>
