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
        <title>Main</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap.min.css" />
            <link rel="stylesheet" href="<%=path%>/bootstrap/css/bootstrap-responsive.min.css" />
        <!-- breadcrumbs-->
            <link rel="stylesheet" href="<%=path%>/lib/jBreadcrumbs/css/BreadCrumb.css" />
        <!-- tooltips-->
            <link rel="stylesheet" href="<%=path%>/lib/qtip2/jquery.qtip.min.css" />
        <!-- notifications -->
            <link rel="stylesheet" href="<%=path%>/lib/sticky/sticky.css" />
        <!-- splashy icons -->
            <link rel="stylesheet" href="<%=path%>/img/splashy/splashy.css" />
        <!-- gebo color theme-->
            <link rel="stylesheet" href="<%=path%>/css/blue.css" id="link_theme" />
        <!-- main styles -->
            <link rel="stylesheet" href="<%=path%>/css/style.css" />
        
        <script>
            //* hide all elements & show preloader
            document.documentElement.className += 'js';
        </script>
    </head>
    <body style="font-family:微软雅黑;">
        <div id="loading_layer" style="display:none"><img src="<%=path%>/img/ajax_loader.gif"/></div>
        <div id="maincontainer" class="clearfix">
            <!-- header -->
            <header>
                <div class="navbar navbar-fixed-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="brand"><i class="icon-home icon-white"></i>房屋租赁管理系统</a>
                            <ul class="nav user_menu pull-right">
                                 <li class="divider-vertical hidden-phone hidden-tablet"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                    <li><a href="javascrip:void(0)">My Profile</a></li>
                                    <li><a href="javascrip:void(0)">Another action</a></li>
                                    <li class="divider"></li>
                                    <li><a href="javascrip:void(0)">Log Out</a></li>
                                    </ul>
                                </li>
                            </ul>
           
                        </div>
                    </div>
                </div>
             </header>
            
            <!-- main content -->
            <div id="contentwrapper">
                <div class="main_content">
                    <div class="row-fluid">
     					<iframe name="iframe" src=""></iframe>  
                    </div>                        
                </div>
            </div>
            
            <!-- sidebar -->
            <div class="sidebar">
                <div class="antiScroll">
                    <div class="antiscroll-inner">
                        <div class="antiscroll-content">
                            <div class="sidebar_inner">
                                <div id="side_accordion" class="accordion">
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="#collapseThree" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                                <i class="icon-user"></i> 用户管理
                                            </a>
                                        </div>
                                        <div class="accordion-body collapse" id="collapseThree">
                                            <div class="accordion-inner">
                                                <ul class="nav nav-list">
                                                    <li><a href="<%=path%>/addPerson.jsp" target="iframe">用户基本信息添加</a></li>
                                                    <li><a href="<%=path%>/modifyPerson.jsp" target="iframe">用户基本信息修改</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                                <i class="icon-folder-close"></i> 房源管理
                                            </a>
                                        </div>
                                        <div class="accordion-body collapse" id="collapseOne">
                                            <div class="accordion-inner">
                                                <ul class="nav nav-list">
                                                	<li><a href="addAp.jsp" target="iframe">房源添加</a></li>
                                                    <li><a href="GetApartment" target="iframe">房源信息查询</a></li>
                                                    <li><a href="#" target="iframe">房源信息修改</a></li>
                                                    <li><a href="#" target="iframe">删除房源</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a href="#collapseTwo" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                                <i class="icon-th"></i> 房源预定
                                            </a>
                                        </div>
                                        <div class="accordion-body collapse" id="collapseTwo">
                                            <div class="accordion-inner">
                                                <ul class="nav nav-list">
                                                    <li><a href="GetApartment" target="iframe">房源预定</a></li>
                                                    <li><a href="ShowRelationship" target="iframe">预定信息查看</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                    			</div>
                                
                               <!-- <div class="push"></div> -->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            
            <script src="<%=path%>/js/jquery.min.js"></script>
            <script src="<%=path%>/js/jquery-migrate.min.js"></script>
            <!-- smart resize event -->
            <script src="<%=path%>/js/jquery.debouncedresize.min.js"></script>
            <!-- hidden elements width/height -->
            <script src="<%=path%>/js/jquery.actual.min.js"></script>
            <!-- js cookie plugin -->
            <script src="<%=path%>/js/jquery_cookie.min.js"></script>
            <!-- main bootstrap js -->
            <script src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
             <!-- bootstrap plugins -->
            <script src="<%=path%>/js/bootstrap.plugins.min.js"></script>
            <!-- tooltips -->
            <script src="<%=path%>/lib/qtip2/jquery.qtip.min.js"></script>
            <!-- scrollbar -->
            <script src="<%=path%>/lib/antiscroll/antiscroll.js"></script>
            <script src="<%=path%>/lib/antiscroll/jquery-mousewheel.js"></script>
            <!-- mobile nav -->
            <script src="<%=path%>/js/selectNav.js"></script>
            <!-- common functions -->
            <script src="js/gebo_common.js"></script>
                <script>
                $(document).ready(function() {
                    //* show all elements & remove preloader
                    setTimeout('$("html").removeClass("js")',1000);
                });
            </script>
        
        </div>
    </body>
</html>