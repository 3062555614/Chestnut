<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	   
	</head>
	<style type="text/css">
		
		.main{
			width: 100%;
			height: 550px;
			background:url(img/banner.jpg);
			background-repeat: no-repeat;
			background-size: 100% 100%;
		}
		.maincontent{
			margin: auto;
			width: 80%;
			height: 550px;
		}
		#maintop{
			width: 100%;
			height: 170px;
		}
		#mainmiddle{
			width: 100%;
			height: 130px;
		}
		#box{
        width: 550px;
        height: 100px;
        font-family: 'Microsoft YaHei';
        font-size: 20px;
        margin: auto;
	    }
	    #box input{
	    	margin-top: 25px;
	    	font-size: 20px;
	        width: 420px;
	        border: 1px solid #e2e2e2;
	        height: 50px;
	        float: left;
	        background-image: url(images/search.jpg);
	        background-repeat: no-repeat;
	        background-size: 25px;
	        background-position:5px center;
	        padding:0 0 0 40px;
	    }
	    #search{
	    	margin-top: 25px;
	        width: 88px;
	        height: 52px;
	        float: right;
	        background:firebrick;
	        color: white;
	        text-align: center;
	        line-height: 52px;
	        cursor: pointer;
	    }
	    
		#mainfooter{
			width: 100%;
			height: 230px;
			background-color:#DDDDDD;
		}
		#mainfooter #skipone{
	    	width: 100%;
	    	height: 70px;
	    }
	    #skipone .text{
	    	margin: auto;
	    	width: 400px;
	    	height: 70px;
	    }
	    #skipone ul li{
	    	line-height: 60px;
	    	text-align: center;
	    	padding-left:50px;
	    	list-style-type: none;
	    	font-size: 30px;
	    	float: left;
	    	color:black;
	    }
	    #skipone ul li:hover{
	    	color: firebrick;
	    	cursor: pointer;
	    	/*text-decoration: underline;*/
	    }
	    #mainfooter #skiptwo{
	    	width: 100%;
	    	height: 40px;
	    	
	    }
	    #mainfooter #skipthree{
	    	width: 100%;
	    	height: 140px;
	    	
	    }

	</style>
	<body>
		<%@ include file="head.jsp"%>
		
		<div class="main">
			<div class="maincontent">
				<div id="maintop"></div>
				<div id="mainmiddle">
					<div id="box">
				        <input type="text" name="search" placeholder="请输入关键字" >
				        <div id="search">搜索</div> 
				    </div>
				</div>
				<div id="mainfooter">
					<div id="skipone">
						<div class="text">
							<ul>
							<a href=""><li>买车</li></a>
							<a href="sale.jsp"><li>卖车</li></a>
							<a href=""><li>估值</li></a>
						    </ul>
						</div>	
					</div>
					<div id="skiptwo"></div>
					<div id="skipthree"></div>
				</div>
			</div>
		</div>
		<div class="floot">
			<div class="flootcontent"></div>
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	
	</script>
</html>
