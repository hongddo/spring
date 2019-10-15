<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
	<head>
	
		<%@ include file="/jspf/webSecurity.jspf" %>
		<script src="./js/jquery-3.3.1.min.js"></script>
		<script src="./js/bootstrap.js"></script>
	
		<title>My account - Bootstrap Themes</title>
		<!-- 
		<link rel='apple-touch-icon' sizes='180x180' href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/apple-touch-icon.png'>
		<link rel='icon' type='image/png' sizes='32x32' href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/favicon-32x32.png'>
		<link rel='icon' type='image/png' sizes='16x16' href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/favicon-16x16.png'>
		<link rel='shortcut icon' href='https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/fav/favicon.ico'>
		<link rel="canonical" href="https://themes.getbootstrap.com/my-account/" />
		<link rel='dns-prefetch' href='//fonts.googleapis.com' />
		<link rel='dns-prefetch' href='//s.w.org' />
		<link rel="alternate" type="application/rss+xml" title="Bootstrap Themes &raquo; Feed" href="https://themes.getbootstrap.com/feed/" />
		<link rel="alternate" type="application/rss+xml" title="Bootstrap Themes &raquo; Comments Feed" href="https://themes.getbootstrap.com/comments/feed/" />
		-->
		<link rel='stylesheet' id='select2-css'  href='./css/wp-includes/themes/woocommerce/select2.css' type='text/css' media='all' />
		
		<link rel='stylesheet' id='woocommerce-layout-css'       href='./css/wp-includes/themes/woocommerce/woocommerce-layout.css' type='text/css' media='all' />
		<link rel='stylesheet' id='woocommerce-smallscreen-css'  href='./css/wp-includes/themes/woocommerce/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)' />
		<link rel='stylesheet' id='woocommerce-general-css'      href='./css/wp-includes/themes/woocommerce/woocommerce.css' type='text/css' media='all' />
		
		<link rel='stylesheet' id='buttons-css'      href='./css/wp-includes/buttons.min.css' type='text/css' media='all' />
		<link rel='stylesheet' id='dashicons-css'    href='./css/wp-includes/dashicons.min.css' type='text/css' media='all' />
		<link rel='stylesheet' id='media-views-css'  href='./css/wp-includes/media-views.min.css' type='text/css' media='all' />
	    <link rel='stylesheet' id="style-css"        href='./css/wp-includes/themes/style.css' type='text/css' media='all' />
		<link rel='stylesheet' id='dokan-skin-css'   href='./css/wp-includes/themes/purple.css' type='text/css' media='all' />
	</head>
    <body class="page-template-default page page-id-7 page-parent woocommerce woocommerce-account woocommerce-page dokan-theme-dokan">
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
		            		<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Menu#1</a>
			                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			                	<div class="navbar-collapse navbar-top-collapse">
			                		<ul id="menu-top-menu" class="nav navbar-nav">
			                			<li id="menu-item-601" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-601">
			                				<a title="Admin &amp; Dashboard" href="./web/product-category/admin-dashboard/">Menu#2</a>
			                			</li>
										<li id="menu-item-603" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-603">
											<a title="Landing &amp; Corporate" href="./web/product-category/landing-corporate/">Menu#2</a>
										</li>
			                            <li id="menu-item-1537" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1537">
			                            	<a title="Application" href="./web/product-category/application/">Menu#3</a>
			                            </li>
			  							<li id="menu-item-602" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-602">
			  								<a title="E-Commerce &amp; Retail" href="./web/product-category/ecommerce-retail/">Menu#4</a>
			  							</li>
										<li id="menu-item-1538" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1538">
											<a title="Portfolio &amp; Blog" href="./web/product-category/portfolio-blog/">Menu#5</a>
										</li>
										<li id="menu-item-1539" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-1539">
											<a title="Specialty" href="./web/product-category/specialty/">Menu#6</a>
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
		            		<a class="nav-link" href="./signin">로그인</a>
		            	</li>
		                <li class="nav-item">
		                	<a class="nav-link" href="./signup">회원가입</a>
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
        <main id="main" class="site-main main">
 	    	<section class="section">
				<div class="container">
                	<div class="row">
                		<div class="container container--xs">
        					<div class="woocommerce">
								<div id="signup_div_wrapper">
    								<img class="img-fluid mx-auto d-block mb-3" src="./css/wp-includes/themes/assets/images/bootstrap-logo.svg" alt="">
    								<h1 class="mb-1 text-center">회원가입</h1>
    								<p class="fs-14 text-gray text-center mb-5">Redownload themes, get support, and review themes.</p>
    
									<form name="signupForm" id="signupForm" method="post">
					        			<p class="woocommerce-FormRow woocommerce-FormRow--first form-row form-row-first">
											<label for="reg_sr_firstname">First Name <span class="required">*</span></label>
											<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="sr_firstname" id="reg_sr_firstname" value=""  required/>
										</p>
										<p class="woocommerce-FormRow woocommerce-FormRow--last form-row form-row-last">
											<label for="reg_sr_lastname">Last Name <span class="required">*</span></label>
											<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="sr_lastname" id="reg_sr_lastname" value=""  required />
										</p>
								        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								            <label for="reg_email">Email address <span class="required">*</span></label>
								            <input type="email" class="woocommerce-Input woocommerce-Input--text input-text" name="email" id="reg_email" value="" />
								        </p>
							            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
							                <label for="reg_password">Password <span class="required">*</span></label>
							                <input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password" id="reg_password" />
							            </p>
								        
		
										    <p class="form-row form-group form-row-wide">
										    	<input class="tc_check_box" type="checkbox" id="tc_agree" name="tc_agree" required="required">
										        <label style="display: inline" for="tc_agree">I have read and agree to the <a target="_blank" href="https://themes.getbootstrap.com/my-account/">Terms &amp; Conditions</a>.</label>
											</p>    
										</div>

										<p class="form-row form-group user-role">
									    	<label class="radio">
									        <input type="radio" name="role" value="customer" checked='checked'> I am a customer </label>
									
									    	<label class="radio">
									        	<input type="radio" name="role" value="seller"> I am a vendor </label>
										</p>
										<p class="woocomerce-FormRow form-row">
										    <input type="hidden" id="woocommerce-register-nonce" name="woocommerce-register-nonce" value="d8a9cf2135" /><input type="hidden" name="_wp_http_referer" value="/my-account/" />            <input type="submit" class="btn btn-brand btn-block btn-lg mb-4 mt-3" style="margin:0;" name="wbsignupForm" value="가입하기" />
										</p>
									</form>
									<form id="sucssesForm" action="./sucsses" method="POST">
	
									</form>
									<p class="text-gray-soft text-center small mb-2">By clicking "Sign up" you agree to our <a href="https://themes.getbootstrap.com/terms">Terms of Service</a>.</p>
									<p class="text-gray-soft text-center small mb-2">Already have an account? <a href="https://themes.getbootstrap.com/signin/">Sign in</a></p>
									<p class="text-gray-soft text-center small">Trying to sign up to sell themes? <a href="https://themes.getbootstrap.com/sell/">Apply to be a seller.</a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
        	</section>
		</main>
		   
        <footer class="footer">
            <div class="container">
                <div class="footer__inner">
        	        <div class="footer__item d-lg-flex justify-content-lg-between align-items-lg-center">
                        <ul id="menu-footer" class="nav sub-nav footer__sub-nav">
                        	<li id="menu-item-1194" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1194">
                        		<a title="Help Center" href="https://themes.zendesk.com/hc/en-us">Help Center</a>
                        	</li>
							<li id="menu-item-119" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-119"><a title="Terms of Service" href="https://themes.getbootstrap.com/terms/">Terms of Service</a></li>
							<li id="menu-item-117" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117"><a title="Licenses" href="https://themes.getbootstrap.com/licenses/">Licenses</a></li>
						</ul>
						<p class="hidden-sm-down d-none d-lg-block">Trying to redownload a theme? Use our <a href="https://themes.getbootstrap.com/redownload/">redownload page.</a></p>
                    </div>
                </div>
            </div>
        </footer>
	</body>
<script type="text/javascript">
		$("#signupForm").submit(function(){
			console.log("=== 1.signup submit event start");
			var email = $("#reg_email").val();
			var name = $("#reg_sr_firstname").val()+$("#reg_sr_lastname").val()
			var password = $("#reg_password").val();
			
			var formData = {email:email, password:password};
			singupProcess(email,password,name);
			
			return false;
		});
		
		function singupProcess(email, password,name) {
			$.ajax({
				url : "./signup",
				type: "post",
				data: JSON.stringify({email: email, password: password,name: name}),
				contentType: "application/json",
				success : function(data, textStatus, jqXHR) {
					console.log("sigup data" + jqXHR.responseText);
					successreg(data);
				},
				error : function(jqXHR, textStatus, errorThronw) {
					alert("SignIn Error");
				}
			})
		}
		
		function successreg(jsonData) {
			if(jsonData.success == 'Y') {
				$("#sucssesForm").submit();
			} else {
				alert("이미 등록된 아이디입니다!");
				
			}
		}
</script>
	
</html>