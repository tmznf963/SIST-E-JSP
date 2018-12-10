<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="sc" class="com.fnf.controller.SelectController" />
<c:set var="product" value="${sc.select(param.idx)}" />  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피셔스 앤 파머스</title>
<!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
   <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">
    <!-- Main style sheet -->
    <link href="css/style1.css" rel="stylesheet">    
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="css/sidebar.css" rel="stylesheet">
    
</head>
<body>
<!-- ---------------------------------------------------------------------- -->
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
              </div>

              <!-- 상단바 로그인  -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                  <li><a href="#">로그인</a></li>
                  <li class="hidden-xs"><a href="#">회원가입</a></li>
                  <li class="hidden-xs"><a href="#">고객센터</a></li>
                  <!-- <li class="hidden-xs"><a href="#">마이페이지</a></li> -->
                  <!-- <li class="hidden-xs"><a href="checkout.html">Checkout</a></li> -->
                  <li><a href="#" data-toggle="modal" data-target="#login-modal">마이페이지</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- 로그인 확인창 -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>로그인이 필요한 서비스입니다.<br/>로그인 하시겠습니까?</h4>
          <button class="aa-browse-btn" type="submit">로그인</button>
          <button class="aa-browse-btn" type="button" data-dismiss="modal" aria-hidden="true">취소</button>
          <form class="aa-login-form" action="">
            <div class="aa-register-now">
              <a href="#">회원가입 하러가기</a>
            </div>
          </form>
        </div>                        
      </div>
    </div>
  </div>  


    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- 로고 -->
              <div class="aa-logo">
                <a href="index.html">
                  <!-- <strong>Fishers N Farmers</strong> -->
                </a>
                <!-- img -->
                <a href="index.html"><img src="img/logo.png" alt="logo img"></a>
              </div>

               <!-- 장바구니  -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="#">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">SHOPPING CART</span>
                  <!-- <span class="aa-cart-notify">2</span> -->
                </a>
                <div class="aa-cartbox-summary">
                  <ul>
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="img/cart.jpg" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">제품 이름</a></h4>
                        <p>1 x ￦30,000</p>
                      </div>
                      <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                    </li>
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="img/cart1.jpg" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">제품 이름</a></h4>
                        <p>1 x ￦3,500</p>
                      </div>
                      <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                    </li>                    
                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                      <span class="aa-cartbox-total-price">
                        ￦33,500
                      </span>
                    </li>
                  </ul>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.html">Checkout</a>
                </div>
              </div>


              <!-- 검색 창 -->
              <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="검색어 입력">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>          
            </div>
          </div>
        </div>
      </div>
    </div>


  <!-- 메뉴 -->
  </header>
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav">
              <!-- <li><a href="index.html">Home</a></li> -->
              <!-- <li><a href="index.html">전체상품</a></li> -->
              <li><a href="#">농산물<span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">채소</a></li>
                  <li><a href="#">과일</a></li>
                  <li><a href="#">쌀·잡곡류</a></li>
                  <li><a href="#">견과류</a></li>                                                
                </ul>
              </li>
              <li><a href="#">수산물 <span class="caret"></span></a>
                <ul class="dropdown-menu">  
                  <li><a href="#">생선</a></li>                                                                
                  <li><a href="#">갑각류</a></li>              
                  <li><a href="#">해조류</a></li>
                  <li><a href="#">건어물</a></li>
                </ul>
              </li>
              <li><a href="#">가공식품 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">즙류</a></li>
                  <li><a href="#">분말류</a></li>
                  <li><a href="#">잼류</a></li>
                </ul>
              </li>
             <li><a href="#">추천상품 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">농산물</a></li>
                  <li><a href="#">수산물</a></li>
                  <li><a href="#">가공식품</a></li>               
                </ul>
              </li>
              <li><a href="#">인기상품 <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">농산물</a></li>
                  <li><a href="#">수산물</a></li>  
                  <li><a href="#">가공식품</a></li>                 
                </ul>
              </li>
              <li><a href="#">Event</span></a>
                <!-- <ul class="dropdown-menu">                
                  <li><a href="#">진행중인 이벤트</a></li>
                  <li><a href="#">지난 이벤트</a></li>              
                </ul> -->
              </li>
            </ul>
          </div>
        </div>
      </div>       
    </div>
  </section>





<!-- ------------------------------------------------------------------------------- -->
<!-- catg header banner section -->
	
<!-- 		<section id="aa-catg-head-banner">
			<img src="/data/img/hdbg/de8eb79d9eee487bb5117bbd9c98c898.jpg" alt="상품상세 배경이미지">
			<div class="aa-catg-head-banner-area">
				<div class="container">
					<div class="aa-catg-head-banner-content">
						<h2>상품상세</h2>
						<ol class="breadcrumb">
							<li><a href="/home/fo/index.sd">Home</a></li>
							<li><a>패션</a></li>
							<li><a href="/productsub/fo/14/productlist.sd">여성의류</a></li>
							
								<li><a href="/productsub/fo/83/productlist.sd">원피스</a></li>
							
							
								<li><a href="/productsub/fo/100/productlist.sd">면/마/린넨 원피스</a></li>
							
						</ol>
					</div>
				</div>
			</div>
		</section> -->
	
	<!-- / catg header banner section -->

