<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
	<head>
	    <meta charset="utf-8">
  		<title>Sign in to Bootstrap Themes</title>
  		
  		<%@ include file="/jspf/webSecurity.jspf" %>
		<script src="./js/jquery-3.3.1.min.js"></script>
		<script src="./js/bootstrap.js"></script>
<!--  -->  		
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
    <body class="page-template-default page page-id-137 woocommerce dokan-theme-dokan">
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
			                				<a title="Admin &amp; Dashboard" href="/web/product-category/admin-dashboard/">Menu#2</a>
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
	                	<div class="container container--mini">
	                		<img class="img-fluid mx-auto d-block mb-5" src="./css/wp-includes/themes/assets/images/bootstrap-logo.svg" alt="">
	        				
	        				<form name="signinForm" id="signinForm"  method="post">
		        				<div class="form-group">
		            				<label for="inputEmail">Email</label>
	            					<input type="email" name="email" id="inputEmail" class="form-control" value="" size="20">
		        				</div>
		        				<div class="form-group">
		            				<label for="user_pass">Password</label>
		            				<a class="form-sublink" href="https://themes.getbootstrap.com/my-account/lost-password/">Forgot password?</a>
		            				<input type="password" name="password" id="inputPassword" class="form-control" value="" size="20">
		        				</div>
		        				<p class="login-remember"><label><input name="rememberme" type="checkbox" id="rememberme" value="forever"> Remember Me</label></p>
		        				<div class="form-group">
		          					<input type="submit" name="wp-submit" id="wp-submit" class="btn btn-brand btn-block mb-4" value="로그인">
		          					<input type="hidden" name="redirect_to" value="https://themes.getbootstrap.com/my-account/">
		    					</div>
	    					</form>
	    					<form id="bodyForm" action="./body" method="POST">
								<input type="hidden" name="email" id="email">
								<input type="hidden" name="password" id="password">
							</form>
	    					<p class="small text-center text-gray-soft">Don't have an account yet? <a href="./signup">Sign up</a></p>
						</div>
	            	</div>
	        	</div>
	        </section>
        </main>
    
        <!-- #main .site-main -->
		<footer class="footer">
        	<div class="container">
            	<div class="footer__inner">
         	    	<div class="footer__item">
            	    	<form action="//getbootstrap.us13.list-manage.com/subscribe/post?u=e3428dd6b8fda73bc5ba8b6e6&amp;id=198881a019" method="post" id="mc-embedded-subscribe-form"  name="mc-embedded-subscribe-form" target="_blank" novalidate>
                	    	<div class="d-md-flex justify-content-between align-items-center">
                    	    	<div class="form-group">
                        	    	<h5 class="mb-1">Get new themes in your inbox!</h5>
                           	    	<div class="form-text mt-0">New themes or big discounts. Never spam.</div>
                            	</div>
                            	<div id="signup_footer" class="d-flex align-items-start">
	                            	<div class="form-group w-100 mr-2">
		                               	<div style="position: absolute; left: -5000px;" aria-hidden="true">
		                               		<input type="text" name="b_e3428dd6b8fda73bc5ba8b6e6_198881a019" tabindex="-1" value="">
		                               	</div>
		                               	<input id="mce-EMAIL" class="footer__email-input form-control form-control--muted" name="EMAIL" type="email" aria-describedby="footerEmail" placeholder="Email address">
	                           		</div>
									<input class="btn btn-brand" type="submit" value="Subscribe" name="subscibe" id="mc-embedded-subscribe">
                            	</div>
                            </div>
                       </form>
					</div>
					<div class="footer__item d-lg-flex justify-content-lg-between align-items-lg-center">
		                <ul id="menu-footer" class="nav sub-nav footer__sub-nav">
		                	<li id="menu-item-1194" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1194">
		                		<a title="Help Center" href="https://themes.zendesk.com/hc/en-us">Help Center</a>
		                	</li>
							<li id="menu-item-119" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-119">
								<a title="Terms of Service" href="https://themes.getbootstrap.com/terms/">Terms of Service</a>
							</li>
							<li id="menu-item-117" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-117">
								<a title="Licenses" href="https://themes.getbootstrap.com/licenses/">Licenses</a>
							</li>
						</ul>
						<p class="hidden-sm-down d-none d-lg-block">Trying to redownload a theme? Use our <a href="https://themes.getbootstrap.com/redownload/">redownload page.</a></p>
	                </div>
                </div>
            </div>
        </footer>
	</body>
	<script type="text/javascript">
		$("#signinForm").submit(function(){
			console.log("=== 1.signingForm submit event start");
			
			secureProcess();
			
			return false;
		});
		
		function secureProcess() {
			var email = $("#inputEmail").val();
			var password = $("#inputPassword").val();
			var formData = {email:email, password:password};
			console.log(email);
			$.ajax({
			   url : "./encrypt",
			   type : "get",
			   contentType: "application/json",
			   success : function(data, textStatus, jqXHR) {
				   //var publicKey = eval('('+ jqXHR.responseText + ')');
				   var publicKey = data;
				   var encryptedPassword;
				   try {
					   encryptedPassword = WCrypto.rsa.encrypt(publicKey, password);
				   } catch(e) {
					   encryptedPassword = "";
				   }
				   console.log(password);
				   console.log(encryptedPassword);
			       siginProcess(email, encryptedPassword);
			   },
			   error : function(jqXHR, textStatus, errorThrown) {
				   alert("회원정보가 없습니다.");
			   }
			   
			});
		}
		
		function siginProcess(email, password) {
			$.ajax({
				url : "./signin",
				type: "post",
				data: JSON.stringify({email: email, password: password}),
				contentType: "application/json",
				success : function(data, textStatus, jqXHR) {
					console.log("sigin data" + jqXHR.responseText);
					success(data);
				},
				error : function(jqXHR, textStatus, errorThronw) {
					alert("SignIn Error");
				}
			})
		}
		
		function success(jsonData) {
			if(jsonData.success == 'Y') {
				$("#bodyForm").find("#email").val(jsonData.data.email);
				$("#bodyForm").find("#password").val(jsonData.data.password);
				$("#bodyForm").submit();
				// location.href = "/web/body";
			} else {
				alert("아이디 혹은 비밀번호를 잘못입력하셨습니다.");
				
			}
		}
	</script>
</html>