<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset={$charset}" />
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {if $systemurl}<base href="{$systemurl}" />
    {/if}<script type="text/javascript" src="includes/jscript/jquery.js"></script>
    {if $livehelpjs}{$livehelpjs}
    {/if}
    <link href="templates/{$template}/css/bootstrap.css" rel="stylesheet">
    <link href="templates/{$template}/css/whmcs.css" rel="stylesheet">

    <script src="templates/{$template}/js/whmcs.js"></script>

    {$headoutput}
<style>
.bar-top{margin:0;border-width:5px}
a.bt-nav-close { position: absolute; right:10px; top:10px; font-size: 18px; color:#fff; z-index: 99; display: none; }

a.bt-nav-close:hover { opacity: 0.75; color:#fff }

.bar-top{margin:0;border-width:5px}

header{margin:50px auto 30px auto;padding-bottom:30px;min-height:90px;border-bottom:1px solid #ebebeb;width:961px; position: relative; z-index: 8;}

header nav.open { display: block; }

a.menu-mobile{display:none}

.body-overlay.show{display: none;}

.main{width:961px;margin:0 auto}

.slider-folio{position:relative;z-index:3}

header.fixed {position: fixed;}

header .logo{display:block;padding-left:15px;float:left;position: relative;z-index: 1; font-family: 'Droid Serif',serif; font-style: italic; font-size: 30px; line-height: 50px;}



header nav{float:right;margin-top:20px;display:block; font-style: normal;}

header nav li{float:left;display:block;background:url(img/nav-header-bullet.png) no-repeat right 8px;margin:0 0 0 4px;padding:0 6px 0 0;line-height:100%;position:relative;z-index:60}

header nav li a,header nav li a:visited{display:block;text-decoration:none;color:#374452;font-size:14px;text-transform:uppercase;padding:0 11px 10px 11px}

header nav li:hover{padding:0 6px 0 0}

header nav li.subnav{background:url(img/nav-header-bullet-subnav.png) no-repeat right 8px}

header nav li:hover a,header nav li:hover a, header nav li a.active, header nav li.current_page_item a, header nav li.current_page_parent a{border-radius:3px;color:#fff;padding:15px 11px 30px 11px;margin:-15px 0 0 0}



header nav li:hover ul{display:block;opacity:1;top:20px;height:auto;left:15px}

header nav li ul{display:none;position:absolute;background-color:#fff;box-shadow:0 2px 4px 0 #000;box-shadow:0 5px 4px 0 rgba(0,0,0,0.13);padding:0 15px 10px 15px;/*z-index:9;*/opacity:0;left:-30px;top:20px}

header nav li ul li,header nav li:hover ul li{float:none;padding:0;margin:0;background:0}

header nav li ul li a,header nav li:hover ul li a{padding:0;line-height:100%;background:0;margin:0;color:#6e6e6e;text-transform:none;font-weight:600;font-style:italic;font-size:13px;border-bottom:1px solid #ececec;padding:13px 50px 13px 0;white-space:nowrap;border-radius:0;min-width:125px;}

header nav li:hover ul li a:hover:before, header nav li ul li.current_page_item a:before{content:"\2014 \00a0 "}

header nav li ul li.current_page_item a {border-color:#000}



header nav li ul li, header nav li:hover ul li {position: relative; z-index: auto;}



header nav li:hover ul li ul {top:auto;bottom:-51px;left:0px;z-index: 1;display: none;opacity: 0;}

header nav li ul li:hover ul {display: block;opacity: 1;}



header nav ul > li.current_page_item, header nav ul > li.current_page_parent {z-index: 1;}

header nav ul > li > ul {z-index: 2;}
</style>
  </head>

  <body>

{$headeroutput}
<div id="whmcsheader">
    <div class="whmcscontainer">
		<div id="whmcstxtlogo"><a href="index.php">{$companyname}</a></div>
		<div id="whmcsimglogo">
        <!-- 
        <a href="index.php"><img src="templates/{$template}/img/whmcslogo.png" alt="{$companyname}" /></a>
        -->
        </div>
    </div>
</div>

  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <div class="nav-collapse">
        <ul class="nav">
			<li><a href="http://www.jerwinpastoral.com">{$LANG.hometitle}</a></li>
		</ul>
		<ul class="nav">
			<li><a href="{if $loggedin}clientarea{else}index{/if}.php">Dashboard</a></li>
		</ul>
{if $loggedin}
    <ul class="nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navservices}&nbsp;<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="clientarea.php?action=products">{$LANG.clientareanavservices}</a></li>
            {if $condlinks.pmaddon}<li><a href="index.php?m=project_management">{$LANG.clientareaprojects}</a></li>{/if}
            <li class="divider"></li>
            <li><a href="cart.php">{$LANG.navservicesorder}</a></li>
            <li><a href="cart.php?gid=addons">{$LANG.clientareaviewaddons}</a></li>
          </ul>
        </li>
      </ul>


		  {if $condlinks.domainreg || $condlinks.domaintrans}<ul class="nav">
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navdomains}&nbsp;<b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="clientarea.php?action=domains">{$LANG.clientareanavdomains}</a></li>
				<li class="divider"></li>
				<li><a href="cart.php?gid=renewals">{$LANG.navrenewdomains}</a></li>
				{if $condlinks.domainreg}<li><a href="cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>{/if}
				{if $condlinks.domaintrans}<li><a href="cart.php?a=add&domain=transfer">{$LANG.navtransferdomain}</a></li>{/if}
                {if $enomnewtldsenabled}<li><a href="index.php?m=enomnewtlds">Preregister New TLDs</a></li>{/if}
				<li class="divider"></li>
				<li><a href="domainchecker.php">{$LANG.navwhoislookup}</a></li>
			  </ul>
			</li>
		  </ul>{/if}

		  <ul class="nav">
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navbilling}&nbsp;<b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="clientarea.php?action=invoices">{$LANG.invoices}</a></li>
				<li><a href="clientarea.php?action=quotes">{$LANG.quotestitle}</a></li>
				<li class="divider"></li>
				{if $condlinks.addfunds}<li><a href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>{/if}
				{if $condlinks.masspay}<li><a href="clientarea.php?action=masspay&all=true">{$LANG.masspaytitle}</a></li>{/if}
				{if $condlinks.updatecc}<li><a href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>{/if}
			  </ul>
			</li>
		  </ul>

		  <ul class="nav">
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navsupport}&nbsp;<b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="supporttickets.php">{$LANG.navtickets}</a></li>
				<li><a href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>
				<li><a href="downloads.php">{$LANG.downloadstitle}</a></li>
				<li><a href="serverstatus.php">{$LANG.networkstatustitle}</a></li>
			  </ul>
			</li>
		  </ul>

		  <ul class="nav">
			<li><a href="submitticket.php">{$LANG.navopenticket}</a></li>
		  </ul>

		  {if $condlinks.affiliates}<ul class="nav">
            <li><a href="affiliates.php">{$LANG.affiliatestitle}</a></li>
		  </ul>{/if}

		  <ul class="nav pull-right">
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$LANG.hello}, {$loggedinuser.firstname}!&nbsp;<b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="clientarea.php?action=details">{$LANG.editaccountdetails}</a></li>
				{if $condlinks.updatecc}<li><a href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>{/if}
				<li><a href="clientarea.php?action=contacts">{$LANG.clientareanavcontacts}</a></li>
				{if $condlinks.addfunds}<li><a href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>{/if}
				<li><a href="clientarea.php?action=emails">{$LANG.navemailssent}</a></li>
				<li><a href="clientarea.php?action=changepw">{$LANG.clientareanavchangepw}</a></li>
				<li class="divider"></li>
				<li><a href="logout.php">{$LANG.logouttitle}</a></li>
			  </ul>
			</li>
		  </ul>
{else}
		  <ul class="nav">
			<li><a href="announcements.php">{$LANG.announcementstitle}</a></li>
		  </ul>
          
		  <ul class="nav">
			<li><a href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>
		  </ul>
          
		  <ul class="nav">
			<li><a href="serverstatus.php">{$LANG.networkstatustitle}</a></li>
		  </ul>
          
		  <ul class="nav">
			<li><a href="affiliates.php">{$LANG.affiliatestitle}</a></li>
		  </ul>
		<!--
		  <ul class="nav">
			<li><a href="contact.php">{$LANG.contactus}</a></li>
		  </ul>
		-->
		  <ul class="nav pull-right">
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.account}&nbsp;<b class="caret"></b></a>
			  <ul class="dropdown-menu">
				<li><a href="clientarea.php">{$LANG.login}</a></li>
				<li><a href="register.php">{$LANG.register}</a></li>
				<li class="divider"></li>
				<li><a href="pwreset.php">{$LANG.forgotpw}</a></li>
			  </ul>
			</li>
		  </ul>
{/if}

        </div><!-- /.nav-collapse -->
      </div>
    </div><!-- /navbar-inner -->
  </div><!-- /navbar -->


<div class="whmcscontainer">
    <div class="contentpadded">

{if $pagetitle eq $LANG.carttitle}<div id="whmcsorderfrm">{/if}
