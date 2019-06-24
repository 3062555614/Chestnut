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
			width: 100%;
			
		}
		.register{
			width:1000px;
			
			position: absolute;
			left: 50%;
			top: 50%;
			transform: translate(-50%,-50%);
			
			
		}
		#registerForm tr td{
			width: 100px;
			border-radius: 8px;
			padding-top: 10px;
			padding-left: 5px;
			
		}
		.td_left{
			font-size: 20px;
			font-family:"楷体";
		}
		input{
			height: 33px;
			width: 400px;
			border-radius: 8px;
			border: 1px solid #898989;
		}
		p{
			width: 150px;
		}
		.submit:hover{
			cursor: pointer;
			background: #3f81b0;
		}
	</style>
	<body>
		<div class="register" ">
			<form id="registerForm" style="margin-left:164px">
			    <div id="errorMsg" style="color: red;text-align: center"></div>
			 
			    <!--提交处理请求的标识符-->
			    <input type="hidden" name="action" value="register">
			    <table style="margin-top: 15px;margin-bottom: 85px">
			       <tr>
			            <td class="td_right showRegister" colspan="3">
			                <input type="text" value="用户注册" style="color: #3b7ae3;width: 510px;
			                font-size:30px; text-align:center; border:0px; margin-bottom:30px " />
			            </td>
			            
			        </tr>
			        <tr>
			            <td class="td_left">
			                <label for="username">用户名:</label>
			            </td>
			            <td class="td_right">
			                <input type="text" id="username" name="username" placeholder="请输入账号">
			            </td>
			            <td>
			            	<p id="errorUsername"></p>
			            </td>
			        </tr>
			        <tr>
			            <td class="td_left">
			                <label for="password">密码:</label>
			            </td>
			            <td class="td_right">
			                <input type="text" id="password" name="password" placeholder="请输入密码">
			            </td>
			            <td>
			            	<p id="errorPassword"></p>
			            </td>
			        </tr>
			        <tr>
			            <td class="td_left">
			                <label for="telephone">手机号:</label>
			            </td>
			            <td class="td_right">
			                <input type="text" id="telephone" name="telephone" placeholder="请输入您的手机号">
			            </td>
			            <td>
			            	<p id="errorTelephone"></p>
			            </td>
			        </tr>
			        <tr>
			            <td class="td_left">
			                <label for="email">Email:</label>
			            </td>
			            <td class="td_right">
			                <input type="text" id="email" name="email" placeholder="请输入Email">
			            </td>
			            <td>
			            	<p id="errorEmail"></p>
			            </td>
			        </tr>
			        <tr>
			            <td class="td_left">
			                <label for="name">呢称:</label>
			            </td>
			            <td class="td_right">
			                <input type="text" id="name" name="name" placeholder="请输入真实姓名">
			            </td>
			            <td>
			            	<p id="errorName"></p>
			            </td>
			        </tr>
			        
			        
			        <tr>
			            
			            <td class="td_right check" colspan="3"> 
			                <input type="submit" class="submit" value="注册" 
			                	style="color: white; font-size:15px;background: #3b7ae3;height: 40px;
			                	 width: 510px; margin-top: 15px;" />
			                <span id="msg" style="color: red;"></span>
			            </td>
			        </tr>
			    </table>
			</form>	
		</div>
		
			
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/jscript">
	    //校验username  汉字
	    function checkUsername() {
	        var username = $("#username").val();
	        //定义正则
	        var reg = /^[\u4e00-\u9fa5]{2,}$/;
	        //校验
	        var flag = reg.test(username);
	        if (flag){
	            //验证成功
	            $("#username").css("border","1px solid green");
	            $("#errorUsername").text("用户名可用" )
	  
	        }else {
	            //验证失败
	            $("#username").css("border","1px solid red");
	            $("#errorUsername").text("请输入您的真实姓名" )
	        }
	 
	        return flag;
	    }
	 
	 
	    //校验password 由数字、26个英文字母或者下划线组成的字符串
	    function checkPassword() {
	        var password = $("#password").val();
	        //定义正则
	        var reg = /^\w{6,}$/;
	        //校验
	        var flag = reg.test(password);
	        if (flag){
	            //验证成功
	            $("#password").css("border","1px solid green");
	            $("#errorPassword").text("密码可用" )
	 
	        }else {
	            //验证失败
	            $("#password").css("border","1px solid red");
	            $("#errorPassword").text("由数字、字母或者下划线组成，至少6位" )
	        }
	 
	        return flag;
	    }
	    
	    //校验手机号
	    function checkTelephone(){
	        var phone = $("#telephone").val();
	        //定义正则 校验phone
	        var reg = /^1[34578]\d{9}$/;
	        var flag = reg.test(phone);
	        if (flag){
	            //验证成功
	            $("#telephone").css("border","1px solid green");
	            $("#errorTelephone").text("" )
	 
	        }else {
	            //验证失败
	            $("#telephone").css("border","1px solid red");
	            $("#errorTelephone").text("号码不合法" )
	        }
	        return flag;
	    }
	 
	    //校验email
	    function checkEmail(){
	        var email = $("#email").val();
	 
	        //定义正则校验邮箱
	        var reg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
	        var flag = reg.test(email);
	        if (flag){
	            //验证成功
	            $("#email").css("border","1px solid green");
	            $("#errorEmail").text("" );
	 
	        }else {
	            //验证失败
	            $("#email").css("border","1px solid red");
	            $("#errorEmail").text("邮箱不合法" );
	        }
	        return flag;
	    }
	 
	    //校验姓名
	    function checkName(){
	        var name = $("#name").val();
	        //校验姓名,包含中英文
	        var reg = /^[\u4E00-\u9FA5A-Za-z0-9_]+$/
	 
	        var flag = reg.test(name);
	        if (flag){
	            //验证成功
	            $("#name").css("border","1px solid green");
	            $("#errorName").text("呢称可用" )
	 
	        }else {
	            //验证失败
	            $("#name").css("border","1px solid red");
	            $("#errorName").text("呢称包含非法字符" )
	        }
	        return flag;
	    }
	 
	    
	 
	    //入口函数
	    $(function () {
	        //表单提交的时候校验
	        $("#registerForm").submit(function () {
	            if (checkUsername() && checkPassword() && checkEmail() && checkName() && checkTelephone()) {
	            	location.href = "login.jsp";
	            	//异步提交ajax请求
	                $.post("user/register",$(this).serialize(),function (data) {
	                    if (data.flag){
	                        //成功
	                        location.href = "login.jsp";
	                    }else {
	                        //失败
	                        $("#errorMsg").html(data.errorMsg)
	                    }
	 
	                });
	 
	            }
	            return false; //不让表单提交,只是通过异步来传递到servlet
	        });
	 
	        //失去焦点的时候校验
	        $("#username").blur(checkUsername);
	        $("#password").blur(checkPassword);
	        $("#email").blur(checkEmail);
	        $("#name").blur(checkName);
	        $("#telephone").blur(checkTelephone);
	        $("#birthday").blur(checkBirth);
	        $("#check").blur(checkCode);
	    })
	  </script>
	</body>
	
	
</html>
