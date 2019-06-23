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
			height: 600px;
			background-color: cadetblue;
		}
		.maincontent{
			margin: auto;
			width: 80%;
			height: 600px;
			background-color:burlywood;
		}
		#maintop {
			width: 100%;
			height: 100px;
			background-color: darkseagreen;
		}
		#maintop ul li{
			margin-top: 20px;
			list-style-type: none;
			float: left;
			font-size: 25px;
			padding-left: 70px;
		}
		#maintop .container{
			float: right;
		}
		#maintop hr{
			border: 1px solid #CCCCCC;
		}
		.search {
		    width: 300px;
		    height: 40px;
		    border-radius: 18px;
		    outline: none;
		    border: 1px solid #ccc;
		}
		.btn {
		    height: 35px;
		    width: 35px;
		    background: url("images/topbar.png") no-repeat -2px -99px;
		    margin-top: 7px;
		    left: 285px;
		    border: none;
		    outline: none;
		    cursor: pointer;
		}
		

		#mainmiddle{
			width: 65%;
			height: 350px;
			background-color: darksalmon;
		}
		#mainmiddleLeft tr td{
			width: 150px;
			height: 70px;	
		}
		#mainmiddleLeft tr td p{
			line-height: 60px;
			font-size: 25px;
		} 
		#mainmiddleLeft select{
			width: 120px;
			height: 55px;
			border: 1px solid #CCCCCC;
			color:lightslategray;
			font-size: 18px;
		}
		#mainmiddleLeft table input{
			height: 55px;
			border: 1px solid #CCCCCC;
			font-size: 20px;
			text-align: center;
		}
		.distance input{
			width: 120px;	
		}
		.date input{
			width: 180px;
		}
		#mainmiddleLeft #sub{
			margin-top: 30px;
			margin-left: 150px;
			font-size: 20px;
		}
		#mainmiddleLeft #sub input:hover{
			cursor: pointer;
		}
	</style>
	<body>
		<%@ include file="head.jsp" %>
		<div class="main">
			<div class="maincontent">
				<div id="maintop">
					<ul>
						<li>买车</li>
						<li>车辆评估</li>
						<li>智汇二手车</li>
					</ul>
					<div class="container">
					    <form action="" class="parent">
					        <input type="text" class="search" placeholder="搜索">
					        <input type="button" name="" id="" class="btn">
					    </form>
					</div>
					<hr />
				</div>
				<div id="mainmiddle">
					<div id="mainmiddleLeft">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<table class="table table-hover">
									<tbody>
										<tr class="success">
											<td>
												<p>爱车选型:</p>
											</td>
											<td>
												<select id="brand" onchange="changeBrand()">
														<option value="-1">请选择品牌</option>
													</select>
											</td>
											<td>
												<select id="carmodel" onchange="changeCarmodel()">				
														<option value="-1">请选择车型</option>
													</select>
											</td>
											<td>
												<select id="carstyle">				
														<option value="-1">请选择车款</option>
													</select>
											</td>
										</tr>
										<tr class="success">
											<td>
												<p>行驶历程:</p>
											</td>
											<td class="distance">
												<input type="text" />
											</td>
											<td>
												<p>万公里</p>
											</td>
											<td>
												
											</td>
										</tr>
										<tr class="success">
											<td>
												<p>上牌时间:</p>
											</td>
											<td colspan="2" class="date">
												<input type="month" value=""/>
											</td>
												
										</tr>										
									</tbody>
								</table> 
								<div id="sub">
									<input type="submit" value="马上评估" style="background-color:orangered ;
									border-color: transparent;border-style: none;width: 250px;height: 70px;color: white;" />
								</div>	
						</div>
					</div>
						
					</div>
				</div>
				<div id="mainfooter"></div>
				
			</div>
		</div>
		<div class="floot">
			<div class="flootcontent"></div>
		</div>
	</body>
	<script>
     //声明车的品牌,一维数组
          var brands = ["奥迪", "本田", "保时捷"]; //直接声明Array
           //声明车型，二维数组
          var carmodels = [
              ["100", "200", "A4"],
              ["CR-V", "思域","飞度"],
              ["911", "Boxster","Cayenne"]
          ];

       //声明车款，三维数组
          var carstyles = [
                  [
                      ["94款 1.8L", "94款 2.0L", "94款 2.2L（五缸）"],
                      ["99款 2.2L MT", "99款 2.6L MT", "96款 2.2 手动"],
                      ["14款 40TFSI", "13款 40TFSI", "08款 1.8T CVT舒适款"]
                  ],
                  [
                      ["15款 2.0L 两驱 都市版", "15款 2.4L 两驱 豪华版版", "13款 2.4L 两驱 豪华版"],
                      ["14款 1.8L 手动 LXi 经典版", "14款 1.8L 自动 LXi 经典版", "13款 1.8L 十周年"],
                      ["14款 1.5L LX CVT 舒适版", "14款 1.5L SE CVT 时尚版", "11款 1.5L 手动 豪华版"]
                  ],
                  [
                      ["15款 CT3 RS", "15款 Carrera 4 GTS Cabriolet","15款 Carrera GTS Cabriolet"],
                      ["15款 Boxster 2.7 style Edition", "14款 Boxster GTS","13款 Boxster 2.7"],
                      ["15款 Cayenne GTC 3.6T", "15款 Cayenne Tuobo S","15款 Cayenne 3.0T"]
                  ]
              ]
          
          //初始化品牌
          window.onload=function initBrand(){               
                var bra = document.getElementById("brand");                
                for(var i=0;i<brands.length;i++){
                     bra.add(new Option(brands[i],i),null);    //i为value值                
                }
          }
          var pindex;
          //品牌变化，车型也跟着变化
          function changeBrand(){
                 var brand = document.getElementById("brand");
                 var car = document.getElementById("carmodel");
                 var carsty = document.getElementById("carstyle");                
                 car.options.length=0;//清空车型列表
                 carstyle.options.length=0;//清空车款列表
                 pindex = brand.value;//品牌下标
                 //哈哈，我爱编代码，如果选择省份为：请选择省份，那么城市和乡镇也跟着改变为请选择。。。
                 if(-1==pindex){
                      car.add(new Option("--请选择品牌--","-2"),null);
                      carstyle.add(new Option("--请选择品牌--","-2"),null);
                 }
                 var chekuan = carmodels[pindex];//品牌对应的车型（默认值）
                 var chexing = carstyles[pindex][0];//车型对应的车款
                
                 //车型变化
                 for(var i=0;i<chekuan.length;i++){                        
                        car.add(new Option(chekuan[i],i),null);////i为value值                        
                 }               
                 //车款变化（默认值）                 
                 for(var i=0;i<chexing.length;i++){
                       carstyle.add(new Option(chexing[i],i),null);                      
                 }
          }
          //车款跟着车型变化
          function changeCarmodel(){
                 var countrySide = document.getElementById("carstyle");
                 carstyle.options.length=0;//清空车款列表
                 var cindex = document.getElementById("carmodel").value;//车型的下标
                 var count = carstyles[pindex][cindex];//品牌对应的车型所对应的车款
                 for(var i=0;i<count.length;i++){
                       carstyle.add(new Option(count[i],i),null);  
                 }
          }
    </script>
</html>
