<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header_dog.jsp"/>
<title>상품후기</title>

<style type="text/css">
@import url(//fonts.googleapis.comearlyaccessnanumgothic.css);	
	.Bin_active {
		color: black;
		font-weight: bold;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#myModal').on('hidden.bs.modal', function () {
			$(this).removeData();
		})
		
		//최신순, 평점순 액티브
		var reviewSort1 = "${reviewSort1}";
		if (reviewSort1 == '0') {
			$("#Bin_menu2").addClass("Bin_active");			
		}		
		else if (reviewSort1 == '1') {
			$("#Bin_menu1").addClass("Bin_active");
		}		
	});
</script>
<div style="width:80%; margin: 0 auto;">
	
	<div style="padding: 20px 0px;">
		<div style="font-size:12px; color: #858585; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; text-align: right;">						
			<div onclick="javascript:location.href='<%= request.getContextPath()%>/main.dog'" style="cursor:pointer; display: inline-block;">홈</div>
			<div onclick="javascript:location.href='<%= request.getContextPath()%>/purchase/purchase.dog'" style="cursor:pointer; display: inline-block;"> > 구매하기</div>			
		</div>
		<div style="font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-size: 46px; text-align: center; font-weight: bold;">
			상품후기
		</div>
	</div>
	<div style="margin-bottom: 5%;">
		<table style="width: 100%;">  
			<tr style="text-align:center; width: 100%; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;">				
				<td id="Bin_menu1" onclick="javascript:location.href='/Semi_Team1/review/review.dog'" style="width:50%; cursor:pointer; padding:2%; font-size: 15px; color: #777; border: 1px solid #eee;">최신순</td>
				<td id="Bin_menu2" onclick="javascript:location.href='/Semi_Team1/review/review.dog?reviewSort1=0'" style="width:50%; cursor:pointer; padding:2%; font-size: 15px; color: #777; border: 1px solid #eee;">평점순</td>								
			</tr>
		</table>	
	</div>
	
		${contents}
		
	<div class="pageBar" style="margin-bottom:2.5%; text-align: center;">
		${pageBar}
	</div>
  
    <!-- Modal HTML -->
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Content will be loaded here from "remote.php" file -->
            </div>
        </div>
    </div>
</div>
					
<jsp:include page="../footer_dog.jsp"/>