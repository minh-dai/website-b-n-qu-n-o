<%-- 
    Document   : update_product
    Created on : Apr 1, 2019, 1:56:19 PM
    Author     : hamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật danh mục</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

        <%
            String error = "";
            if (request.getParameter("error") != null) {
                error = (String) request.getParameter("error");
            }
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Cập nhật danh mục</h3>
                    <form action="/ShopQuanAo/ManagerProductServletTest" method="post" enctype="multipart/form-data">
                        <table width="95%">
                            
                            <tr>
                                <td style="float:"><b>ID sản phẩm:</b></td>
                                <td <input type="text" name="product_id" disabled><%=request.getParameter("product_id")%></td> 
                            </tr>
                            
                            <tr>
                                <td style="float:"><b>Tên sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="tenSanPham" value="<%=request.getParameter("product_name")%>"></td>
                            </tr>
                            
                            <tr>
                                <td style="float:"><b>Ảnh sản phẩm:</b></td>
                                <td><input type="file" name="image" value="Chọn ảnh"></td>
                            </tr>
                            <tr>
                                <td style="float:"><b>Gía sản phẩm:</b></td>
                                <td><input type="number" class="sedang" name="price" value="<%=request.getParameter("product_price")%>"></td>
                            </tr>
                            
                            <tr>
                                <td style="float:"><b>Mô tả sản phẩm:</b></td>
                                <td><input type="text" name="pescription"value="<%=request.getParameter("product_mota")%>"></td>
                            </tr>
       
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
<!--                                <input type="hidden" name="product_id" value="<%=request.getParameter("product_id")%>">-->
                                <input type="submit" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>
