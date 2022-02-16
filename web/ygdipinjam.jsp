<%--
    Document   : ygdipinjam
    Created on : Feb 8, 2022, 7:05:53 AM
    Author     : ASUS ViviBook
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.connection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab yang dipinjam</title>
        <%@include file="link.jsp" %>
    </head>
    <body id="page-top" class="sidebar-toggled">
        <div id="wrapper">
            <%@include file="sidebar.html" %>
            <%--<%@include file="topbar.jsp" %>--%>
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Lab yang Dipinjam</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Lab yang Dipinjam</li>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-lg">
                        <div class="card mb-4">
                            <br>
                            <div class="card-body">
                                <%
                                    SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yyyy");
                                    SimpleDateFormat uy = new SimpleDateFormat("hh:mm");%>
                                <!--//                                    String value = request.getParameter("lab");-->
                                <%    try {
                                        Connection con = connection.getConnection();
                                        Statement stm = con.createStatement();
                                        String sql = "select * from peminjaman where"
                                                + " no_induk='2055301004' and status='Diterima' "
                                                + "order by tanggal_mulai asc limit 1"; //+ session.getAttribute("username");
                                        ResultSet rs = stm.executeQuery(sql);
                                        while (rs.next()) {%>
                                <form>
                                    <div class="form-group row">
                                        <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="nama" value="<%=rs.getString(3)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="nimp" class="col-sm-3 col-form-label">Nomor Induk</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="nimp" value="<%=rs.getString(4)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="email" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-5">
                                            <input type="email" class="form-control" name="email" value="<%=rs.getString(5)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="no_hp" class="col-sm-3 col-form-label">No HP</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="no_hp" value="<%=rs.getString(6)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="level" class="col-sm-3 col-form-label">Level</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="level" value="<%=rs.getString(7)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="ruang" class="col-sm-3 col-form-label">Ruangan</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="ruang" value="<%=rs.getString(14)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row" id="simple-date4">
                                        <label for="tgl" class="col-sm-3 col-form-label">Tanggal</label>
                                        <div class="col-sm-5 input-daterange input-group">
                                            <input type="text" class="input-sm form-control" name="start_tgl" value="<%=ft.format(rs.getDate(9))%>" readonly>
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">to</span>
                                            </div>
                                            <input type="text" class="input-sm form-control" name="end_tgl" value="<%=ft.format(rs.getDate(10))%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="jam" class="col-sm-3 col-form-label">Jam</label>
                                        <div class="col-sm-5 input-group clockpicker" id="clockPicker2">
                                            <input type="text" class="input-sm form-control" name="start_jam" value="<%=uy.format(rs.getTime(11))%>" readonly>                     
                                            <div class="input-group-append">
                                                <span class="input-group-text">to</span>
                                            </div> 
                                            <input type="text" class="input-sm form-control" name="end_jam" value="<%=uy.format(rs.getTime(12))%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="keperluan" class="col-sm-3 col-form-label">Keperluan</label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="keperluan" value="<%=rs.getString(13)%>" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <a href="form_logbook.jsp?kode=<%=rs.getString(1)%>"><button type="button" class="btn btn-primary" style="float: right">Selesai Meminjam</button></a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <% }
                            rs.close();
                            stm.close();
                            con.close();
                        } catch (SQLException e) {
                            out.println(e);
                        }%>
                </div>
            </div>
        </div>
        <%@include file="script.jsp" %>
    </body>
</html>
