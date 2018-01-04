<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* for MS계열 브라우저 */
@keyframes blink {
 0% {background-color: red;}
 50% {background-color: yellow;}
}
 
/* for Chrome, Safari */
@-webkit-keyframes blink {
 0% {background-color: red;}
 50% {background-color: yellow;}
}
 
/* blink CSS 브라우저 별로 각각 애니메이션을 지정해 주어야 동작한다. */
.blinkcss {
 font-weight:bold;
 animation: blink 1s step-end infinite;
 -webkit-animation: blink 1s step-end infinite;
}
</style>
</head>
<body>
<div class="blinkcss">TEST</div>
<body>
</html>
