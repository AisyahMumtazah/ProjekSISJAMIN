<%-- 
    Document   : form_peminjaman
    Created on : Feb 10, 2022, 2:35:00 PM
    Author     : Dewa Okta Reza
--%>
<%@page import="java.sql.*,java.util.*,javax.servlet.*" %>
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
                    <h1 class="h3 mb-0 text-gray-800">Form Logbook</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="./">Fitur</a></li>
                        <li class="breadcrumb-item">Form LogBook</li>                                
                    </ol>
                </div>
                <div class="row">
                    <div class="col-lg-12"> 
                        <form action="savelogbook.jsp" method="post">
                            <!-- Horizontal Form -->
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary"></h6>
                                </div>
                                <div class="card-body">
                                    <div class="form-group row">
                                        <div class="col-sm-9">
                                            <input type="number" name="kode_peminjaman" class="form-control"  id="kode_peminjaman" value="${param.kode}" hidden>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="kode_pengembalian" class="col-sm-3 col-form-label" hidden>Kode Pengembalian</label>
                                        <%try {
                                                String host = "jdbc:mysql://localhost:3306/genap2";
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection conn = DriverManager.getConnection(host, "root", "");
                                                String query = "SELECT count(kode_pengembalian) FROM form_logbook";
                                                Statement stmt = conn.createStatement();
                                                ResultSet rs = stmt.executeQuery(query);
                                                while (rs.next()) {%>
                                        <div class="col-sm-9">
                                            <input type="number" name="kode_pengembalian" class="form-control"  id="kode_pengembalian" value="<%=rs.getInt(1) + 1%>" readonly hidden>
                                        </div>
                                        <%}
                                                rs.close();
                                                stmt.close();
                                                conn.close();
                                            } catch (SQLException ex) {
                                                out.print("Gagal Koneksi" + ex);
                                            } catch (Exception ex) {
                                                out.print(ex.getMessage());
                                            }
                                        %> 
                                    </div>
                                    <div class="form-group row">
                                        <label for="nama_anggota" class="col-sm-3 col-form-label">Nama-nama Pemakai</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="nama_anggota" class="form-control"  id="nama_anggota" placeholder="Nama Anggota">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="kondisi_ruangan" class="col-sm-3 col-form-label">Kondisi Ruangan</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="kondisi_ruangan" class="form-control"  id="kondisi_ruangan" placeholder="Kondisi Ruangan">
                                        </div>
                                    </div>
                                    <center>
                                        <button type="reset" class="btn btn-info">Batal</button>
                                        <td>
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </td>
                                    </center>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <%@include file="footer.html"%>
            </div>
        </div>

        <!--Row-->

        <!-- Scroll to top -->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Select2 -->
        <script src="vendor/select2/dist/js/select2.min.js"></script>
        <!-- Bootstrap Datepicker -->
        <script src="vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <!-- Bootstrap Touchspin -->
        <script src="vendor/bootstrap-touchspin/js/jquery.bootstrap-touchspin.js"></script>
        <!-- ClockPicker -->
        <script src="vendor/clock-picker/clockpicker.js"></script>
        <!-- RuangAdmin Javascript -->
        <script src="js/ruang-admin.min.js"></script>
        <!-- Javascript for this page -->
        <script>
            $(document).ready(function () {
            $('#surat_tugas .custom-file').datepicker({
            format: 'dd/mm/yyyy',
                    todayBtn: 'linked',
                    todayHighlight: true,
                    autoclose: true,
            });
                    $('.select2-single').select2();
                    // Select2 Single  with Placeholder
                    $('.select2-single-placeholder').select2({
            placeholder: "Select a Province",
                    allowClear: true
            });

            // Select2 Multiple
            $('.select2-multiple').select2();

        </script>
    </body>
</html>

