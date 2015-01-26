
function getProCityList(){
	$.ajax({
		type:"post",
  		url:"cityController/showProCity.do",
  		dataType: "json",
  		contentType:"application/json", //声明编码  
  		success:function(data){	// 提交表单
  			if(data!=undefined && data.citys!=null){
  				showCity("prohome",data.citys);
  				showCity("pronew",data.citys);
  			}
  		},
  		error: function(XMLHttpRequest, textStatus, errorThrown) {
  			alert("AJAX请求失败！");
        }
	});
}

function getChilCityList(v1,v2){
	var proid=$("#"+v1).val();
	$.ajax({
		type:"post",
  		url:"cityController/showChilCity.do",
  		data:{"proid":proid},
  		dataType: "json",
  		contentType:"application/x-www-form-urlencoded; charset=UTF-8", //声明编码  
  		success:function(data){	// 提交表单
  			if(data!=undefined && data.citys!=null){
  				showCity(v2,data.citys);
  			}
  		},
  		error: function(XMLHttpRequest, textStatus, errorThrown) {
  			alert("AJAX请求失败！");
        }
	});
}

function showCity(v,data){
	var str="<option value=\"\">--请选择--</option>";
	$.each(data,function(i,v){
		str+="<option value=\""+v.cid+"\">"+v.cityname+"</option>";
	});
	$("#"+v).html(str);
}

$(document).ready(function() {
	getProCityList();
})

function addPerson(){
	var param=$("#person_content").serialize();
	alert(param);
	$.ajax({
		type:"post",
  		url:"personController/addPerson.do",
  		data:{
  			"person":param
  		},
  		dataType: "json",
  		contentType:"application/json", //声明编码  
  		success:function(data){	// 提交表单
  			if(data==true ||data=="true"){
  				alert("添加成功!");
  			}
  		},
  		error: function(XMLHttpRequest, textStatus, errorThrown) {
  			alert("AJAX请求失败！");
        }
	});
}