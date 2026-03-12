<%-- 
    Document   : Style
    Created on : Jun 25, 2023, 8:00:28 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            body1{
                background-image: url(../assets/images/blog/blog-page-4.jpg);
            }

            #log{
                border: 2px solid black;
                padding: 20px 20px;

            }

            h2{
                color: green;
                text-align: center;
                font-weight: bolder;
                margin-top: -20px;
            }

            label{
                font-size: 20px;
                color: black;
                margin-top: 10px;
            }

            /*button{
                width: 150px;
                margin-top: 10px;
                margin-left: 30px;

            }*/

            body {
                justify-content: center;
                align-items: center;
                display: flex;
                min-height: 30rem;
               /* background-image: url('img/blogPhoto/img1.jpeg');*/
                background-repeat: no-repeat;
                background-size: cover;
            }

                /*fieldset {
                color: white;

             background: ;
               background-image: url(11.jpg);
                border-color: none  ;
                background-repeat: no-repeat;
                background-size: cover;
            }*/

            background-image {
                transform: rotateX(70deg) rotateZ(-60deg) translate3d(-120px, 0px, 70px);
                box-shadow: -80px 60px 15px 5px rgba(0, 0, 0, 0.4);
                transition: all .4s;
                transform-style: preserve-3d;
            }

            fieldset:hover {
                transform: rotateX(0deg) rotateZ(0deg) translate3d(0px, 0px, 0px);
                box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0.0);
            }

            legend {
                font-size: 25px;
                color: yellow;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

            }

            input {
                margin: 10px;
            }

            button {
                color: blue;
                height: 2rem;
                width: 7rem;
                font-size: 1rem;
                margin-left: 40px;
                font-size: 1.5rem;
                border-radius: 10px;
                background-size: 50rem;
               /* background-image: url('D:/All pdf/dhram/hd wallpaper/img6.jpeg');*/
                background-repeat: no-repeat;
                background-size: cover;
            }

            button:hover {
                color: green;
            }

        </style> 

    </head>


</html>
