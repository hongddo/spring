<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
<script src="/js/jquery-3.3.1.js"></script>
<script src="/js/bootstrap.js"></script>
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/signin.css" rel="stylesheet">
 -->
 
 
 
<html>
	<head>
  		<title>hongseo's exchange</title>
  		<script src="/js/jquery-3.3.1.min.js"></script>
		<script src="/js/bootstrap.js"></script>
  		
		<link rel='stylesheet' id='buttons-css'      href='/css/wp-includes/buttons.min.css' type='text/css' media='all' />
		<link rel='stylesheet' id='dashicons-css'    href='/css/wp-includes/dashicons.min.css' type='text/css' media='all' />
		<link rel='stylesheet' id='media-views-css'  href='/css/wp-includes/media-views.min.css' type='text/css' media='all' />
        <link rel='stylesheet' id='media-views-css'  href='/css/wp-includes/themes/style.css' type='text/css' media='all' />
		<link rel='stylesheet' id='dokan-skin-css'   href='/css/wp-includes/themes/purple.css' type='text/css' media='all' />
	</head>
	<body class="home blog woocommerce dokan-theme-dokan">
		<nav class="navbar navbar-expand-lg navbar-light">
	    	<div class="container">
	        	<a href="./main" class="navbar-brand" href="/">Main</a>
				<div class="d-flex ml-auto">
		            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#globalNavbar" aria-controls="globalNavbar" aria-expanded="false" aria-label="Toggle navigation">
		            	<span class="navbar-toggler-icon"></span>
		            </button>
		
			</div>
		        
		        <div class="collapse navbar-collapse" id="globalNavbar">
		        	<form class="form-inline form-navbar my-2 my-lg-0 order-2" action="/web/shop/">
		            	<input class="form-control" name="s" type="text" placeholder="Search"/>
		            </form>
		            <ul class="navbar-nav mr-auto order-1">
		            	<li class="nav-item dropdown">
		            		<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" href="/web/keyword/newtech" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">신기술</a>
			                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			                	<div class="navbar-collapse navbar-top-collapse">
			                		<ul id="menu-top-menu" class="nav navbar-nav">
			                			<li id="menu-item-601" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-601">
			                				<a title="Admin &amp; Dashboard" href="/web/keyword/newtech">신기술</a>
			                			</li>
										<li id="menu-item-603" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-603">
											<a title="Landing &amp; Corporate" href="/web/product-category/landing-corporate/">Menu#2</a>
										</li>
			                            <li id="menu-item-1537" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1537">
			                            	<a title="Application" href="/web/product-category/application/">Menu#3</a>
			                            </li>
			  							<li id="menu-item-602" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-602">
			  								<a title="E-Commerce &amp; Retail" href="/web/product-category/ecommerce-retail/">Menu#4</a>
			  							</li>
										<li id="menu-item-1538" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1538">
											<a title="Portfolio &amp; Blog" href="/web/product-category/portfolio-blog/">Menu#5</a>
										</li>
										<li id="menu-item-1539" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1539">
											<a title="Specialty" href="/web/product-category/specialty/">Menu#6</a>
										</li>
									</ul>
								</div>
			                </div>
		                </li>
		                <li class="nav-item">
		                	<a class="nav-link" href="/web/official-themes">Menu#2</a>
		                </li>
		                <li class="nav-item">
		                	<a class="nav-link" href="/web/sell/">Menu#3</a>
		                </li>
					</ul>
		            <ul class="navbar-nav d-none d-lg-flex ml-2 order-3">
		            	<li class="nav-item">
		            		<a class="nav-link" href="./signin">Sign in</a>
		            	</li>
		                <li class="nav-item">
		                	<a class="nav-link" href="./signup">Sign up</a>
		                </li>
		            </ul>
	                <ul class="navbar-nav d-lg-none">
		                <li class="nav-item-divider"></li>
	    	            <li class="nav-item">
	        	          	<a class="nav-link" href="./signin">로그인</a>
	            	    </li>
	                	<li class="nav-item">
	                  		<a class="nav-link" href="./signup">회원가입</a>
	                  	</li>
		            </ul>
				</div>
        	</div>
        			
		</nav>
		
		<!-- 2. Main -->
		<main id="main" class="site-main main">
			<section class="hero">
				<!--Header Section -->
    			<div class="container">
      				<img src="./css/wp-includes/themes/assets/images/bootstrap-stack.png" srcset="./css/wp-includes/themes/assets/images/bootstrap-stack.png 1x, ./css/wp-includes/themes/assets/images/bootstrap-stack@2x.png 2x">
      				<h1 class="display-1 text-bold">환영합니다</h1>
      				<h5 class="text-gray-soft text-regular">Welcome to HS exchange</h5>
      				<a class="button button-brand btn-lg mb-5 mb-lg-2" href="https://themes.getbootstrap.com/official-themes">거래하기</a>
    			</div>
			</section>
		</main>
	</body>
</html>