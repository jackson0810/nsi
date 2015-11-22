<cfsilent>
	<cfparam name="pageType" default="Edit" />
	<cfparam name="url.jobID" default="0" />
	
	<cfquery name="jobItem" datasource="nsiwebdata09">
		SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
		FROM		jobData
		WHERE		jobID = <cfqueryparam cfsqltype="cf_sql_integer" value="#url.jobID#" />
	</cfquery>
	
	<cfif url.jobID EQ 0>
		<cfset pageType = "Add">
	</cfif>
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
				<cfinclude template="/views/layout/new_navigation.cfm" />
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">

<!---DO NOT REMOVE THE FOLLOWING LINE OF CODE--->
<!---END--->
<!---BEGIN EDITABLE REGION--->
<cfoutput>
	<script type="text/javascript">
		document.title = "Naval Systems, Inc. - #pageType# Career Opportunity";
	</script>
<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="15%" valign="top" bgcolor="##6699CC" style="padding: 0 5px 0 5px;">
			<div align="center">
				<cfoutput>
				<img src="/images/0430v22.jpg" width="125" /><br/><br/>
				<img src="/images/h1_flight.jpg" width="125" /><br/><br/>
			</cfoutput>
			</div>
		</td>
		<td valign="top" style="padding: 0 5px 0 5px;">
			<div id="breadcrumb">
				<h4>
					<a href="/views/admin/index.cfm">Adminstrative Area</a> > <a href="/views/admin/jobs/index.cfm">Career Opportunities</a> > #pageType# Career Opportunity
				</h4>
			</div>
			<h2>#pageType# Career Opportunity</h2>
			
			<form action="processJob.cfm" enctype="multipart/form-data" name="careeerOpp" method="post">
			
			<table border="0" width="100%" cellspacing="10">
				<tr>
					<td align="right"><strong>Title:</strong></td>
					<td><input type="text" name="title" size="75" value="#jobItem.title#" /></td>
				</tr>
				<tr>
					<td valign="top" align="right"><strong>Description:</strong></td>
					<td>
						<cfset theInstanceName = "description" />
						<cfset theValue = "#jobItem.description#" />
						<cfset theHeight="300" />
						<cfset theWidth="500" />
						<!---include text editor--->
						<cfinclude template="../includes/editor.cfm" />
					</td>
				</tr>
				<tr>
					<td align="right"><strong>Status:</strong></td>
					<td>
						<cfif jobItem.JobStatus EQ 1>
							<input type="radio" name="jobStatus" checked value="1" />&nbsp;Active&nbsp&nbsp;
							<input type="radio" name="jobStatus" value="0" />&nbsp;In-Active
						<cfelse>	
							<input type="radio" name="jobStatus" value="1" />&nbsp;Active&nbsp&nbsp;
							<input type="radio" name="jobStatus" checked value="0" />&nbsp;In-Active
						</cfif>
							   
						
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>	
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" name="submit" value="Submit">&nbsp;&nbsp;
					<input type="button" name="Cancel" value="Cancel" onclick="javascript: window.location = 'http://#cgi.server_name#/views/admin/jobs/index.cfm'"></td>
				</tr>	
			</table>
			<cfif url.jobID EQ 0>
				<input type="hidden" name="jobID" value="0" />
			<cfelse>
				<input type="hidden" name="jobID" value="#url.jobID#" />
			</cfif>
			</form>
			
			<SCRIPT LANGUAGE="JavaScript">
				<!--//
				// initialize the qForm object
				objForm = new qForm("careeerOpp");
					
				// make these fields required
				objForm.required("title");
				objForm.title.requiredMessage = "Please enter the title for this career opportunity.";
				//objForm.description.requiredMessage = "Please enter the description for this career opportunity.";
				//-->
			</SCRIPT>
		</td>
	</tr>
</table>
</cfoutput>
<!---END EDITABLE REGION--->
<!---END EDITABLE REGION--->
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
