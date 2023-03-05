<%-- 
    Document   : DashboardHome
    Created on : Mar 5, 2023, 9:19:02 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="..\assets\images\logo-black.png">
<title>TTDNA Dashboard</title>
<link rel="stylesheet" type="text/css"
	href="..\assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
<link rel="stylesheet" type="text/css"
	href="..\assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="..\assets\lib\jquery.vectormap\jquery-jvectormap-1.2.2.css">
<link rel="stylesheet" type="text/css"
	href="..\assets\lib\jqvmap\jqvmap.min.css">
<link rel="stylesheet" type="text/css"
	href="..\assets\lib\datetimepicker\css\bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="..\assets\css\app.css" type="text/css">
</head>
<body>
	<div class="be-wrapper be-fixed-sidebar">
		<nav class="navbar navbar-expand fixed-top be-top-header">
			<div class="container-fluid">
				<!-- <div class="be-navbar-header"><a class="navbar-brand" href="index.html"></a>
          </div> -->
				<div class="page-title">
					<span>TN Dashboard</span>
				</div>
				<div class="be-right-navbar">
					<ul class="nav navbar-nav float-right be-user-nav">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							role="button" aria-expanded="false"> <img
								src="..\assets\images\avatar.png" alt="Avatar"><span
								class="user-name">Admin</span></a>
							<div class="dropdown-menu" role="menu">
								<div class="user-info">
									<div class="user-name">Admin</div>
									<div class="user-position online">Available</div>
								</div>
								<a class="dropdown-item" href="pages-profile.html"><span
									class="icon mdi mdi-face"></span>Account</a><a
									class="dropdown-item" href="#"> <span
									class="icon mdi mdi-settings"></span>Settings
								</a><a class="dropdown-item" href="logout-admin"> <span
									class="icon mdi mdi-power"></span>Logout
								</a>
							</div>
							</li>
					</ul>
					<ul class="nav navbar-nav float-right be-icons-nav">
						<li class="nav-item dropdown"><a
							class="nav-link be-toggle-right-sidebar" href="#" role="button"
							aria-expanded="false"><span class="icon mdi mdi-settings"></span></a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							role="button" aria-expanded="false"><span
								class="icon mdi mdi-notifications"></span><span
								class="indicator"></span></a>
							<ul class="dropdown-menu be-notifications">
								<li>
									<div class="title">
										Notifications<span class="badge badge-pill">3</span>
									</div>
									<div class="list">
										<div class="be-scroller-notifications">
											<div class="content">
												<ul>
													<li class="notification notification-unread"><a
														href="#">
															<div class="image">
																<img src="..\assets\images\avatar2.png" alt="Avatar">
															</div>
															<div class="notification-info">
																<div class="text">
																	<span class="user-name">Jessica Caruso</span> accepted
																	your invitation to join the team.
																</div>
																<span class="date">2 min ago</span>
															</div>
													</a></li>
													<li class="notification"><a href="#">
															<div class="image">
																<img src="..\assets\images\avatar3.png" alt="Avatar">
															</div>
															<div class="notification-info">
																<div class="text">
																	<span class="user-name">Joel King</span> is now
																	following you
																</div>
																<span class="date">2 days ago</span>
															</div>
													</a></li>
													<li class="notification"><a href="#">
															<div class="image">
																<img src="..\assets\images\avatar4.png" alt="Avatar">
															</div>
															<div class="notification-info">
																<div class="text">
																	<span class="user-name">John Doe</span> is watching
																	your main repository
																</div>
																<span class="date">2 days ago</span>
															</div>
													</a></li>
													<li class="notification"><a href="#">
															<div class="image">
																<img src="..\assets\images\avatar5.png" alt="Avatar">
															</div>
															<div class="notification-info">
																<span class="text"><span class="user-name">Emily
																		Carter</span> is now following you</span><span class="date">5
																	days ago</span>
															</div>
													</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="footer">
										<a href="#">View all notifications</a>
									</div>
								</li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							role="button" aria-expanded="false"><span
								class="icon mdi mdi-apps"></span></a>
							<ul class="dropdown-menu be-connections">
								<li>
									<div class="list">
										<div class="content">
											<div class="row">
												<div class="col">
													<a class="connection-item" href="#"><img
														src="..\assets\images\github.png" alt="Github"><span>GitHub</span></a>
												</div>
												<div class="col">
													<a class="connection-item" href="#"><img
														src=".\assets\images\bitbucket.png" alt="Bitbucket"><span>Bitbucket</span></a>
												</div>
												<div class="col">
													<a class="connection-item" href="#"><img
														src=".\assets\images\slack.png" alt="Slack"><span>Slack</span></a>
												</div>
											</div>
											<div class="row">
												<div class="col">
													<a class="connection-item" href="#"><img
														src="..\assets\images\dribbble.png" alt="Dribbble"><span>Dribbble</span></a>
												</div>
												<div class="col">
													<a class="connection-item" href="#"><img
														src="..\assets\images\mail_chimp.png" alt="Mail Chimp"><span>Mail
															Chimp</span></a>
												</div>
												<div class="col">
													<a class="connection-item" href="#"><img
														src="..\assets\images\dropbox.png" alt="Dropbox"><span>Dropbox</span></a>
												</div>
											</div>
										</div>
									</div>
									<div class="footer">
										<a href="#">More</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="be-left-sidebar">
			<div class="left-sidebar-wrapper">
				<a class="left-sidebar-toggle" href="#">Dashboard</a>
				<div class="left-sidebar-spacer">
					<div class="left-sidebar-scroll">
						<div class="left-sidebar-content">
							<ul class="sidebar-elements">
								<li class="divider">Menu</li>
								<li class="active"><a href="dashboard-home"><i
										class="icon mdi mdi-home"></i><span>Dashboard</span></a></li>
								<li class="parent"><a href="#"><i
										class="icon mdi mdi-face"></i><span>Admin Manager</span></a>
									<ul class="sub-menu">
										<li><a href="list-book"></span>View All Book</a></li></li>
								<li><a href="add-book">Add Book</a></li>
							</ul>
							</li>
							<li class="parent"><a href="#"><i
									class="icon mdi mdi-border-all fa-solid fa-user"></i><span>Users
										Manager</span></a>
								<ul class="sub-menu">
								<li><a href="list-user">View All Users</a></li></li>
							</ul>
							</li>
							<li class="divider">Features</li>
							<li class="parent"><a href="#"><i
									class="icon mdi mdi-inbox"></i><span>Email</span></a>
								<ul class="sub-menu">
									<li><a href="email-inbox.html">Inbox</a></li>
									<li><a href="email-read.html">Email Detail</a></li>
									<li><a href="email-compose.html">Email Compose</a></li>
								</ul></li>
							<li class="parent"><a href="#"><i
									class="icon mdi mdi-pin"></i><span>Maps</span></a>
								<ul class="sub-menu">
									<li><a href="maps-google.html">Google Maps</a></li>
									<li><a href="maps-vector.html">Vector Maps</a></li>
								</ul></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="be-content">
			<div class="main-content container-fluid">
				<div class="row">
					<div class="col-12 col-lg-6 col-xl-3">
						<div class="widget widget-tile">
							<div class="chart sparkline" id="spark1"></div>
							<div class="data-info">
								<div class="desc">Total users</div>
								<div class="value">
									<span class="indicator indicator-equal mdi mdi-chevron-right"></span><span
										class="number" data-toggle="counter" data-end="${userSize}">0</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-6 col-xl-3">
						<div class="widget widget-tile">
							<div class="chart sparkline" id="spark2"></div>
							<div class="data-info">
								<div class="desc">Current user</div>
								<div class="value">
									<span class="indicator indicator-positive mdi mdi-chevron-up"></span><span
										class="number" data-toggle="counter" data-end="${userSize}"
										>0</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-6 col-xl-3">
						<div class="widget widget-tile">
							<div class="chart sparkline" id="spark3"></div>
							<div class="data-info">
								<div class="desc">Total categories</div>
								<div class="value">
									<span class="indicator indicator-positive mdi mdi-chevron-up"></span><span
										class="number" data-toggle="counter" data-end="${totalCate}">0</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-6 col-xl-3">
						<div class="widget widget-tile">
							<div class="chart sparkline" id="spark4"></div>
							<div class="data-info">
								<div class="desc">Total books</div>
								<div class="value">
									<span class="indicator indicator-equal mdi mdi-chevron-right"></span><span
										class="number" data-toggle="counter" data-end="${fn:length(allBook)}">0</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-lg-6">
						<div class="card card-table">
							<div class="card-header">								
								<div class="title text-center" style="color: red;font-weight: bold;">Newest books</div>
							</div>
							<div class="card-body table-responsive">
								<table class="table table-striped table-borderless">
									<thead>
										<tr>
											<th style="width: 40%;">Book Title</th>
											<th style="width: 20%;">Author</th>
											<th style="width: 20%;">Publisher</th>
											<th style="width: 15%;">Category</th>
											<th class="actions" style="width: 5%;"></th>
										</tr>
									</thead>
									<tbody class="no-border-x">
										<c:forEach items="${newBook}" var="n">
											<tr>
												<td>${n.bookTitle}</td>
												<td>${n.author.authorName}</td>
												<td>${n.publisher.publisherName}</td>
												<td>${n.category.categoryName}</td>
												<td class="actions"><a class="icon" href="${link}?id=${n.bookId}"><i
													class="mdi mdi-plus-circle-o"></i></a></td>
											</tr>	
										</c:forEach>								
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-6">
						<div class="card card-table">
							<div class="card-header">								
								<div class="title text-center" style="color: red;font-weight: bold;">Most read books</div>
							</div>
							<div class="card-body table-responsive">
								<table class="table table-striped table-borderless">
									<thead>
										<tr>
											<th style="width: 40%;">Book Title</th>
											<th style="width: 20%;">Author</th>
											<th style="width: 20%;">Publisher</th>
											<th style="width: 15%;">Read Count</th>
											<th class="actions" style="width: 5%;"></th>
										</tr>
									</thead>
									<tbody class="no-border-x">
										<c:forEach items="${popularBook}" var="p">
											<tr>
												<td>${p.bookTitle}</td>
												<td>${p.author.authorName}</td>
												<td>${p.publisher.publisherName}</td>
												<td>${p.readCount}</td>
												<td class="actions"><a class="icon" href="${link}?id=${p.bookId}"><i
													class="mdi mdi-plus-circle-o"></i></a></td>
											</tr>	
										</c:forEach>								
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="..\assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
	<script
		src="..\assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js"
		type="text/javascript"></script>
	<script src="..\assets\js\app.js" type="text/javascript"></script>
	<script src="..\assets\lib\jquery-flot\jquery.flot.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery-flot\jquery.flot.pie.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery-flot\jquery.flot.time.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery-flot\jquery.flot.resize.js"
		type="text/javascript"></script>
	<script
		src="..\assets\lib\jquery-flot\plugins\jquery.flot.orderBars.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery-flot\plugins\curvedLines.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery-flot\plugins\jquery.flot.tooltip.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery.sparkline\jquery.sparkline.min.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\countup\countUp.min.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jquery-ui\jquery-ui.min.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jqvmap\jquery.vmap.min.js"
		type="text/javascript"></script>
	<script src="..\assets\lib\jqvmap\maps\jquery.vmap.world.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//-initialize the javascript
			App.init();
			App.dashboard();

		});
	</script>
</body>
</html>