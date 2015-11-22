<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="robots" content="index, follow">
		<title>Navel Systems, Inc. (NSI)</title>
		<cfoutput>
		<link rel="stylesheet" media="screen" href="/css/template.css" />		
		<script type="text/javascript" src="/scripts/jquery/jquery-1.3.2.min.js"></script>
		
		<!--JQuery Menu-->
		<!--- <script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.dimensions.js"></script>
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.positionBy.js"></script>
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.bgiframe.js"></script> --->
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.jdMenu.js"></script>
		<link type="text/css" rel="stylesheet" href="/scripts/jquery/jdMenu/jquery.jdMenu.css"  />
		
		<!-- table sorting and paging -->
		<script type="text/javascript" src="/scripts/jquery/tableSorter/jquery.tablesorter.min.js"></script>
		<link rel="stylesheet" href="/scripts/jquery/tableSorter/themes/blue/style.css" type="text/css" media="print, projection, screen" />
	
		<!--Table Highlighting-->
		<script type="text/javascript" language="javascript" src="/scripts/jquery/colorize/colorize.js" ></script> 
	</cfoutput>
		<script type="text/javascript">
			$(document).ready(function() {
				$('table.display').colorize();
				$("#corpNewsList")
					.tablesorter({widthFixed: true, widgets: ['zebra'],headers: {0: {sorter:false}}})
				$("#quoteDataList")
					.tablesorter({widthFixed: true, widgets: ['zebra'],headers: {0: {sorter:false}}})
				$("#jobDataList")
					.tablesorter({widthFixed: true, widgets: ['zebra'],headers: {0: {sorter:false}}})
			});
		</script>
		
</head>
<body>
	<table class="wrapper" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td width="300"><cfoutput><img src="/images/logo.gif"></cfoutput></td>
			<td width="574" align="right" valign="middle" class="warfighter"><em>Supporting the Warfighter!</em></td>
		</tr>
		<tr>
			<td colspan="2">
				<cfoutput>
				<cfif findNoCase('admin/index.cfm',CGI.CF_TEMPLATE_PATH) OR findNoCase('admin\index.cfm',CGI.CF_TEMPLATE_PATH)>
					<cfinclude template="../../includes/navigation.cfm" />
				<cfelse>
					<cfinclude template="../../includes/navigation.cfm" />
				</cfif>
				</cfoutput>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td width="70%" valign="top" colspan="2">