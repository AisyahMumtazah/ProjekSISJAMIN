<%-- 
    Document   : lab
    Created on : Feb 7, 2022, 9:50:23 AM
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
        <title>Lab ${param.lab}</title>
        <%@include file="link.jsp" %>
    </head>
    <body id="page-top" class="sidebar-toggled">
        <div id="wrapper">
            <%@include file="sidebar.html" %>
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <div class="row align-items-center">
                        <div class="col-sm">
                            <a href="index.jsp"><img src="img/1904658-arrow-arrow-left-change-direction-left-next-undo_122508.png"></a>
                        </div>
                        <h1 class="mb-0 text-gray-900">
                            <select class="select2-single form-control" name="ruang" id="select2Single" onchange="location = this.value;">
                                <option value="${param.lab}">Lab ${param.lab}</option>
                                <% try {
                                        String value = request.getParameter("lab");
                                        Connection cn = connection.getConnection();
                                        Statement cr = cn.createStatement();
                                        String sl = "select no_ruangan from datalab "
                                                + "where no_ruangan <> '" + value + "' order by no_ruangan asc";
                                        ResultSet rt = cr.executeQuery(sl);
                                        while (rt.next()) {%>
                                        <option value="lab.jsp?lab=<%=rt.getString(1)%>">Lab <%=rt.getString(1)%></option>
                                <%  }
                                        rt.close();
                                        rt.close();
                                        rt.close();
                                    } catch (SQLException e) {
                                        out.println(e);
                                    }%>
                            </select>
                        </h1>
                    </div>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Lab ${param.lab}</li><br>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-center">
                                <h3 class="m-0 font-weight-bold text-warning">Jadwal Peminjaman</h3>
                            </div>
                            <div class="card-body">
                                <%
                                    SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yyyy");
                                    SimpleDateFormat uy = new SimpleDateFormat("hh:mm");
                                    String value = request.getParameter("lab");
                                    try {
                                        Connection ck = connection.getConnection();
                                        Statement su = ck.createStatement();
                                        String sql = "select nama_peminjam,level,tanggal_mulai,tanggal_akhir,"
                                                + "jam_mulai,jam_selesai,keperluan,kode_peminjaman,"
                                                + "no_induk,no_telp,tanggal_peminjaman,email from peminjaman "
                                                + "where no_ruangan='" + value + "' and status='diterima' "
                                                + "order by tanggal_peminjaman asc";
                                        ResultSet st = su.executeQuery(sql);
                                        while (st.next()) {%>
                                <div class="col">
                                    <a href="modal.jsp?&lab=${param.lab}&no=<%=st.getString(8)%>">
                                        <div class="card mb-4">
                                            <div class="card-body text-gray-700">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <h6 class="m-0 font-weight-bold"><%=st.getString(1)%></h6><hr>
                                                        Level       : <%=st.getString(2)%><br>
                                                        Keperluan   : <%=st.getString(7)%>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="text-right">
                                                            <br><br>
                                                            <%=ft.format(st.getDate(3))%> - <%=ft.format(st.getDate(4))%><br>
                                                            Pukul <%=uy.format(st.getTime(5))%> - <%=uy.format(st.getTime(6))%> WIB
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <%  }
                                        st.close();
                                        su.close();
                                        ck.close();
                                    } catch (SQLException e) {
                                        out.println(e);
                                    }%>
                                <%--<%@include file="modal.jsp" %>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg">
                        <div class="card mb-4">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-center">
                                <h3 class="m-0 font-weight-bold text-warning">Jadwal Praktikum</h3>
                            </div>
                            <div class="card-body">
                                <%@include file="praktikum.jsp" %>
                            </div>
                        </div>
                    </div>
                </div>

                <%@include file="footer.html" %>
            </div>
            <%@include file="script.jsp" %>
        </div>
    </body>
</html>
