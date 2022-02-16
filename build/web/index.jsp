<%-- 
    Document   : index
    Created on : Feb 6, 2022, 5:04:29 PM
    Author     : ASUS ViviBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="db.connection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <%@include file="link.jsp" %>
    </head>
    <body id="page-top" class="sidebar-toggled">
        <div id="wrapper">
            <%@include file="sidebar.html" %>
            <div class="container-fluid" id="container-wrapper">
                <div class="row">
                    <%
                        try {
                            Connection con = connection.getConnection();
                            Statement stat = con.createStatement();
                            String query = "select dl.no_ruangan,dl.nama,ail.email"
                                    + " from datalab dl,ail where dl.nip=ail.nip"
                                    + " order by dl.no_ruangan asc";
                            ResultSet rs = stat.executeQuery(query);
                            while (rs.next()) {%>
                    <div class="col-sm-3">
                        <a href="lab.jsp?lab=<%=rs.getString(1)%>">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-center">
                                    <h1 class="m-0 font-weight-bold text-success">Lab <%=rs.getString(1)%></h1>
                                </div>
                                <div class="card-body bg-gray-400">
                                    <%=rs.getString(2)%><br>
                                    <%=rs.getString(3)%>
                                </div>
                            </div>
                        </a>
                    </div>
                    <%  }
                            rs.close();
                            stat.close();
                            con.close();
                        } catch (SQLException e) {
                            out.println(e);
                        }
                    %>
                </div>
                <%@include file="footer.html" %>
            </div>
        </div>
        <%@include file="script.jsp" %>
    </body>
</html>
