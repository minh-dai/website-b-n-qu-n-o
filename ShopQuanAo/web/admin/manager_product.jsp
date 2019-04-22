<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
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

        <%
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> listProduct = productDAO.getListProductAll();
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản Lý Sản Phấm</h3>
                    
                    <a href="${root}/admin/insert_product.jsp">Thêm sản phẩm</a>
                
                
                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã sản phẩm</th>
                            <th class="data">Mã thể loại</th>
                            <th class="data">Tên sản phẩm</th>     
                            <th class="img-responsive" >Ảnh</th>
                            <th class="data">Gía</th>
                            <th class="data">Mô tả</th>
                            <th class="data" width="75px">Tùy chọn</th>
                        </tr>

                    <%
                        int size = listProduct.size();
                        int count = 0;
                        for (Product p:listProduct) {
                            ++count;

                    %>
                        <tr class="data">
                            <td class="data" width="30px"><center><%=count%></center></td>
                            <td class="data" width="50px"><center><%=p.getProductID()%></center></td>
                            <td class="data" width="50px"><center><%=p.getCategoryID()%></center></td>
                            <td class="data" width="70px"><center><%=p.getProductName()%></center></td>
                            <td class="img-responsive" width="150px" height = "150px">
                                <img  src="/ShopQuanAo/<%=p.getProductImage()%>" alt="" />
                            </td>
                            <td class="data" width="60px"><%=p.getProductPrice()%></td>
                            <td class="data" width="150px"><%=p.getProductDescription()%></td>
                            <td class="data" width="75px">
                                <center>
                                    
                                    <a href="${root}/admin/update_product.jsp?command=update&product_id=<%=p.getProductID()%>&product_name=<%=p.getProductName()%>&product_price=<%=p.getProductPrice()%>&product_mota=<%=p.getProductDescription()%>">Sửa</a>
                                    <br>
                                    <br>
                                    <br>
                                    <a href="/ShopQuanAo/ManagerProductServletTest?command=delete&product_id=<%=p.getProductID()%>">Xóa</a>
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
