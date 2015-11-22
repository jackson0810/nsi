<cfsilent>
	<cfquery name="newsItems" datasource="nsiwebdata09">
		SELECT		TOP 5 newsID, title, shortDesc, longDesc, dateUpdated, releaseDate
		FROM		corpNews
		ORDER BY	releaseDate	DESC
	</cfquery>
	
	<cfquery name="careerItems" datasource="nsiwebdata09">
		SELECT		TOP 5 jobID, title, description, datePosted, dateUpdated, jobStatus
		FROM		jobData
		WHERE jobStatus = 1
		ORDER BY	dateUpdated	DESC
	</cfquery>
		
	<cfset message = "" />
</cfsilent>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Home</title>
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
				<cfinclude template="/views/layout/new_navigation.cfm"/>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">
				<cfoutput>
					

<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3">&nbsp;</td>
	</tr>
	<tr>
		<td width="70%" style="padding: 0 5px 0 5px;" valign="top">
			<h2>Quality, Integrity, and Victory</h2>
			<p>Naval Systems, Inc. (NSI), is a Veteran Owned Small Business supporting the Naval Air Systems Command from locations near Patuxent River, Maryland; Cherry Point, North
				Carolina; Jacksonville, Florida; and China Lake, California.
			</p>
			<p>Our main office is located in Lexington Park, Maryland; just minutes from NAS Patuxent River. NSI has experienced strong growth since our founding and has developed a reputation among clients for superior quality, cost and schedule performance; providing innovative solutions to difficult problems; and demonstrating uncompromising devotion to the ultimate customer: our Navy and Marine Corps warfighters.</p>
			<img src="/images/thumbs/cvn-70-ea6b_thumb.jpg" height="125" />&nbsp;
			<img src="/images/thumbs/AIR_UH-1Y_and_AH-1Z_Photo_lg_thumb.jpg" height="125" />&nbsp;
			<img src="/images/thumbs/p335_thumb.jpg" height="125" />
			<br>
			<p><br/>NSI's outstanding value to our customers results from a great depth of knowledge in engineering, logistics, and management disciplines by the leadership team and key employees, a flat management structure with an extremely efficient business model, and many years of cumulative hands-on experience in Naval Aviation operations and depot level support. The NSI culture has been built upon the core values of Quality, Integrity, and Victory.</p>
                        <br>
<br>
<br>
<br>
<br>
                     <a href= "http://www.ruag.com/self-protection/Self_Protection/MISSIM"><b>RUAG MISSIM</b></a>
		</td>
		<td width="1%" style="border-left: 1px solid">&nbsp;</td>
		<td valign="top" align="left">
			<cfoutput>
			<!---<div>
				<h2>Special Announcement</h2>
				<span style="padding-left:30px;">
				<img src="/images/golf2010.gif" alt="NSI/STAR 98.3 GOLF TOURNAMENT 2010" border="0" /></a>
				</span>
			</div>
			--->
			<br/>
			<div id="home_news">
				<h2>Company News</h2>
				<!---DO NOT REMOVE THIS LINE OF CODE--->
				<cfinclude template="/views/layout/corpNews.cfm" />
				<!---END--->
			</div>
			</cfoutput>
			<div id="home_jobs">
				<div id="home_jobs">
				<h2>Career Opportunities</h2>
				<!---DO NOT REMOVE THIS LINE OF CODE--->
				<cfinclude template="/views/layout/jobs.cfm" />
				<!---END--->
				</div>
			</div>
			</td>
		</tr>
</table>
<!---END EDITABLE REGION--->
				</cfoutput>
			</td>
		</tr>
		<tr>
			<td colspan="4" class="footer2">
				<div id="footer_address">
						Naval Systems, Inc.<br>
						21491 Great Mills Road, Suite 100<br>
						Lexington Park, MD 20653<br>
						Phone: (301) 737-1911<br>
						Fax: (301) 737-1940					
					</div>
				
				
				<div id="footer_copyright">
					&copy; 2014 Naval Systems, Inc.
				</div>
			</td>
		</tr>
	</table>
	<br/>
	<cfoutput>
		<cfinclude template="/views/layout/new_footer.cfm" />
	</cfoutput>
</body>
</html>