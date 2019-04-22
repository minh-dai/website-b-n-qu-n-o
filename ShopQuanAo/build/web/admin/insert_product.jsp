<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Product</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Thêm sản phẩm</h3>

                    <form action="/ShopQuanAo/UploadServletTest" method="post" enctype="multipart/form-data">
                        <table width="95%">
                            <tr>
                            <tr><td><b>Loại sản phẩm</b></td><td><input name="loaiproduct" type="number" class="sedang"></td></tr>
                            <tr><td><b>Tên sảm phẩm</b></td><td><input name="tenproduct" type="text" class="panjang"></td></tr>
                            <tr><td><b>Ảnh sảm phẩm</b></td><td><input name="anhroduct" type="file" class="panjang"></td></tr>                       
                            <tr><td><b>Gía sản phẩm</b></td><td><input name="giaproduct" type="number" class="sedang"></td></tr>
                            <tr><td><b>Mô tả</b></td><td><input name="motaproduct" type="text" class="panjang"></td></tr>
                            </tr>
                            <tr><td>
                                </td><td>                 
                                    <input type="submit" class="button" value="Thêm">
                                </td>
                            </tr>
                        </table>


                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>
