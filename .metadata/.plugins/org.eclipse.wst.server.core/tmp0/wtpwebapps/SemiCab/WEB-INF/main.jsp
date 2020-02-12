<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String ctxPath = request.getContextPath();
%>
    
<jsp:include page="header.jsp"></jsp:include>
	
	
<style>

	.banner-main{
		position: relative;
	    width: 1400px;
	    height: 740px;
	    margin: 0 auto 100px;
	    padding-top: 100px;
	}
	.banner-main > div{
		float: left;
	    width: 50%;
	    box-sizing: border-box;
	}
	.area-left{
	
	}
	.area-right{
		padding-left: 100px;
	}
	
	.area-video{
		position: absolute ;
		top:502px; 
		left:800px;
    	bottom: 0;
	}
	
	/* --------------------------------- */
	
	.banner-section01{
		background: #f4f4f4;
	    text-align: center;
	    margin: 0 0 100px;
	}
	.banner-section01 ul{
		display: inline-block;
	    max-width: 1860px;
	    padding: 80px 30px;
	    box-sizing: border-box;
	}
	.banner-section01 ul > li{
		list-style: none;
	  	float: left;
	    width: 33.3333%;
	    padding: 0 30px;
	    box-sizing: border-box;
  	}
  	.banner-section01 ul > li > a{
  		text-decoration: none;
  		outline: none;
  	}
  	.banner-section01 ul > li > a:hover{
	  	cursor: pointer;
	  	text-decoration: none;
  	}
  	.banner-section01 ul > li > a > .textPng0{
  		padding: 20px 0;
	    font-size: 20px;
	    color: #222;
	    transition: color .3s ;
	    font-weight: 700;
  	}
  	.banner-section01 ul > li > a > .textPng1{
  		padding: 20px 0;
	    font-size: 20px;
	    color: #222;
	    transition: color .3s ;
	    font-weight: 700;
  	}
  	.banner-section01 ul > li > a > .textPng2{
  		padding: 20px 0;
	    font-size: 20px;
	    color: #222;
	    transition: color .3s ;
	    font-weight: 700;
  	}
  	.banner-section01 ul > li > a > .img{
  		padding: 20px 0;
  	}
  	.banner-section01 ul > li > a > .img > img{
  		width: 100%;
	    border: 3px solid transparent;
	    transition: border .3s;
	    vertical-align: top;
  	}
  	
  	/* -------------------------------- */
  	.banner-section02 .insta-tag{
  		position: relative;
	    width: 100%;
	    max-width: 1260px;
	    height: 30px;
	    margin: 0 auto 20px;
	    text-align: center;
  	}
  	
  	
  	.banner-section02 {
		position: relative;
	    margin: 0;
	    padding: 30px 0px 40px;
	    border-top: 1px solid #e6e6e6;
	    background: #f8f8f8;
	}
	.banner-section02 > h2{
	    line-height: 26px;
	    margin: 0 0 10px;
	    text-align: center;
	}
	.banner-section02 > h2 > a > .instagram{
		width: 118px;
		height: 39px;
	}
	.banner-section02 > .insta-tag > .tagid{
		display: inline-block;
	    height: 25px;
	    line-height: 25px;
	    margin: 0 2px;
	    padding: 0 15px;
	    border-radius: 15px;
		background: #333;
		color: #fff;
		font-style: bold;
    	font-size: 11pt;
	}
	
	.banner-section02 > #insta-PngView{
		width: 1260px;
    	margin: 0 auto;
	}
	.banner-section02 > #insta-PngView > .insta-line{
		display: inline-block;
		width: 1260px;
		height: 123px;
	    margin: 0 3px 3px 0px;
	    background: #fff;
	    vertical-align: top;
	    font-size: 0;
	}
	
	#insta-PngView > .insta-line > .insta-picture{
		width: 123px;
    	height: 123px;
		margin: 0px 3px 0px 0px;
    	padding: 0;
    	display: inline-block;
    	transition: opacity .3s;
    	opacity: inherit;
	}
	#insta-PngView > .insta-line > .insta-picture:hover{
		opacity: 0.5;
	}
	
	
	.insta-picture > img{
		width: 123px;
    	height: 123px;
	}
	
	#btn{
		display: block;
	    width: 200px;
	    height: 46px;
	    line-height: 46px;
	    font-size: 14px;
	    color: #fff;
	    transition: all .3s ;
	    font-weight: 500;
	    letter-spacing: 1px;
	    text-align: center;
	    text-decoration: none;
	    background: #222;
	    border-radius: 2px;
	}
	#btn:hover {
		background: #ed4c38; 
	}

