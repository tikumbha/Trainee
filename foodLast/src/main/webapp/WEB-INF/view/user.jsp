<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food Recipe Management System</title>
<style >
/*--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
--*/

/* reset */
html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
dl,
dt,
dd,
ol,
nav ul,
nav li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
copyright,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

article,
aside,
details,
figcaption,
figure,
copyright,
header,
hgroup,
menu,
nav,
section {
    display: block;
}

ol,
ul {
    list-style: none;
    margin: 0px;
    padding: 0px;
}

blockquote,
q {
    quotes: none;
}

blockquote:before,
blockquote:after,
q:before,
q:after {
    content: '';
    content: none;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

/* start editing from here */
a {
    text-decoration: none;
}

.txt-rt {
    text-align: right;
}

/* text align right */
.txt-lt {
    text-align: left;
}

/* text align left */
.txt-center {
    text-align: center;
}

/* text align center */
.float-rt {
    float: right;
}

/* float right */
.float-lt {
    float: left;
}

/* float left */
.clear {
    clear: both;
}

/* clear float */
.pos-relative {
    position: relative;
}

/* Position Relative */
.pos-absolute {
    position: absolute;
}

/* Position Absolute */
.vertical-base {
    vertical-align: baseline;
}

/* vertical align baseline */
.vertical-top {
    vertical-align: top;
}

/* vertical align top */
nav.vertical ul li {
    display: block;
}

/* vertical menu */
nav.horizontal ul li {
    display: inline-block;
}

/* horizontal menu */
img {
    max-width: 100%;
}

/* //end reset */
body {
    font-size: 100%;
    font-family: 'Source Sans Pro', sans-serif;
}

.main-bg {
    background: url(../images/bg2.jpg) no-repeat center;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    -ms-background-size: cover;
    min-height: 100vh;
}

/* title */
h1 {
    font-size: 2.8vw;
    color: #fff;
    text-align: center;
    padding: 1.5vw 1vw 2vw;
    letter-spacing: 3px;
    text-transform: uppercase;
}

/* //title */

/* content */
.sub-main-w3 {
    margin: 1.5vw 5vw;
}

.bg-content-w3pvt {
    max-width: 400px;
    margin: 0 auto;
    background: #fff;
    text-align: center;
}

.top-content-style {
    padding: 2vw 4vw 4vw;
    background: #1cc7d0;
}

.top-content-style img {
    -webkit-border-radius: 50%;
    -o-border-radius: 50%;
    -ms-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
}

.sub-main-w3 form {
    background: #ffff;
    padding: 2em;
    -webkit-box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
    -moz-box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
    box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
    margin: -2.5em 2.5em 2em;
    -webkit-border-radius: 4px;
    -o-border-radius: 4px;
    -ms-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}

p.legend {
    color: #4e4d4d;
    font-size: 24px;
    text-align: center;
    margin-bottom: 1.2em;
}

p.legend span {
    color: #000;
    margin-left: 10px;
}

.input {
    position: relative;
    margin: 20px auto;
    width: 100%
}

.input span {
    position: absolute;
    display: block;
    color: #1cc7d0;
    left: 10px;
    top: 12px;
    font-size: 16px;
}

.input input {
    width: 100%;
    padding: 13px 10px 13px 34px;
    display: block;
    border: none;
    border: 1px solid #1cc7d0;
    color: #000;
    box-sizing: border-box;
    font-size: 13px;
    outline: none;
    letter-spacing: 1px;
    background: #fff;
    -webkit-box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
    -moz-box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
    box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
}

.submit {
    width: 45px;
    height: 45px;
    display: block;
    margin: 2.5em auto 0;
    background: #1cc7d0;
    -webkit-border-radius: 10px;
    -o-border-radius: 10px;
    -ms-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    border: none;
    cursor: pointer;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

.submit span {
    color: #fff;
    font-size: 20px;
}

.submit:hover {
    opacity: .8;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

a.bottom-text-w3ls {
    color: #757474;
    font-size: 16px;
    display: inline-block;
    margin: 0em 1em 2em;
    letter-spacing: 1px;
}

/* //content */

/* copyright */
.copyright {
    margin-top: 3.08vw;
    padding-bottom: 1.5vw;
}

.copyright h2 {
    font-size: 16px;
    color: #fff;
    letter-spacing: 1px;
    text-align: center;
    line-height: 1.8;
}

.copyright h2 a {
    color: #1cc7d0;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

.copyright h2 a:hover {
    opacity:.8;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    transition: 0.5s all;
}

/* //copyright */

/* responsive */
@media(max-width:1280px) {
    .top-content-style {
        padding: 3vw 4vw 5vw;
    }
}

@media(max-width:1080px) {
    h1 {
        font-size: 3.5vw;
    }
}

@media(max-width:991px) {
    h1 {
        font-size: 4vw;
    }

    .top-content-style {
        padding: 3vw 4vw 6vw;
    }
}

@media(max-width:800px) {
    h1 {
        font-size: 5vw;
        padding: 2.5vw 1vw 3vw;
    }

    .top-content-style {
        padding: 4vw 4vw 9vw;
    }

    .copyright {
        margin-top: 3em;
        padding-bottom: 1.5em;
    }
}

@media(max-width:640px) {
    h1 {
        font-size: 6vw;
        padding: 3vw 1vw 4vw;
    }
}

@media(max-width:600px) {
    .copyright h2 {
        letter-spacing: 1px;
    }
}

@media(max-width:480px) {
    h1 {
        font-size: 2em;
        letter-spacing: 1px;
    }

    .top-content-style {
        padding: 2em 1em 4em;
    }

    .copyright h2 {
        font-size: 15px;
    }

    .copyright {
        margin-top: 2em;
        padding-bottom: 1em;
    }

    p.legend {
        font-size: 23px;
    }

    a.bottom-text-w3ls {
        font-size: 15px;
    }
}

@media(max-width:384px) {
    .sub-main-w3 form {
        margin: -2.5em 2em 2em;
    }

    h1 {
        padding: 5vw 1vw 6vw;
    }
}

@media(max-width:320px) {
    h1 {
        font-size: 1.7em;
    }

    .sub-main-w3 form {
        margin: -2em 1em 1.5em;
        padding: 1.5em;
    }

    .top-content-style {
        padding: 1.5em 1em 3em;
    }

    .copyright h2 {
        font-size: 14px;
    }
}

/* //responsive */

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Latest Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
</head>
<body background="file:///C:/Users/vagade/Downloads/foodLast/src/main/webapp/WEB-INF/images/ab1.png " >

<div class="main-bg">
		<!-- title -->
		<h1 style="color: black">WELCOME USER </h1>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<div class="bg-content-w3pvt" style="background: #d6f5d6">
				<form style="background:#d98cb3"><div>PICK YOUR OPERATION</div>
					<div class="input">
					
						<a href="getRecipe">Get a Recipe</a>
						<span class="fa fa-envelope"></span>
					</div>
					<div class="input">
						<a href="getAll">Get all Recipes</a>
						<span class="fa fa-unlock"></span>
					</div>				
				</form>
			</div>
		</div>
		<a href=" ">HOME...</a>
		<!-- //content -->
		<!-- copyright -->
		<!-- //copyright -->
	</div>

	<!--<h1>Food Recipe Management System</h1>
	<h1>Welcome User</h1>
	<table border=1>
		<tr>
			<th>Pick your option</th>
		</tr>


		<tr>
			<th><a href="getRecipe">Retrieve a Recipe</a></th>
		</tr>
		<tr>
			<th><a href="getAll">Retrieve all Recipe</a></th>
		</tr>
		
	</table>
-->
</body>
</html>