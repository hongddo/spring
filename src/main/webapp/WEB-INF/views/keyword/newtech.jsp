<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
	<head>
		<script src="ojt/web/js/bootstrap.js"></script>
		<link href="ojt/web/css/bootstrap.css" rel="stylesheet">
		<title>Insert title here</title>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	    <meta name="generator" content="Jekyll v3.8.5">
	
    	<!-- Bootstrap core CSS -->
		<link href="ojt/web/css/bootstrap.css" rel="stylesheet" crossorigin="anonymous">
    	<style>
      		.bd-placeholder-img {
        		font-size: 1.125rem;
        		text-anchor: middle;
        		-webkit-user-select: none;
        		-moz-user-select: none;
        		-ms-user-select: none;
        		user-select: none;
      		}

      		@media (min-width: 768px) {
        		.bd-placeholder-img-lg {
          			font-size: 3.5rem;
        		}
      		}

    	</style>
    	<!-- Custom styles for this template -->
    	<link href="ojt/web/css/dashboard/dashboard.css" rel="stylesheet">
	</head>
	
	<body>
		<h1>Welcome</h1>
		<h1>${email}</h1>
    	<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
  			<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">키워드</a>
  			<input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
		  	<ul class="navbar-nav px-3">
		    	<li class="nav-item text-nowrap">
		      		<a class="nav-link" href="ojt/web/main">Sign out</a>
		    	</li>
		  	</ul>
		</nav>

		<div class="container-fluid">
  			<div class="row">
    			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
      				<div class="sidebar-sticky">
        				<ul class="nav flex-column">
          					<li class="nav-item">
            					<a class="nav-link active" href="#">
              						<span data-feather="home"></span>
              						신기술 <span class="sr-only">(current)</span>
            					</a>
          					</li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="file"></span>
		              Orders
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="shopping-cart"></span>
		              Products
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="users"></span>
		              Customers
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="bar-chart-2"></span>
		              Reports
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="layers"></span>
		              Integrations
		            </a>
		          </li>
		        </ul>
		
		        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
		          <span>Saved reports</span>
		          <a class="d-flex align-items-center text-muted" href="#">
		            <span data-feather="plus-circle"></span>
		          </a>
		        </h6>
		        <ul class="nav flex-column mb-2">
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="file-text"></span>
		              Current month
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="file-text"></span>
		              Last quarter
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="file-text"></span>
		              Social engagement
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#">
		              <span data-feather="file-text"></span>
		              Year-end sale
		            </a>
		          </li>
		        </ul>
		      </div>
		    </nav>
		
		    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
		      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		        <h1 class="h2">신기술</h1>
		        <div class="btn-toolbar mb-2 mb-md-0">
		          <div class="btn-group mr-2">
		            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
		            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
		          </div>
		          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
		            <span data-feather="calendar"></span>
		            This week
		          </button>
		        </div>
		      </div>
<!-- 		
		      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
	
		      <h2>Section title</h2>
-->		
		     <section>
		      <div class="table-responsive">
		        <table class="table table-striped table-hover table-fixed" id="keyword-resourceList">
		          <thead>
		            <tr>
		              <th>#</th>
		              <th>Subject</th>
		              <th>Keyword</th>
		              <th>Description</th>
		              <th>Header</th>
		            </tr>
		          </thead>
		          <tbody>
		          </tbody>
		        </table>
		      </div>		     
		     </section>
		     
		      
		    </main>
		  </div>
		</div>
		<script src="/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	    <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
        <script src="/js/feather/feather.min.js"></script>
        <script src="/js/chart/Chart.min.js"></script>
        <script src="/js/dashboard/dashboard.js"></script></body>
       	<script src="/js/jquery-3.3.1.min.js"></script>
        <!-- Init -->
        <script type="text/javascript">
        	$("document").ready(function(){
        		console.log("test");
        	<!--	fncListKeyword(); -->
        	});
        	
        	function fncListKeyword() {
        		var param = "param=test";
        		
        		var request = $.ajax({
        			url:'/json/keylist',
        			type: "POST",
        			data: param,
        			dataType: "json",
        			contentType: "application/json"
        		}).done(function(data) {
        			console.log("done");
        			var keywordList = data.ajaxtags;
        			
        			$("#keyword-resourceList > tbody").empty();
        			if(keywordList.length == 0) {
        				$("#keyword-resourceList > tbody").append("<tr><td>There is no data.</td></tr>");
        			} else {
        				for(var i=0 ; i<keywordList.length ; i++) {
	        				$("#keyword-resourceList > tbody").append("<tr><th scope='row'>"+i+"</td><td>"+keywordList[i].content+"</td><td>"+keywordList[i].keyword+"</td><td>"+keywordList[i].definition+"</td><td>"+keywordList[i].description+"</td></tr>");
        					
        				}
        			}
        		}).fail(function(data){
        			console.log("error");
        		});
        	}
        </script>
</html>