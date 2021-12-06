<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>프론트페이지</title>
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/front.css">
    <link rel="stylesheet" href="css/print.css">
    <script src="script/jquery-3.6.0.min.js"></script>
    <script src="script/s3Slider.js"></script>

    <script>
        $(document).ready(function(){
            ///작업중
            $("#s3slider").s3Slider({
                timeOut:5000
            });

        });
    </script>
</head>
<body>
    <div id="wrap">
        <header>
            <div id="login"><a href="#">login</a> | 
                <a href="#">logout</a></div>
            <div class="clear"></div>
            <div id="logo">
                <img src="images/logo.png" alt="bootstrap" width="265" height="62">
            </div>
            <nav id="top_menu">
                <ul>
                    <li><a href="./index.jsp">HOME</a></li>
                    <li><a href="company/welcome.jsp">COMPANY</a></li>
                    <li><a href="#">SOLUTIONS</a></li>
                    <li><a href="center/notice.jsp">CUSTOMER CENTER</a></li>
                    <li><a href="#">CONTACT US</a></li>
                </ul>
            </nav>
    
        </header>
        <div class="clear"></div>
        <!-- 메인이미지 장소 -->
        <div id="main_img">
            <!-- <img src="images/main_img.jpg" width="971" height="282" alt=""> -->
            <div id="s3slider">
                <ul id="s3sliderContent">
                    <li class="s3sliderImage">
                        <img src="images/bike.png" alt="" width="971" height="282">
                        <span>지난 3일 개막한 제 68회 3.1절기념 강진투어 전국도로사이클대회가 크리테리움 경기를 끝으로 4일간의 열전을 마무리했다.대한자전거연맹이 주관하고 전라남도와 강진군이 후원한 이번 대회에는 선수와 임원 300여 명이 참가해 도로 자전거의 최적지 강진군을 달궜다.</span>
                    </li>
                    <li class="s3sliderImage">
                        <img src="images/main_img1.jpg" alt="" width="971" height="282">
                        <span>사진2</span>
                    </li>
                    <li class="s3sliderImage">
                        <img src="images/main_img2.jpg" alt="" width="971" height="282">
                        <span>사진3</span>
                    </li>
                    <li class="s3sliderImage">
                        <img src="images/main_img1.jpg" alt="" width="971" height="282">
                        <span>사진4</span>
                    </li>
                    <div class="clear s3sliderImage"></div>
                </ul>

            </div> 
        </div>
        <div class="clear"></div>
        <article id="front">
            <div id="solution">
   
                <div id="hosting">
                    <h3>Web Hosting Solution</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nunc urna, 
                           fringilla non fringilla ut, lacinia eu urna. Aliquam nec urna at nisi pulvinar eleifend. 
                           Duis commodo luctus leo vitae feugiat. Curabitur ac sodales ante. Ut vel est </p>
                </div>
               
                <div id="security">
                        <h3>Web Security Solution</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nunc urna, 
                           fringilla non fringilla ut, lacinia eu urna. Aliquam nec urna at nisi pulvinar eleifend. 
                           Duis commodo luctus leo vitae feugiat. Curabitur ac sodales ante. Ut vel est </p>
                </div>
               
                <div id="payment">
                        <h3>Web payment Solution</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur nunc urna, 
                           fringilla non fringilla ut, lacinia eu urna. Aliquam nec urna at nisi pulvinar eleifend. 
                           Duis commodo luctus leo vitae feugiat. Curabitur ac sodales ante. Ut vel est </p>
            </div>
        
           </div>

           
           <div class="clear"></div>

           <div id="sec_news">
            <h3><span class="orange">Security</span> News</h3>
            <dl>
                <dt><a href="#">Vivamus id ligula velit, quis euismod nisi</a></dt>
                <dd><a href="#">Proin quis ante eget arcu tempus tempus porta vel ipsum.
                        Quisque vitae nulla vel lorem cursus dignissim. Sed sit amet metus tortor.
                        In hac habitasse platea dictumst. Aliquam erat volutpat. Aliquam massa risus, </a></dd>
                <dt><a href="#">Vivamus id ligula velit, quis euismod nisi</a></dt>
                <dd><a href="#">Proin quis ante eget arcu tempus tempus porta vel ipsum.
                        Quisque vitae nulla vel lorem cursus dignissim. Sed sit amet metus tortor.
                        In hac habitasse platea dictumst. Aliquam erat volutpat. Aliquam massa risus, </a></dd>
            </dl>

        </div>

           <div id="news_notice">
            <h3 class="brown">News &amp; Notice</h3>
            <table>
                <tr>
                    <td class="contxt"><a href="#">Vivamus id ligula velit, quis euismod nisi </a></td>
                    <td><a href="#">2011.07.31</a></td>
                </tr>
                <tr>
                    <td class="contxt">Fusce eros augue, tempus nec interdum eu</td>
                    <td>2011.06.11</td>
                </tr>
                <tr>
                    <td class="contxt">Donec eget tincidunt purus</td>
                    <td>2011.05.12</td>
                </tr>
                <tr>
                    <td class="contxt">Nam facilisis mauris in dui suscipit volutpat </td>
                    <td>2011.05.08</td>
                </tr>
                <tr>
                    <td class="contxt">Aenean in dui mollis leo ullamcorper fringilla </td>
                    <td>2011.04.25</td>
                </tr>
            </table>

        </div>



        </article>
        <div class="clear"></div>
        
        <footer>
            <hr>
            <div id="copy">
                All contents Copyright 2011 BootStrap Inc. all rights reserved<br>
                Contact mail : master@bootstrap.com Tel: +82 64 123 4315 Fax +82 64 123 4321
            </div>
            <div id="social">
                <img src="images/facebook.gif" alt="facebook" width="33" height="33">
                <img src="images/twitter.gif" alt="twitter" width="33" height="33">

            </div>


        </footer>
    </div>
</body>
</html>