<!-- ------------------------------------------------------------------- -->
	<!-- product category -->
	<section id="aa-product-details">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				
					<form class="form-horizontal" id="frm" name="frm" method="post">
						
						<div class="aa-product-details-area">
							<div class="aa-product-details-content">
								<div class="row">
									<!-- Modal view slider -->
									<div class="col-md-5 col-sm-5 col-xs-12">
										<div class="aa-product-view-slider">
											<div id="demo-1" class="simpleLens-gallery-container">
												<div class="simpleLens-container">
													<div class="simpleLens-big-image-container">
														<a data-lens-image="img/${product.getFilename()}" class="simpleLens-lens-image">
															<img src="img/${product.getFilename()}" class="simpleLens-big-image">
														</a>
													</div>
												</div>
												<div class="simpleLens-thumbnails-container">
													<!-- <a data-big-image="img/1.jpg" data-lens-image="img/1.jpg" class="simpleLens-thumbnail-wrapper" href="#"> 
														<img src="img/1.jpg" alt="고구마">
													</a> -->
												</div>
											</div>
										</div>
									</div>
									
									<!-- Modal view content -->
									<div class="col-md-7 col-sm-7 col-xs-12">
<!-- 										<div class="table-responsive"> -->
											<table class="table table-pr" style="margin-bottom:5px;">
												<colgroup>
													<col width="30%">
													<col width="70%">
												</colgroup>
												<tr>
													<th class="active text-success">상품명</th>
													<td>${product.getPname()}</td>
												</tr>
													<tr>
														<th class="active text-success">상품코드</th>
														<td>${product.getPcode()}</td>
													</tr>
												<tr>
													<th class="active text-success">카테고리</th>
													<td>${product.getCategory()}</td>
												</tr>
													<tr>
														<th class="active text-success">원산지</th>
														<td>${product.getOrigin()}</td>
													</tr>
													<tr>
														<th class="active text-success">단위</th>
														<td>${product.getUnit()}</td>
													</tr>
					                                <tr>
														<th class="active text-success">판매가</th>
														<td><span>${product.getPrice()}</span>원</td>
													</tr>
												<tr>
													<th class="active text-success">수량</th>
													<td class="form-inline has-success">
														<input class="form-control" name="prb_ea" id="prb_ea" type="number" value="1" onchange="eaCheck(this);"/>
													</td>
												</tr>
											</table>
<!-- 	</div> -->
										
										<div class="row">
											<div class="col-sm-12 col-xs-12">
			                                	<a class="aa-add-to-cart-btn" href="javascript:basketIn('D');" title="바로구매">바로구매</a>
			                                	<a class="aa-add-to-cart-btn" href="javascript:basketIn('N');" title="장바구니">장바구니</a> 
												<a class="aa-add-to-cart-btn" href="javascript:wishIn();" title="관심상품">관심상품</a>
			                                </div>
			                                <div class="col-sm-12 col-xs-12">
			                                </div>
										</div>
									</div>
								</div>
							</div>
							<div class="aa-product-details-bottom">
								<ul class="nav nav-tabs" >
									<li><a href="#description" data-toggle="tab">상품정보</a></li>
									<li><a href="#review" data-toggle="tab">상품문의</a></li>
								</ul>
	
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade in active" id="description" style="word-break:break-all;overflow: auto">
										<p>${product.getPcontents()}</p>
									</div>
									<div class="tab-pane fade" id="review">
										<div class="aa-product-review-area">
											<h5><span id="prqscnt">0</span>개의 문의가 있습니다.</h5>
											<ul class="aa-review-nav" id="prqsel">
												
											</ul>
											<!-- review form -->
											<div class="aa-review-form">
												<div class="">
													<label for="prqs_content">상품문의 등록</label>
													<textarea class="form-control" rows="4" id="prqs_content" name="prqs_content" placeholder="400자까지 등록가능합니다."></textarea>
												</div>
												<button type="button" class="btn btn-default aa-review-submit" onclick="prqsIn();" style="margin-top:5px">확인</button>
											</div>
										</div>
									</div>									
								</div>
							</div>
							
							
												
							<!-- Related product -->
			
														
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- / product category -->

	
<!-- ------------------------------------------------------------------- -->
<!-- <section id="aa-product-details"> -->
<!--   <div class="container"> -->
<!--     <div class="aa-product-details-area"> -->
<!--       <div id="img"> -->
<!--         <img src="img" alt=""> -->
<!--       </div> -->
      
<!--       <div id="table"> -->
<!--         <form action=""> -->
<!--           <table border="1"> -->
<!--             <tr> -->
<!--               <th>상품명</th> -->
<!--               <td>0</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th>상품코드</th> -->
<!--               <td>0</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th>상품종류</th> -->
<!--               <td>0</td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--               <th>원산지</th> -->
<!--               <td>0</td> -->
<!--             </tr> -->
<!--           </table> -->
<!--         </form> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </section> -->
  



<!-- ------------------------------------------------------------------------------- -->
<!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main Menu</h3>
                  <ul class="aa-footer-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Our Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Knowledge Base</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Delivery</a></li>
                      <li><a href="#">Returns</a></li>
                      <li><a href="#">Services</a></li>
                      <li><a href="#">Discount</a></li>
                      <li><a href="#">Special Offer</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Useful Links</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">Site Map</a></li>
                      <li><a href="#">Search</a></li>
                      <li><a href="#">Advanced Search</a></li>
                      <li><a href="#">Suppliers</a></li>
                      <li><a href="#">FAQ</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p> 25 Astor Pl, NY 10003, USA</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>dailyshop@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Designed by <a href="http://www.markups.io/">MarkUps.io</a></p>
            <div class="aa-footer-payment">
              <span class="fa fa-cc-mastercard"></span>
              <span class="fa fa-cc-visa"></span>
              <span class="fa fa-paypal"></span>
              <span class="fa fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="js/sequence.js"></script>
  <script src="js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 
</body>
</html>