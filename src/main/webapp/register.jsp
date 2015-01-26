<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="login_page">
    <head>
    	<base href="<%=basePath%>">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Register</title>
    
        <!-- Bootstrap framework -->
            <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
            <link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.min.css" />
        <!-- main styles -->
            <link rel="stylesheet" href="css/style.css" />
            
        <style>
        .add-on{
        	font-family:微软雅黑;
        }
        </style>

    </head>
    <body>

        <div class="login_box">
            
            <form id="register_form">
                <div class="top_b" style="font-family:微软雅黑">用户信息注册</div>    
                <div class="cnt_b">
                    <div class="formRow">
                        <div class="input-prepend">
                            <span class="add-on">用户名：</span><input type="text" id="username" name="username" placeholder="Username" value="" />
                        </div>
                    </div>
                    <div class="formRow">
                        <div class="input-prepend">
                            <span class="add-on">密　码：</span><input type="password" id="password" name="password" placeholder="Password" value="" />
                        </div>
                    </div>
                    <div class="formRow">
                        <div class="input-prepend">
                            <span class="add-on">邮　箱：</span><input type="text" id="email" name="email" placeholder="Email" value="" />
                        </div>
                    </div>
                    <div class="formRow" style="text-align:bottom">
                            <input type="radio" name="type" value="1" checked="checked"/>&nbsp;<font style="font-family:微软雅黑">租房</font>
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="type" value="2" />&nbsp;<font style="font-family:微软雅黑">出租</font>
							&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="type" value="3" />&nbsp;<font style="font-family:微软雅黑">管理员</font>
                    </div>
                </div>
                <div class="btm_b clearfix">
                    <button class="btn btn-inverse pull-right" type="button" onclick="addUser()">Register</button>
                    <span class="link_reg" style="font-family:微软雅黑">为在外打拼的你，寻找遮风避雨的地方^_^</span>
                </div>  
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate.min.js"></script>
        <script src="js/jquery.actual.min.js"></script>
        <script src="lib/validation/jquery.validate.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function(){
                
                //* boxes animation
                form_wrapper = $('.login_box');
                function boxHeight() {
                    form_wrapper.animate({ marginTop : ( - ( form_wrapper.height() / 2) - 24) },400);   
                };
                form_wrapper.css({ marginTop : ( - ( form_wrapper.height() / 2) - 24) });
                $('.linkform a,.link_reg a').on('click',function(e){
                    var target  = $(this).attr('href'),
                        target_height = $(target).actual('height');
                    $(form_wrapper).css({
                        'height'        : form_wrapper.height()
                    }); 
                    $(form_wrapper.find('form:visible')).fadeOut(400,function(){
                        form_wrapper.stop().animate({
                            height   : target_height,
                            marginTop: ( - (target_height/2) - 24)
                        },500,function(){
                            $(target).fadeIn(400);
                            $('.links_btm .linkform').toggle();
                            $(form_wrapper).css({
                                'height'        : ''
                            }); 
                        });
                    });
                    e.preventDefault();
                });
                
                //* validation
                $('#register_form').validate({
                    onkeyup: false,
                    errorClass: 'error',
                    validClass: 'valid',
                    rules: {
                        username: { required: true, minlength: 3 },
                        password: { required: true, minlength: 3 },
                        email:{required:true,email:true}
                    },
                    highlight: function(element) {
                        $(element).closest('div').addClass("f_error");
                        setTimeout(function() {
                            boxHeight()
                        }, 200)
                    },
                    unhighlight: function(element) {
                        $(element).closest('div').removeClass("f_error");
                        setTimeout(function() {
                            boxHeight()
                        }, 200)
                    },
                    errorPlacement: function(error, element) {
                        $(element).closest('div').append(error);
                    }
                });
            });
            function addUser(){
            	var param=$("#register_form").serialize();
            	$.ajax({
            		type:"post",
              		url:"registerController/register.do",
              		data:param, 
              		dataType: "json",
              		async:false,
              		contentType:"application/x-www-form-urlencoded; charset=UTF-8", //声明编码  
              		success:function(data){	// 提交表单
              			if(data==1){
              				alert("用户注册成功!");
              				window.location.href='index.jsp';
              			}else{
              				alert("用户注册失败,请重新注册!");
              			}
              		},
              		error:function(XMLHttpRequest, textStatus, errorThrown) {
              			alert("用户注册失败,请重新注册!");	
                    }
            	});
            }
        </script>
    </body>
</html>




