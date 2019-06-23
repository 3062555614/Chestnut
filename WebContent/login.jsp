<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	   
	</head>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		body{
			width: 100%px;
			height: 800px;
		}
		.head{
			width: 100%;
			height: 50px;
		}
		.headcontent{
			margin: auto;
			width: 80%;
			height: 50px;	
		}
		#headleft{
			width: 200px;
			height: 50px;
			float: left;
		}
		#headleft img:hover{
			cursor: pointer;
		}
		#headright #login{
			height: 35px;
			float: right;
			line-height: 50px;
		}
		#login a{
			width: 40px;
			height: 35px;
			color: black;
			text-decoration: none;
		}
		#login a:hover{
			color:firebrick;
			cursor:pointer;
		}
		
		
		.ui-dialog{ 
			width: 380px;height: 350px;display: none;
			position: absolute;z-index: 9000;
			top: 0px;left: 0px;
			border: 1px solid #D5D5D5;background: #fff;
		}

	.ui-dialog a{text-decoration: none;}

	.ui-dialog-title{
		height: 48px;line-height: 48px; padding:0px 20px;color: #535353;font-size: 16px;
		border-bottom: 1px solid #efefef;background: #f5f5f5;
		cursor: move;
		user-select:none;
	}
	.ui-dialog-closebutton{
		width: 16px;height: 16px;display: block;
		position: absolute;top: 12px;right: 20px;
		background: url(img/close_def.png) no-repeat;cursor: pointer;

	}
	.ui-dialog-closebutton:hover{background:url(img/close_hov.png);}

	.ui-dialog-content{
		padding: 15px 20px;
	}
	.ui-dialog-pt15{
		padding-top: 15px;
	}
	.ui-dialog-l40{
		height: 40px;line-height: 40px;
		text-align: right;
	}
	.Error{
		height: 20px;
		width: 330px;
		
        text-align:center;
	}

	.ui-dialog-input{
		width: 100%;height: 40px;
		margin: 0px;padding:0px;
		border: 1px solid #d5d5d5;
		font-size: 16px;color: #c1c1c1;
		text-indent: 25px;
		outline: none;
		color:black;
	}
	.ui-dialog-input-username{
		background: url(img/input_username.png) no-repeat 2px ;
	}

	.ui-dialog-input-password{
		background: url(img/input_password.png) no-repeat 2px ;
	}
	.ui-dialog-submit{
		width: 100%;height: 50px;background: #3b7ae3;border:none;font-size: 16px;color: #fff;
		outline: none;text-decoration: none;
		display: block;text-align: center;line-height: 50px;
	}
	.ui-dialog-submit:hover{
	    cursor:pointer;
		background: #3f81b0;
	}

	.ui-mask{ 
		width: 100%;height:100%;background: #000;
		position: absolute;top: 0px;height: 0px;z-index: 8000;
		opacity:0.4; filter: Alpha(opacity=40);
	}
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
	
	    <%
		 String flag = (String)request.getAttribute("flag");
		 if(flag==null){
			 flag="";
		 }
		%>
	
		<div class="ui-mask" id="mask" onselectstart="return false"></div>
		<div class="head">
			<div class="headcontent">
				<div id="headleft">
					<a href="login.html"><img src="img/栗子.png" /></a>
				</div>
				<div id="headmiddle"></div>
				<div id="headright">
					
					<div id="login"><a href="javascript:showDialog()" class="current">登录</a></div>
					
					<form action="login" method="post" >
						<div class="ui-dialog" id="dialogMove" onselectstart='return false;'>
							<div class="ui-dialog-title" id="dialogDrag"  onselectstart="return false;" >
								欢迎登陆
								<a class="ui-dialog-closebutton" href="javascript:hideDialog();"></a>
							</div>
							<div class="ui-dialog-content">
							    <div class="Error userError " id="confirmlogin"><p style="color:red"><%=flag %></p></div>
								<div class="ui-dialog-l40 ui-dialog-pt15">
									<input class="ui-dialog-input ui-dialog-input-username" type="input" name="username" id="user" placeholder="手机/邮箱/用户名" />
								</div>
								
								<div class="ui-dialog-l40 ui-dialog-pt15">
									<input class="ui-dialog-input ui-dialog-input-password" type="password" name="password" id="pass" placeholder="密码" />
								</div>
								
								<div class="ui-dialog-l40">
									<a href="#">忘记密码</a>
								</div>
								<div>
									<input type="submit" class="ui-dialog-submit" value="登陆" />
								</div>
								<div class="ui-dialog-l40">
									<div id="register"><a href="#" class="current">注册</a></div>
									
								</div>
							</div>
						</div>
					 </form>
				</div>
			</div>
		</div>
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
	//登陆弹出部分
		var dialogInstace , onMoveStartId;	//	用于记录当前可拖拽的对象
	
		// var zIndex = 9000;

		//	获取元素对象	
		function g(id){return document.getElementById(id);}

		//	自动居中元素（el = Element）
		function autoCenter( el ){
			var bodyW = document.documentElement.clientWidth;
			var bodyH = document.documentElement.clientHeight;

			var elW = el.offsetWidth;
			var elH = el.offsetHeight;

			el.style.left = (bodyW-elW)/2 + 'px';
			el.style.top = (bodyH-elH)/2 + 'px';
			
		}

		//	自动扩展元素到全部显示区域
		function fillToBody( el ){
			el.style.width  = document.documentElement.clientWidth  +'px';
			el.style.height = document.documentElement.clientHeight + 'px';
		}

		//	Dialog实例化的方法
		function Dialog( dragId , moveId ){

			var instace = {} ;

			instace.dragElement  = g(dragId);	//	允许执行 拖拽操作 的元素
			instace.moveElement  = g(moveId);	//	拖拽操作时，移动的元素

			instace.mouseOffsetLeft = 0;			//	拖拽操作时，移动元素的起始 X 点
			instace.mouseOffsetTop = 0;			//	拖拽操作时，移动元素的起始 Y 点

			instace.dragElement.addEventListener('mousedown',function(e){

				var e = e || window.event;

				dialogInstace = instace;
				instace.mouseOffsetLeft = e.pageX - instace.moveElement.offsetLeft ;
				instace.mouseOffsetTop  = e.pageY - instace.moveElement.offsetTop ;
				
				// instace.moveElement.style.zIndex = zIndex ++;
			})

			return instace;
		}

		//	在页面中侦听 鼠标弹起事件
		document.onmouseup = function(e){
			
			dialogInstace = false;
			clearInterval(onMoveStartId);

		}

		//	在页面中侦听 鼠标移动事件
		document.onmousemove = function(e) {
			var e = e || window.event;
			var instace = dialogInstace;
		    if (instace) {
		    	
		    	var maxX = document.documentElement.clientWidth -  instace.moveElement.offsetWidth;
		    	var maxY = document.documentElement.clientHeight - instace.moveElement.offsetHeight ;

				instace.moveElement.style.left = Math.min( Math.max( ( e.pageX - instace.mouseOffsetLeft) , 0 ) , maxX) + "px";
				instace.moveElement.style.top  = Math.min( Math.max( ( e.pageY - instace.mouseOffsetTop ) , 0 ) , maxY) + "px";
		    }
			if(e.stopPropagation) {
				e.stopPropagation();
			} else {
				e.cancelBubble = true;
			}
		};

		//	拖拽对话框实例对象
		Dialog('dialogDrag','dialogMove');

		function onMoveStart(){

		}


		//	重新调整对话框的位置和遮罩，并且展现
		function showDialog(){
			g('dialogMove').style.display = 'block';
			g('mask').style.display = 'block';
			autoCenter( g('dialogMove') );
			fillToBody( g('mask') );
		}

		//	关闭对话框
		function hideDialog(){
			g('dialogMove').style.display = 'none';
			g('mask').style.display = 'none';
		}

		//	侦听浏览器窗口大小变化
		window.onresize = showDialog;
		
		//Ajax验证用户名
		
		
	</script>
</html>
