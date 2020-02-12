<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../header.jsp" />


<style>
	table#tblProdInput {border: solid gray 1px; 
	                    border-collapse: collapse; }
	                    
    table#tblProdInput td {border: solid gray 1px; 
	                       padding-left: 10px;
	                       height: 50px; }
	                       
    .prodInputName {background-color: #e6fff2; 
                    font-weight: bold; }	                       	                    
	
	.error {color: red; font-weight: bold; font-size: 9pt;}
	
</style>


<script type="text/javascript">
	$(document).ready(function(){
		
		$(".error").hide();
		
		$.ajax({
			url:"<%= request.getContextPath()%>/shop/admin/specNameJSON.up",
		//	type:"GET",
			dataType:"json",
			success:function(json) {
				var html = "<option value=''>:::선택하세요:::</option>";
				
				$.each(json, function(index,item){
					html += "<option value='"+item.sname+"'>"+item.sname+"</option>";  
				});
				
				$("#specName").html(html);
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
		
		
		$("#spinnerPqty").spinner({
			spin:function(event,ui){
				if(ui.value > 100) {
					$(this).spinner("value", 100);
					return false;
				}
				else if(ui.value < 1) {
					$(this).spinner("value", 1);
					return false;
				}
			}
		});// end of $("#spinnerPqty").spinner()--------
		
		
		$("#spinnerImgQty").spinner({
			spin:function(event,ui){
				if(ui.value > 10) {
					$(this).spinner("value", 10);
					return false;
				}
				else if(ui.value < 0) {
					$(this).spinner("value", 1);
					return false;
				}
			}
		});// end of $("#spinnerPqty").spinner()--------
		
		
		$("#spinnerImgQty").bind("spinstop", function() {
			// === 스피너는 이벤트가 "change" 가 아니라 "spinstop" 이다. === //
			//	alert($(this).val());
			    
			    var html = "";
			    var cnt = $(this).val();
			    
			    if(cnt == "0") {
			    	$("#divfileattach").empty();
			    	$("#attachCount").val("");
			    	return;
			    }
			    else {
			    	for(var i=0; i<parseInt(cnt); i++) {
			    		html += "<br/>";
			    		html += "<input type='file' name='attach"+i+"' class='btn btn-default' />"; 
			    	}// end of for---------------------
			    
				    $("#divfileattach").empty();
				    $("#divfileattach").append(html);
					$("#attachCount").val(cnt);
			    }
			});
		
		
		$("#btnRegister").click(function(){
			
			var flag = false;
			
			$(".infoData").each(function(){
				var val = $(this).val().trim();
				if(val == "") {
					$(this).next().show();
					flag = true;
					return false; 
				}
			});
			
			if(!flag) {
				var frm = document.prodInputFrm;
				frm.submit();
			}
			
		});
		
	}); // end of $(document).ready();--------------
	
	
</script>

<div align="center" style="margin-bottom: 20px;">

<div style="border: solid green 2px; width: 200px; margin-top: 20px; padding-top: 10px; padding-bottom: 10px; border-left: hidden; border-right: hidden;">       
	<span style="font-size: 15pt; font-weight: bold;">제품등록[ADMIN]</span>	
</div>
<br/>

<%-- !!!!! ==== 중요 ==== !!!!! --%>
<%-- 폼에서 파일을 업로드 하려면 반드시 method 는 POST 이어야 하고 
     enctype="multipart/form-data" 으로 지정해주어야 한다.!! --%>
<form name="prodInputFrm"
      action="<%= request.getContextPath()%>/shop/admin/productRegister.up"
      method="POST"                         
      enctype="multipart/form-data"> 
      
<table id="tblProdInput" style="width: 80%;">
<tbody>
	<tr>
		<td width="25%" class="prodInputName" style="padding-top: 10px;">카테고리</td>
		<td width="75%" align="left" style="padding-top: 10px;" >
			<select name="pcategory_fk" class="infoData">
				<option value="">:::선택하세요:::</option>
				<%-- 
					<option value="100000">전자제품</option>
					<option value="200000">의  류</option>
					<option value="300000">도  서</option>
				--%> 
				<c:forEach var="map" items="${requestScope.categoryList}">
					<option value="${map.code}">${map.cname}</option>
				</c:forEach>
			</select>
			<span class="error">필수입력</span>
		</td>	
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품명</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;" >
			<input type="text" style="width: 300px;" name="pname" class="box infoData" />
			<span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제조사</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
			<input type="text" style="width: 300px;" name="pcompany" class="box infoData" />
			<span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품이미지</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
			<input type="file" name="pimage1" class="infoData" /><span class="error">필수입력</span>
			<input type="file" name="pimage2" class="infoData" /><span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품수량</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
           	<input id="spinnerPqty" name="pqty" value="1" style="width: 30px; height: 20px;"> 개
			<span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품정가</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
			<input type="text" style="width: 100px;" name="price" class="box infoData" /> 원
			<span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품판매가</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
			<input type="text" style="width: 100px;" name="saleprice" class="box infoData" /> 원
			<span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품스펙</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
			<select name="pspec" class="infoData" id="specName">
				<%-- 
					<option value="HIT">HIT</option>
					<option value="NEW">NEW</option>
					<option value="BEST">BEST</option> 
				--%>
			</select>
			<span class="error">필수입력</span>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName">제품설명</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
			<textarea name="pcontent" rows="5" cols="60"></textarea>
		</td>
	</tr>
	<tr>
		<td width="25%" class="prodInputName" style="padding-bottom: 10px;">제품포인트</td>
		<td width="75%" align="left" style="border-top: hidden; border-bottom: hidden; padding-bottom: 10px;">
			<input type="text" style="width: 100px;" name="point" class="box infoData" /> POINT
			<span class="error">필수입력</span>
		</td>
	</tr>
	
	<%-- ==== 첨부파일 타입 추가하기 ==== --%>
    <tr>
       	<td width="25%" class="prodInputName" style="padding-bottom: 10px;">추가이미지파일(선택)</td>
       	<td>
       		<label for="spinnerImgQty">파일갯수 : </label>
		    <input id="spinnerImgQty" value="0" style="width: 30px; height: 20px;">
       		<div id="divfileattach"></div>
       		<input type="hidden" name="attachCount" id="attachCount" /> 
       	</td>
    </tr>
	
	<tr style="height: 70px;">
		<td colspan="2" align="center" style="border-left: hidden; border-bottom: hidden; border-right: hidden;">
		    <input type="button" value="제품등록" id="btnRegister" style="width: 80px;" /> 
		    &nbsp;
		    <input type="reset" value="취소"  style="width: 80px;" />	
		</td>
	</tr>
</tbody>
</table>
</form>
</div>

<jsp:include page="../../footer.jsp" />    