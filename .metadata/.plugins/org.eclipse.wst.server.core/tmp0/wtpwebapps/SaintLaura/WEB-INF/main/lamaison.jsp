<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<jsp:include page="../header.jsp" />

<link rel="stylesheet" href="/SaintLaura/css/lamaison.css?after">
<script src="<%=ctxPath%>/js_ysl/lamaison.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<%--      contents  시작            --%>


<div class="Mycontainer">
	<div class="jumbotron text-center">
	  <h1>SAINT LAURA</h1>
	  <p style="font-size: 20pt;">s&emsp;e&emsp;o&emsp;u&emsp;l</p> 
	 <!--  <br/>
	  <p style="font-size: 15pt; font-style: italic;">history</p>  -->
	</div>
	
	<!-- Container (About Section) -->
	<div id="about" class="container-fluid">
	  <div class="row">
	    <div class="col-sm-8">
	      <h2>About Yves Saint Laurent</h2><br>
	     </div>
	      <div class="col-sm-8">
	      <h5><strong>이브 생 로랑</strong>은 1954년 경 18세라는 나이에 파리에 정착하여 오뜨꾸뛰르 디자인 학교에서 공부를 하게된다.<br/>
	      	    학교에서 주최하는 콘테스트에서 직접 디자인한 드레스가 1등을 하는 영광을 거머쥐게 되고, 이를 계기로 디올로 들어가게 되면서 그의 <strong>디자이너 인생의 첫걸음</strong>을 시작된다.<br/>
	      	    얼마 지나지 않아 크리스티앙 디올이 숨을 거두고, 이브 생 로랑은 21살이라는 매우 젊은 나이에 디올이라는 큰 브랜드의 수석 디자이너를 맡는다.<br/>
	      	    디올에서 물러나고 5년 후, 1961년에 자신의 동료 삐에르 베르제와 함께 자신의 이름을 건 부띠끄를 설립하며,<br/>
			    이때부터 <strong>혁신적이고 과감한 디자인</strong>을 내세우는 이브 생 로랑의 브랜드 히스토리가 시작된다.</h5><br/>
	      <p>Yves Saint Laurent settled in Paris at the age of 18 in 1954 and studied at the Haute Couture School of Design.
			 A dress designed by her own in a school-hosted contest takes the honor of winning the first place.
			 Soon after, Christian Dior died, and Yves Saint Laurent became the lead designer of a big brand Dior at the very young age of 21.
			 Five years after retiring from Dior, in 1961 he founded a boutique with fellow Pierre Berger.
			 From this point on, Yves Saint Laurent brand history with innovative and bold designs begins.</p>
	    </div>
	    <div class="col-sm-4">
	      <img id="Yves" style="width:100%" src="images/lamasion-laYves.jpg">
	    </div>
	  </div>
	</div>
	
	
	
	
	
	<!-- Container (Heyday Section) -->
	<div class="container-fluid bg-grey">
	  <div class="row">
	    <div class="col-sm-12">
	      <h2 style="text-align: right;">Our Heyday</h2><br>
	     </div>
	     <div class="col-sm-6">
	        <video width="100%" height="320" preload="auto" autoplay loop muted>
			  <source src="images/lamasion-la-heyday.mp4" type="video/mp4">
			</video>
	     </div>
	     <div class="col-sm-6" style="padding-right: 0;">
	      <h5 style="line-height: 180%;">
	        <strong>1965년</strong><br/>컬러풀한 블록 드레스를 선보이며, 패션계에서 본격적으로 두드러지기 시작한다.<br/>
			<strong>1966년 - 전성기의 시작</strong><br/>턱시도에서 영감을 받아 여성복에 처음으로 팬츠를 도입한 스모킹 룩을 선보인다.<br/>		
			<strong>1970년</strong><br/>남성복라인도 나오게 되며 점점 그의 영향력을 키워나가게 된다.<br/>
			<strong>1983년</strong><br/>살아있는 패션 디자이너 최초로 뉴욕 메트로폴리탄 박물관에서 개인전을 열었다.<br/> 
			<strong>1985년</strong><br/>레이종 도뇌르 훈장을 수여받기도 하면서 프랑스의 국보로 추앙된다.<br/>
			<strong>2002년 1월 - 은퇴</strong><br/>오트쿠튀르 패션쇼 무대를 마지막으로 패션계를 떠난다.<br/>
		  </h5>
	    </div>
	  </div>
	</div>
	
	<!-- Container (Pricing Section) -->
	 
	<div id="pricing" class="container-fluid">
	  <div class="text-center">
	    <h2>Our fashion</h2>
	    <h4>Embellishes part of 20th century history</h4>
	  </div>
	  <div class="row slideanim">
	    <div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="panel-heading">
	          <h4>1965년</h4>
	        </div>
	        <div class="panel-body">
	          <img style="width:83%" src="images/lamasion-lapanel-body-mon2.jpg">
	        </div>
	        <div class="panel-footer">
	          <h4>몬드리안 룩(Mondrian look)</h4>
	          <h5>화가 몬드리안에게 영감을 받아<br/>컬러 블록드레스를 선보임<br/>패션계 최초로 예술작품과 패션을 접목</h5>
	        </div>
	      </div>      
	    </div> 
	    
	    <div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="panel-heading">
	          <h4>1966년</h4>
	        </div>
	        <div class="panel-body">
	          <img style="width:100%" src="images/lamasion-lapanel-body-le.jpg">
	        </div>
	        <div class="panel-footer">
	          <h4>르 스모킹(Le Smocking)</h4>
	          <h5>남성 턱시도를 여성을 위한<br/>새로운 이브닝웨어로 탈바꿈<br/>새로운 여성상에 꼭 맞는 혁명적인 의상</h5>
	        </div>
	      </div>      
	    </div>
	    
	    <div class="col-sm-4 col-xs-12">
	      <div class="panel panel-default text-center">
	        <div class="panel-heading">
	          <h4>1967년</h4>
	        </div>
	        <div class="panel-body">
	          <img style="width:100%" src="images/lamasion-lapanel-body-see.jpg">
	        </div>
	        <div class="panel-footer">
	          <h4>시스루 룩(See-through Look)</h4>
	          <h5>가슴,팔 등 보디라인이 다 비쳐 보이는<br/>실크 쉬폰 드레스는 페미니스트들의 지지받음<br/>시스루 룩의 시초가 되는 매우 파격적인 의상</h5>
	         
	        </div>
	      </div>      
	    </div>    
	    
	  </div>      
	</div>    
	
	
	
	<!-- Container (Portfolio Section) -->
	<div id="portfolio" class="container-fluid text-center bg-grey">
		<h2>Portfolio</h2>
		<h4>What we have created</h4>  
			<!-- Container (Video Section) -->
			<div>
			<video id="video" width="100%" height="400"  preload="auto" loop controls muted>
			  <source src="images/lamasion-laYves Saint Laurent.mp4" type="video/mp4">
			</video>
			</div>   
		<br/><br/>
		<h2 class="text-center" style="margin-bottom: 0;">What Yves Saint Laurent's say</h2>
		  
		<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		      <li data-target="#myCarousel" data-slide-to="3"></li>
		      <li data-target="#myCarousel" data-slide-to="4"></li>
		    </ol>
			
		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">    
		      <div class="item active">
		        <h4>"Fashions fade - style is eternal."<br/><span>"패션은 사라지지만 스타일은 영원하다."</span></h4>
		      </div>
		      <div class="item">
		        <h4>"We must never confuse elegance with snobbery."<br/><span>"우리는 절대로 우아함과 속물근성을 혼동해서는 안된다."</span></h4>
		      </div>
		      <div class="item">
		        <h4>"The most beautiful clothes that can dress a woman are the arms of the man she loves."<br/><span>"여성에게 입힐 수 있는 가장 아름다운 옷은 그녀가 사랑하는 남성의 팔이다."</span></h4>
		      </div> 
		      <div class="item">
		        <h4>"Over the years I have learned that what is important in a dress is the woman who is wearing it."<br/><span>"나는 옷에서 중요한 것은 그 옷을 입는 여성이 누구인가라는 것을 배웠다."</span></h4>
		      </div>
		      <div class="item">
		        <h4>"I'm very sure of myself - what I do and what I like."<br/><span>"난 나신에 대한 강한 확신이 있다. 내가 무엇을 하고 무엇을 좋아하는지 말이다."</span></h4>
		      </div>     
		    </div>
		
		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		</div>
	</div>
</div>


</body>
</html>
