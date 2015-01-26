<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>ModifyPerson</title>    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
            <link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.min.css" />
        <!-- breadcrumbs-->
            <link rel="stylesheet" href="lib/jBreadcrumbs/css/BreadCrumb.css" />
        <!-- tooltips-->
            <link rel="stylesheet" href="lib/qtip2/jquery.qtip.min.css" />
        <!-- notifications -->
            <link rel="stylesheet" href="lib/sticky/sticky.css" />
        <!-- code prettify -->
            <link rel="stylesheet" href="lib/google-code-prettify/prettify.css" />    
            <link rel="stylesheet" href="lib/sticky/sticky.css" />    
            <link rel="stylesheet" href="img/splashy/splashy.css" />
            <link rel="stylesheet" href="css/blue.css" id="link_theme" />
            <link rel="stylesheet" href="css/style.css" />           
          
    </head>
    <body style="font-family:微软雅黑">
		<div class="row-fluid">
        	<div class="span12">
             	<h3 class="heading">用户基本信息修改</h3>
            	<div class="row-fluid sepH_c">
					<div class="span12">
					<form action="<%=basePath%>AddPerson" method="post">
						<input type="hidden" id="personId" name="id"/>
                    	<table class="table table-bordered">
                        	<tr>
                            	<td width="10%">姓名</td>
                                <td width="40%"><input type="text" id="perosnname" name="personname"/></td>
                                <td width="10%">性别</td>
                                <td width="40%">
                                	<input type="radio" name="sex" value="1" checked="checked"/>男
                                	&nbsp;<input type="radio" name="sex" value="2"/>女
                                </td>
                            </tr>
                            <tr>
                            	<td>年龄</td>
                                <td><input type="text" name="age"/></td>
                                <td>户籍所在地</td>
                                <td>
                                <select id="prohome" name="prohome" style="width:150px;" onchange="getChilCityList('prohome','homecity')">
                                </select>
                                <select id="homecity" name="homecity" style="width:150px;">
                                </select>
                                </td>
                            </tr>
                            <tr>
                            	<td>电话</td>
                                <td><input type="text" name="telphone"/></td>
                                <td>期望居住地</td>
                                <td>
                                <select id="pronew" name="pronew" style="width:150px;" onchange="getChilCityList('pronew','newhome')">
                                </select>
                                <select id="newhome" name="newhome" style="width:150px;">
                                </select>
                                </td>
                            </tr>
                            <tr>
                            	<td>是否工作</td>
                                <td>
                                	<input type="radio" name="iswork" value="1" checked="checked"/>是
                                	&nbsp;<input type="radio" name="iswork" value="2"/>否
                                </td>
                                <td>工作内容</td>
                                <td><input type="text" name="workname"/></td>
                            </tr>
                         </table> 
                         <div class="btm_b clearfix">
                    		<button class="btn btn-inverse pull-right" type="submit">Submit</button>
                		</div>
                	 </form>   
                     </div>
                 </div>
              </div>
         </div>
                        

            <script src="js/jquery.min.js"></script>
            <script src="js/jquery-migrate.min.js"></script>
            <!-- smart resize event -->
            <script src="js/jquery.debouncedresize.min.js"></script>
            <!-- hidden elements width/height -->
            <script src="js/jquery.actual.min.js"></script>
            <!-- js cookie plugin -->
            <script src="js/jquery_cookie.min.js"></script>
            <!-- main bootstrap js -->
            <script src="bootstrap/js/bootstrap.min.js"></script>
             <!-- bootstrap plugins -->
            <script src="js/bootstrap.plugins.min.js"></script>
            <!-- tooltips -->
            <script src="lib/qtip2/jquery.qtip.min.js"></script>
            <!-- sticky messages -->
            <script src="lib/sticky/sticky.min.js"></script>
            <!-- scrollbar -->
            <script src="lib/antiscroll/antiscroll.js"></script>
            <script src="lib/antiscroll/jquery-mousewheel.js"></script>
            <!-- mobile nav -->
            <script src="js/selectNav.js"></script>
            <!-- common functions -->
            <script src="js/gebo_common.js"></script>        
        </div>
    </body>
</html>