</style>
<script>
  	$(function () {
  		
  		// banner-section01 마우스 호버 
  		
  		$(".liPng0").hover(function(){
  				$(".textPng0").css({"color":"#ed4c38"});
  				$("#mainCap0").css({"border-color":"black"});
  	  		  },
  	  		  function(){
  	  			$(".textPng0").css({"color":"#222"});
  	  			$("#mainCap0").css({"border-color":"transparent"});
  	  		  });
  		
  		$(".liPng1").hover(function(){
				$(".textPng1").css({"color":"#ed4c38"});
				$("#mainCap1").css({"border-color":"black"});
	  		  },
	  		  function(){
	  			$(".textPng1").css({"color":"#222"});
	  			$("#mainCap1").css({"border-color":"transparent"});
	  		  });
  		
  		$(".liPng2").hover(function(){
				$(".textPng2").css({"color":"#ed4c38"});
				$("#mainCap2").css({"border-color":"black"});
	  		  },
	  		  function(){
	  			$(".textPng2").css({"color":"#222"});
	  			$("#mainCap2").css({"border-color":"transparent"});
	  		  });
  	});
</script>

	<div class="banner-main">
		<div class="area-left">
	      <img src="<%= ctxPath %>/img/메인img.jpg" class="img-responsive" style="width:100%" alt="Image">
	      <p></p>
	    </div> <!-- <div class="area-left"> -->
	    
	   <div class="area-right" align="left" >
	       <span style="color: red; font-size: 40pt; font-weight: bold; ">EMOJEOMO</span><br/>
		       <p>
			       <span style="font-size:11pt; font-weight: bolder;">
			      		EMOJEOMO IS THE KOREA STREETWEAR BRAND FOUNDED IN 2019.THE EMOJEOMO, 
				       COMBINATION OF THE WORDS’EMO’AND’JEOMO’,
				       IMPLIES THE FINEDST PRODUCT.FOCUSING ON THE SUPERBNESS, 
				       THE EMOJEOMO PURSUES THE DESIGN VALUE,”
				       BE INTEGRAL”IN THE LITERAL SENSE OF THE WORD.REGARDLESS OF THEIR GENRES, 
				       VARIOUS ATTEMPTS WILL BE MADE TO ACHIEVE OUR MOTTO
				   </span> 
			   </p> 
			   <a href="#" id="btn">View More →</a>
      </div> <!-- <div class="area-right"> -->
      
      <div class="area-video">
	      	<iframe width="600" height="338" 
	      		src="https://player.vimeo.com/video/206366533?autoplay=1&amp;loop=1title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1" >
	      	</iframe>
      </div> <!-- <div class="area-video"> -->
      
	</div> <!-- <banner-main> -->
	
	<div class="banner-section01">
		<div>
		  <ul>
			<li class="liPng0">
				<a href="#" >
					<p class="textPng0">COTTON LOGO<br>J BALL CAP(BK)</p>
					<p class="img"><img src="<%= ctxPath %>/img/cap1.PNG" id="mainCap0" class="imgPng"></p>
				</a>
			</li>
			<li class="liPng1">
				<a href="#" >
					<p class="img"><img src="<%= ctxPath %>/img/cap2.PNG" id="mainCap1" class="imgPng"></p>
					<p class="textPng1">COTTON FONT<br>STRAP RING BALL CAP(WT)</p>
				</a>
			</li>
			<li class="liPng2">
				<a href="#">
					<p class="textPng2">COTTON FONT<br>02 BALL CAP(BK)</p>
					<p class="img"><img src="<%= ctxPath %>/img/cap3.PNG" id="mainCap2" class="imgPng"></p>
				</a>
			</li>
		  </ul>
		</div>
	
	</div><!-- banner-section01 -->
	
	<div class="banner-section02"> <!-- banner-section02 (insta) -->
		<h2>
	  		<a href="https://www.instagram.com/" target="_blank">
	  			<img src="<%= ctxPath %>/img/InstagramLogo.jpg" class="instagram" alt="Image" >
	  		</a>
  		</h2>
  		
  		<div class="insta-tag">  
  			<a href="https://www.instagram.com/newerakorea/" target="_blank" class="tagid">@emojeomo</a>
		</div>
		
		<div id="insta-PngView">	   
		    <div class="insta-line">			
				<div class="insta-picture"><img src="<%= ctxPath %>/img/01.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/02.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/03.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/04.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/05.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/06.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/07.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/08.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/09.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/10.jpg"   alt="Image"/></div>					
			</div>
				
			<div class="insta-line">			
				<div class="insta-picture"><img src="<%= ctxPath %>/img/11.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/12.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/13.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/14.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/15.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/16.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/17.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/18.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/19.jpg"   alt="Image"/></div>
				<div class="insta-picture"><img src="<%= ctxPath %>/img/20.jpg"   alt="Image"/></div>					
			</div>
	    </div>
		
	
	</div> <!-- banner-section02 (insta) -->

<jsp:include page="footer.jsp"></jsp:include>