<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="account">
                    <h2 class="account-in" style="color: #E73737" >Đăng nhập</h2>
                    <form action="UsersServlet" method="POST">
                        <%if(request.getParameter("error")!=null){%>
                        <div>
                            <p style="color:red"><%=request.getParameter("error")%></p>
                        </div> 
                        <%}%>
                        <div>
                            <span>Tên tài khoản *</span>
                            <input type="text" name="email">
                        </div> 	
                         <div> 
                            <span class="word">Mật khẩu *</span>
                            <input type="password" name="pass">
                        </div>			
                        <input type="hidden" value="login" name="command">
                        <input type="submit" value="Đăng nhập"> 
                    </form>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>


    </body>
</html>
