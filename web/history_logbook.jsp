<%-- 
    Document   : history_logbook
    Created on : Feb 11, 2022, 1:20:47 AM
    Author     : HP-OMEN
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="link.jsp" %>
    </head>
    <body>
        <div id="wrapper">
            <%@include file="sidebar.html"%>
            <!-- Container Fluid-->
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">History Logbook</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="./">Fitur</a></li>
                        <li class="breadcrumb-item">History</li>
                        <li class="breadcrumb-item active" >History Logbook</li>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-lg-12 mb-4">
                        <!-- Simple Tables -->
                        <div class="card">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary"></h6>
                            </div>
                            <div class="table-responsive">
                                <table class="table align-items-center table-flush">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Nama Anggota</th>
                                            <th>Kondisi Ruangan</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <%
                                        String host = "jdbc:mysql://localhost:3306/genap2";
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn = DriverManager.getConnection(host, "root", "");
                                            String query = "select nama_anggota, kondisi_ruangan, status, kode_peminjaman "
                                                    + "from form_logbook";
                                            Statement stmt = conn.createStatement();
                                            ResultSet rs = null;
                                            rs = stmt.executeQuery(query);
                                    %>
                                    <tbody>
                                        <% while (rs.next()) {%>
                                        <tr>
                                            <td><%=rs.getString("nama_anggota")%></td>
                                            <td><%=rs.getString("kondisi_ruangan")%></td> 
                                            <td>
                                                <%
                                                    if (rs.getString("status").equalsIgnoreCase("belum terisi")) {%>
                                                <a href="form_logbook_update.jsp?kode=<%=rs.getInt(4)%>"><%=rs.getString("status")%></a>
                                                <%} else {%>
                                                <%=rs.getString("status")%>
                                                <%    }
                                                %>
                                            </td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                    <%
                                            rs.close();
                                            stmt.close();
                                            conn.close();
                                        } catch (SQLException ex) {
                                            out.print("Gagal Koneksi" + ex);
                                        } catch (Exception ex) {
                                            out.print(ex.getMessage());
                                        }
                                    %>
                                </table>
                            </div>
                            <div class="card-footer">

                            </div>
                        </div>
                    </div>
                </div>
                <!--Row-->
                <%@include file="footer.html"%>
            </div>
        </div>
        <!-- Scroll to top -->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/ruang-admin.min.js"></script>
    </body>
</html>
