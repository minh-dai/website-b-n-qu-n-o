<%-- 
    Document   : manager_user
    Created on : Apr 2, 2019, 9:49:19 PM
    Author     : hamin
--%>

<%@page import="model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý người dùng</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

         <%
            UsersDAO usersDAO = new UsersDAO();
            ArrayList<Users> listUsers = usersDAO.getAllUser();
        %>
        
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý người dùng</h3>
                    
<!--                    <a href="${root}/admin/insert_category.jsp">Thêm người dùng</a>-->
                <br>
                    <table class="data">

                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Id người dùng</th>
                            <th class="data">Gmail người dùng</th>
                            <th class="data">Mật khẩu người dùng</th>
                            <th class="data">Giới tính</th>
                            <th class="data">Quyền</th>
                            <th class="data" width="90px">Tùy chỉnh</th>
                        </tr>

                        <%
                            int count = 0;
                            for(Users user : listUsers){
                                count++;
                        %>
                        <tr class="data">
                            <td class="data" width="30px"><%=count%></td>
                            <td class="data"><%=user.getUserID()%></td>
                            <td class="data"><%=user.getUserEmail()%></td>
                            <td class="data"><%=user.getUserPass()%></td>
                            <td class="data"><%=user.isUserSex()? "Nam" : "Nữ" %></td>
                            <td class="data"><%=user.isUserRole() ? "Admin" : "User" %></td>
                            <td class="data" width="90px">
                            <center>
                                <a href="${root}/admin/update_user.jsp?command=update&user_id=<%=user.getUserID()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                <a href="/ShopQuanAo/ManagerUserServletTest?command=delete&user_id=<%=user.getUserID()%>">Xóa</a>
                            </center>
                            </td>
                        </tr>
                        <%}%>

                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>

    </body>
</html>

