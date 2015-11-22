<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
	<head>
		<title>NSI - Documents</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

		<script type="text/javascript" src="/scripts/jquery/jquery-1.3.2.min.js"></script>
		<script src="/scripts/jquery/jqueryFileTree/jqueryFileTree.js" type="text/javascript"></script>
		<link href="/scripts/jquery/jqueryFileTree/jqueryFileTree.css" rel="stylesheet" type="text/css" media="screen" />
		<link rel="stylesheet" media="screen" href="/css/template.css" />
		
		<!--JQuery Menu-->
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.jdMenu.js"></script>
		<link type="text/css" rel="stylesheet" href="/scripts/jquery/jdMenu/jquery.jdMenu.css"  />
		
		<script type="text/javascript">
		$(document).ready( function() {
		    $('#NSIArchives').fileTree({
		        root: '/views/ourArchive_conf/',
		        script: 'fileTree.cfm',
		        expandSpeed: 1000,
		        collapseSpeed: 1000,
		        multiFolder: true,
		    }, function(file) {
		        openFile(file);
		    });
		});
		</script>
		<script type="text/javascript">
			function openFile(theFile) {
				window.open(theFile);
		}
		</script>
	</head>
	
	<body>
		<table class="wrapper" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td width="300"><cfoutput><img src="/images/logo.gif"></cfoutput></td>
				<td width="574" align="right" valign="middle" class="warfighter">
					<em>Supporting the Warfighter!
					<br/><br/>
					A Service Disabled Veteran Owned Small Business
					</em>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<cfoutput>
					<div>
						<ul class="jd_menu">
							<li><a href="/index.cfm?go=showHome">Home</a></li>
							<li>
								<a href="/index.cfm?go=showAbout">About Us</a>
							</li>
							<li <!--- class="accessible" --->>
								<a href="/index.cfm?go=showCapabilities">Capabilities</a>
							</li>
							<li><a href="/index.cfm?go=showClients">Clients</a></li>
							<li><a href="/index.cfm?go=showChina">China Lake</a></li>
							<li>
								<a href="/index.cfm?go=showMRO">MRO&amp;L</a>
							</li>
							<li><a href="/index.cfm?go=showNews">Company News</a></li>
							<li><a href="/index.cfm?go=showContracts">Contract Vehicles</a></li>
							<li><a href="/index.cfm?go=showCareers">Career Opportunities</a></li>
							<li><a href="/index.cfm?go=showContacts">Contact Us</a></li>
						</ul>	
					</div>
					</cfoutput>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="background-color: #6699CC;" height="10px;"></td>
			</tr>
			<tr>
				<td colspan="2" width="70%" valign="top">
					<div class="example" style="padding-left:30px;">
						<h2>Archives</h2>
						<div id="NSIArchives" class="demo"></div>
						<br/>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="footer2">
					<div id="footer_address">
						Naval Systems, Inc.<br>
						21491 Great Mills Road, Suite 100<br>
						Lexington Park, MD 20653<br>
						Phone: (301) 737-1911<br>
						Fax: (301) 737-1940					
					</div>
										
					<div id="footer_copyright">
						&copy; 2009 Naval Systems, Inc.
					</div>
				</td>
			</tr>
		</table>
		<br/>
		<cfoutput>
		<div class="footer">
			<a href="/index.cfm?go=showHome">Home</a> | 
			<a href="/index.cfm?go=showAbout">About Us</a> | 
			<a href="/index.cfm?go=showCapabilities">Capabilities</a> | 
			<a href="/index.cfm?go=showClients">Clients</a> | 
			<a href="/index.cfm?go=showChina">China Lake</a> | 
			<a href="/index.cfm?go=showMRO">MRO&amp;L</a> | 
			<a href="/index.cfm?go=showNews">Company News</a> | 
			<a href="/index.cfm?go=showContracts">Contract Vehicles</a> | 
			<a href="/index.cfm?go=showCareers">Career Opportunities</a> | 
			<a href="/index.cfm?go=showContacts">Contact Us</a> | 
			<a href="/index.cfm?go=admin.showAdmin">Administrative</a>
		</div>
		</cfoutput>
</body>
</html>
	</body>
</html>