<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tải lên sản phẩm</title>
    </head>
    <body>

    <center>
        <form method="post" action="UploadServlet" enctype="multipart/form-data">
            Chọn sản phẩm :
            <input type="file" name="uploadFile" />
            <br/><br/>
            <input type="submit" value="Tải lên" />
        </form>
    </center>

</body>
</html>
