<!DOCTYPE html>
<html dir="{DOCDIR}" lang="{LANGUAGE}">
	<head>
		<title>{PAGE_TITLE}</title>
		<meta charset="utf-8">
		<meta name="description" content="{DESCRIPTION}">
		<meta name="keywords" content="{KEYWORDS}">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap-theme.min.css">
		<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/style.css">
		<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/flipclock.css">
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.2/css/font-awesome.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/jquery.lightbox.css" media="screen">
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/base/jquery-ui.css" />
		<link rel="stylesheet" type="text/css" href="{INCURL}inc/calendar.css">

		<link rel="alternate" type="application/rss+xml" title="{L_924}" href="{SITEURL}rss.php?feed=1">
		<link rel="alternate" type="application/rss+xml" title="{L_925}" href="{SITEURL}rss.php?feed=2">
		<link rel="alternate" type="application/rss+xml" title="{L_926}" href="{SITEURL}rss.php?feed=3">
		<link rel="alternate" type="application/rss+xml" title="{L_927}" href="{SITEURL}rss.php?feed=4">
		<link rel="alternate" type="application/rss+xml" title="{L_928}" href="{SITEURL}rss.php?feed=5">
		<link rel="alternate" type="application/rss+xml" title="{L_929}" href="{SITEURL}rss.php?feed=6">
		<link rel="alternate" type="application/rss+xml" title="{L_930}" href="{SITEURL}rss.php?feed=7">
		<link rel="alternate" type="application/rss+xml" title="{L_931}" href="{SITEURL}rss.php?feed=8">

		<script type="text/javascript" src="{INCURL}loader.php?js={JSFILES}"></script>
	<!-- IF LOADCKEDITOR -->
		<script type="text/javascript" src="{INCURL}ckeditor/ckeditor.js"></script>
	<!-- ENDIF -->
		<script type="text/javascript" src="{INCURL}themes/{THEME}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="{INCURL}themes/{THEME}/js/flipclock/libs/prefixfree.min.js"></script>
		<script type="text/javascript" src="{INCURL}themes/{THEME}/js/flipclock/flipclock.min.js"></script>
		<script type="text/javascript" src="{INCURL}themes/{THEME}/js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="{INCURL}themes/{THEME}/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<!-- IF B_REALTIMECLOCK -->
		<script type="text/javascript" src="{SITEURL}/js/Realdisplaytime.js"></script>
	<!-- ENDIF -->
		
		<script type="text/javascript">
			$(document).ready(function() {
				$('a.new-window').click(function(){
					var posY = ($(window).height()-550)/2;
						var posX = ($(window).width())/2;
					window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX="+posX+",screenY="+posY+",status=0,menubar=0,width=550,height=550");
					return false;
				});
				var currenttime = '{ACTUALDATE}';
				var serverdate = new Date(currenttime);
				function padlength(what){
					var output=(what.toString().length==1)? "0"+what : what;
						return output;
				}
				function displaytime(){
					serverdate.setSeconds(serverdate.getSeconds()+1)
						var timestring=padlength(serverdate.getHours())+":"+padlength(serverdate.getMinutes())+":"+padlength(serverdate.getSeconds());
					$("#servertime").html(timestring);
				}
				setInterval(displaytime, 1000);
				$(function() {
					$('#gallery a').lightBox();
				});
			});
		</script>
	</head>
	<body>
	<div class="container">
		<div class="row">
			<div class="visible-xs visible-sm"><!-- INCLUDE mobile_nav.tpl --></div>
			<nav class="navbar navbar-default navbar-static-top hidden-xs" role="navigation">
				<div class="topnav">
					<div class="col-lg-3">
						<ul class="nav navbar-nav">
						<!-- IF B_LOGGED_IN -->
							<li><i class="nav-text">{L_HELLO}</i></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">{YOURUSERNAME}<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="{SITEURL}user_menu.php?cptab=summary">{L_25_0081}</a></li>
									<li><a href="{SSLURL}logout.php?">{L_245}</a></li>
								</ul>
							</li>
						<!-- ELSE -->
							<li><i class="nav-text">{L_HELLO}</i></li>
							<li><a href="{SSLURL}user_login.php">{L_052}</a></li>
							<li><i class="nav-text">{L_OR}</i></li>
							<li><a href="{SSLURL}register.php">{L_235}</a></li>
						<!-- ENDIF -->						
						</ul>
					</div>
					<div class="col-lg-9">
						<ul class="nav navbar-nav pull-right">
						<!-- IF B_CAN_SELL -->
							<li><a href="{SITEURL}select_category.php?">{L_SELL_AN_ITEM}</a></li>
						<!-- ENDIF -->
							<li><a href="{SITEURL}help.php" alt="faqs" class="new-window">{L_148}</a></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="visible-xs visible-sm"><!-- INCLUDE mobile_search.tpl --></div>
			
			<div class="toolbar">
				<div class="col-lg-12 col-md-12 col-sm-12 hidden-xs hidden-sm">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 visible-lg visible-md visible-sm">
							<a href="{SITEURL}index.php?"><img src="{INCURL}themes/{THEME}/images/logo.png" class="img-responsive" alt="Responsive image"></a>
						</div>
						<div class="col-lg-9 col-md-9 col-sm-9">
							<form class="form-inline form-toolbar" name="search" action="{SITEURL}search.php" method="get" role="form">
								<div class="form-group">
									<input class="form-control" type="search" name="q" size="50" value="{Q}" placeholder="{L_861}">
								</div>
								<div class="form-group">
									 {SELECTION_BOX}
								</div>	
								<div class="form-group">
									<input class="form-control" type="submit" name="sub" value="{L_399}" placeholder="{L_399}">
								</div>
								<a href="{SITEURL}adsearch.php">  {L_464}</a>
							</form>
						</div>
					</div>
				</div>
			</div>
