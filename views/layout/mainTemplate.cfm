<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>#getProperty("mainPageTitle")# - #event.getArg("pageTitle")#</title>
 		<link rel="Shortcut Icon" href="/favicon.ico" />
		<link rel="icon" href="/favicon.ico" type="image/x-icon">
		<link rel="alternate" type="application/rss+xml" title="RSS" href="/views/newsFeed.rss" />
		
		<link rel="stylesheet" media="screen" href="/css/template.css" />		
		<script type="text/javascript" src="/scripts/jquery/jquery-1.3.2.min.js"></script>
		
		<!--JQuery Menu-->
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.jdMenu.js"></script>
		<link type="text/css" rel="stylesheet" href="/scripts/jquery/jdMenu/jquery.jdMenu.css"  />
		
		<!-- table sorting and paging -->
		<script type="text/javascript" src="/scripts/jquery/tableSorter/jquery.tablesorter.min.js"></script>
		<link rel="stylesheet" href="/scripts/jquery/tableSorter/themes/blue/style.css" type="text/css" media="screen" />
	
		<!--Table Highlighting-->
		<script type="text/javascript" language="javascript" src="/scripts/jquery/colorize/colorize.js" ></script>
		 
		<!--// load the qForm JavaScript API //-->
		<script src="/scripts/qForms/lib/qforms.js"></script>
		<script language="JavaScript">
			qFormAPI.setLibraryPath("/scripts/qForms/lib/");
			qFormAPI.include("validation");
			qFormAPI.include("functions", null, "12");
		</script>
		<!--// [ end ] initialize all extension libraries  //-->
		
		<script type="text/javascript">
		$(document).ready(function() {
			$("##corpNewsList")
				.tablesorter({widthFixed: true, widgets: ['zebra'],headers: {0: {sorter:false}, 9: {sorter:false}}})
						
    	});
		</script>
		</cfoutput>
</head>
<body>
	<table class="wrapper" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td valign="middle"><img src="/images/logo.gif"></td>
			<!---Deleted Image<cfoutput><td><a href="/views/documents/GolfTourneyFlyer2013.pdf" target="_blank"><img src="/images/NSIGolfTourney.png" border="0" width="125"></a></td></cfoutput>--->
			<td align="right" valign="middle" class="warfighter">
				<em>Supporting the Warfighter!</em>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<cfoutput>
				<div>
					<ul class="jd_menu">
						<li><a href="#BuildURL('showHome')#">Home</a></li>
						<li>
							<a href="#BuildURL('showAbout')#">About Us</a>
						</li>
						<li <!--- class="accessible" --->>
							<a href="#BuildURL('showCapabilities')#">Capabilities</a>
						</li>
						<li><a href="#BuildURL('showClients')#">Clients/Partners</a></li>
						<li><a href="#BuildURL('showChina')#">China Lake</a></li>
						<li>
							<a href="#BuildURL('showMRO')#">MRO&amp;L</a>
						</li>
                        <li><a href="#BuildURl('showCalibration')#">Calibration Services</a></li>
						<li><a href="#BuildURL('showNews')#">News</a></li>
						<li><a href="#BuildURL('showContracts')#">Contract Vehicles</a></li>
						<li><a href="#BuildURL('showCareers')#">Career Opportunities</a></li>
						<li><a href="#BuildURL('showContacts')#">Contact Us</a></li>
					</ul>	
				</div>
				</cfoutput>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">
				<cfoutput>
					#event.getArg("content")#
				</cfoutput>
			</td>
		</tr>
		<tr>
			<td colspan="4" class="footer2">
				<cfif event.isArgDefined('go') AND findNocase('mro',event.getArg('go'))>
					<div id="footer_address">
						Naval Systems, Inc. MRO&L<br>
						8551-1 Westside Industrial Drive<br>
						Jacksonville, FL 32219-3273<br>
						Phone: (904) 248-4300<br>
						Fax: (904) 248-4301				
					</div>
				<cfelseif event.isArgDefined('go') AND findNocase('Calibration',event.getArg('go'))>
					<div id="footer_address">
						Naval Systems, Inc.<br>
						8551-1 Westside Industrial Dr.<br>
						Jacksonville, Florida, 32219<br>
						Phone: (904) 248-4325<br>
						Fax: (904) 248-4301<br>
						Business Hours: 6:00 am-3:00 pm EST<br/>
					</div>
				<cfelse>
					<div id="footer_address">
						Naval Systems, Inc.<br>
						21491 Great Mills Road, Suite 100<br>
						Lexington Park, MD 20653<br>
						Phone: (301) 737-1911<br>
						Fax: (301) 737-1940					
					</div>
				</cfif>
				
				<div id="footer_copyright">
					<cfif event.isArgDefined('go') AND findNocase('Calibration',event.getArg('go'))><br/></cfif>&copy; 2014 Naval Systems, Inc.
				</div>
			</td>
		</tr>
	</table>
	<br/>
	<cfoutput>
	<div class="footer">
		<a href="#BuildURL('showHome')#">Home</a> | 
		<a href="#BuildURL('showAbout')#">About Us</a> | 
		<a href="#BuildURL('showNews')#">News</a> | 
		<a href="#BuildURL('showCareers')#">Career Opportunities</a> | 
		<a href="#BuildURL('showContacts')#">Contact Us</a> | 
		<a href="#BuildURL('admin.showAdmin')#">Administrative</a>
        <br/>
                <a href="https://www.facebook.com/ed.rule.31?fref=ts">Facebook</a> |
                <a href="http://www.linkedin.com/pub/dan-seifert/37/762/b45">LinkedIN</a>
	</div>
	</cfoutput>
</body>
</html>