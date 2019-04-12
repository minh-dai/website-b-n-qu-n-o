<%-- 
    Document   : footer
    Created on : May 10, 2016, 7:28:22 PM
    Author     : TUNGDUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
                    $(function () {
                        $("#slider1").responsiveSlides({
                            auto: true,
                            speed: 500,
                            namespace: "callbacks",
                            pager: true,
                        });
                    });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>
            <!---->
            <div class="footer-middle">
                <div class="container">
                    <div class="footer-middle-in">
                        <h6>Bonfire</h6>
                        <p>Địa chỉ : Đại học công nghiệp Hà Nội</p>
                        <p>Email: haminhdai1997@gmail.com</p>
                        <p>Điện thoại: 0363068310</p>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Thông tin</h6>
                        <ul>
                            <li><a href="#">Dịch vụ</a></li>
                            <li><a href="#">Liên hệ</a></li>
                            <li><a href="#">Giới thiệu về công ty</a></li>
                            <li><a href="#">Giới thiệu về sản phẩm</a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Sản phẩm</h6>
                        <ul>
<!--                            <li><a href="contact.html">Contact Us</a></li>-->
                            <li><a href="#">Quần áo nam</a></li>
                            <li><a href="#">Quần áo nữ</a></li>
                            <li><a href="#">Phụ kiện</a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Chính sách</h6>
                        <ul>
<!--                            <li><a href="account.html">My Account</a></li>-->
                            <li><a href="#">Câu hỏi thường gặp</a></li>
                            <li><a href="wishlist.html">Giao hàng</a></li>
<!--                            <li><a href="#">Newsletter</a></li>-->
                        </ul>
                    </div>
                
            </div>
            <p class="footer-class">Nhóm 2_Haminhdai1997@gmail.com_0363068310<a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
            <script type="text/javascript">
                $(document).ready(function () {
                    /*
                     var defaults = {
                     containerID: 'toTop', // fading element id
                     containerHoverID: 'toTopHover', // fading element hover id
                     scrollSpeed: 1200,
                     easingType: 'linear' 
                     };
                     */

                    $().UItoTop({easingType: 'easeOutQuart'});

                });
            </script>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

        </div>

    </body>
</html>
