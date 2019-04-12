<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
         <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>

        <div id="rightContent">
            <h3>Trang Quản Trị Shop Bán Quần Áo</h3>
            <div class="quoteOfDay">
                <b>Trích dẫn trong ngày :</b><br>
                <i style="color: #5b5b5b;">"Nếu bạn nghĩ rằng bạn có thể, bạn thực sự có thể"</i>
                
            </div>
            
            <div class="shortcutHome">
                <a href="${root}/admin/manager_category.jsp"><img src="/ShopQuanAo/mos-css/admin/posting.png"><br>Quản lý danh mục</a>
            </div>
            
            <div class="shortcutHome">
                <a href="${root}/admin/manager_user.jsp"><img src="mos-css/admin/template.png"><br>Quản lý người dùng</a>
            </div>
            
            <div class="shortcutHome">
                <a href="${root}/admin/manager_product.jsp"><img src="mos-css/admin/photo.png"><br>Quản lý sản phẩm</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_bill.jsp"><img src="mos-css/admin/halaman.png"><br>Quản lý hóa đơn</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_chart.jsp"><img src="mos-css/admin/template.png"><br>Thống kê</a>
            </div>
            <div class="clear"></div>
            
        </div>
        <div class="clear"></div>

    </body>
</html>
