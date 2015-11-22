<cfsilent>
	<cfif isDefined('url.jobid')>
		<cfset jobID = url.jobID />
	<cfelse>
		<cfset jobID = 0 />
	</cfif>
	<cfquery name="jobsData" datasource="nsiwebdata09">
		SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
		FROM		jobData
		WHERE		jobStatus=<cfqueryparam cfsqltype="cf_sql_integer" value="1" />
		ORDER BY	dateUpdated DESC
	</cfquery>
	
	<!---Get the jobs data item.  If the jid(jobsID) was not passed in then get all job items.--->
	<cfquery name="jobData" dbtype="query">
		SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
		FROM		jobsData
		WHERE		jobStatus=<cfqueryparam cfsqltype="cf_sql_integer" value="1" />
		<cfif jobID NEQ 0>
			AND		jobID = <cfqueryparam cfsqltype="cf_sql_integer" value="#jobID#" />
		</cfif>
		ORDER BY	dateUpdated DESC
	</cfquery>
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
<!---BEGIN EDITABLE REGION--->
<script type="text/javascript">
		document.title = "Naval Systems, Inc. - Career Opportunities";
	</script>
</div>
<!---If this is a single job, display the following information.--->
<table border="0" width="99%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" align="center" bgcolor="##6699CC">
			<img src="/images/thumbs/0430v22_thumb.jpg" width="125" /><br/><br/>
			<img src="/images/thumbs/H1_Flight_thumb.jpg" width="125" /><br/><br/>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Career Opportunities</h1>
			<p>
				<strong>To Apply At NSI</strong><br/>
Welcome to our employment section! Here you can view our current job openings and apply for positions online.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to apply for a position by clicking on a position below.  If you do not see a position below that you are interested in, but still wish to send us your resume, please email it to <a href="mailto:employment@n-s-i.us" style="color: ##0066CC">employment@n-s-i.us</a>. Quality, Integrity, Teamwork, Success - that's NSI!</br></br>
 
NSI promotes equal employment opportunity to all employees and applicants regardless of race, color, religion, gender, sexual orientation, national origin, age, marital status, veteran status, disability or any other category protected under applicable federal, state or local law. All employment decisions are based on principles of equal employment opportunity.				
<br/><br/></br>
	<iframe src=" http://www.marylanddiversity.com/jobs.asp?pbid=68003" frameborder="0" scrolling="yes" style="width:700px; height:1000px; overflow:hidden;" seamless="seamless"></iframe>
</br>		
</p>
			
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