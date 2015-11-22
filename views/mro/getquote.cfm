<cfsilent>
	<cfinclude template="states.cfm">
</cfsilent>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - MRO&L (Get Quote)</title>
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
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	
	<tr>
		<td width="22%" valign="top" style="padding: 0 5px 0 5px;" height="100%" bgcolor="##6699CC">
			<div id="mro_menu">
				<cfinclude template="side_nav.cfm" />
			</div>
		</td>
		<td valign="top" height="300px;" width="78%" style="padding-left:5px;">
			<h1>Request a Quote</h1>
			
				<p>
					To obtain a quote, fill out the form belown and click the <strong>Submit</strong> button at the bottom of the page.
				</p>	
				<form name="getQuote" action="process_quote.cfm" method="post">
					<table border="0" cellpadding="10" cellspacing="5">
						<tr>
					  		<td width="3"><span class="required">*</span></td>
					  		<td><strong>Name:</strong>&nbsp;&nbsp;</td>
					  		<td>
					  			<input
					  				value=""
						  			type="text" 
						  			name="personName" 
						  			size="20"
						  			maxlength="50" 
						   			tabindex='1'/>
						  	</td>
						 
					  		<td width="3"><span class="required">*</span></td>
					  		<td><strong>Email Address:</strong>&nbsp;&nbsp;</td>
					  		<td>
					  			<input value=""
						  			type="text" 
						  			name="emailAddress" 
						  			maxlength="50" 
						   			size="20" 
						  			tabindex='2' />
						  	</td>
						 </tr>
						 <tr>
					  		<td width="3"><span class="required">*</span></td>
					  		<td><strong>Company Name:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">
					  			<input
					  				value=""
						  			type="text" 
						  			name="companyName" 
						   			size="50" 
						  			tabindex='3' />
						  	</td>
						 </tr>
						 <tr>
					  		<td width="3">&nbsp;</td>
					  		<td><strong>Address 1:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">
					  			<input
					  				value=""
						  			type="text" 
						  			name="address1" 
						  			maxlength="50" 
						   			size="50" 
						  			tabindex='4' />
						  	</td>
						 </tr>
						 <tr>
					  		<td>&nbsp;</td>
					  		<td><strong>Address 2:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">
					  			<input 
					  				value=""
						  			type="text" 
						  			name="address2" 
						  			maxlength="50" 
						   			size="50" 
						  			tabindex='5' />
						  	</td>
						 </tr>
						 <tr>
							<td width="3">&nbsp;</td>
							<td valign="top" nowrap="true"><strong>City, State Zip:</strong>&nbsp;&nbsp;</td>
							<td colspan="6">
								<input 
									value=""
									type="text" 
									name="city" 
									maxlength="50" 
									size="30"
									tabindex='6' />&nbsp;, &nbsp;
								
								<select name="State" style="width:35mm;" tabindex='7'>
			            			<option value="">State...</option>
			            			<cfloop list="#stateList#" delimiters="~" index="theState">
										<option value="#ListFirst(theState)#">#ListLast(theState)#</option>
									</cfloop>
			               		</select>	
								&nbsp;
								<input 
									value=""
									type="text" 
									name="ZipCode" 
									maxlength="15" 
									size="10"
									tabindex='8' />	
							</td>
						</tr>
						<tr>
							<td width="3" valign="top"><span class="required">*</span></td>
							<td valign="top"><strong>Phone Number:</strong>&nbsp;&nbsp;</td>
							<td>
								<input 
									value="" 
									type="text" 
									name="phoneNumber"
									maxlength="12" 
									size="15"
									tabindex='9' /><br/>xxx-xxx-xxxx
							</td>
							<td>&nbsp;</td>
							<td valign="top"><strong>Fax Number:</strong>&nbsp;&nbsp;</td>
							<td>
								<input
									value=""
									maxlength="12" 
									name="faxNumber" 
									size="15" 
									type="text"
									tabindex='10' /><br/>xxx-xxx-xxxx
							</td>
						</tr>
						<tr>
							<td valign="top"><span class="required">* </span></td>
							<td colspan="2" valign="top"><strong>Type of Response Requested:</strong>&nbsp;&nbsp;</td>
							<td colspan="3">
								<table border="0">
									<tr>
										<td>
											<input type="checkbox" name="responseType" value="1" tabindex='11' />&nbsp;Call Back<br/>
											<input type="checkbox" name="responseType" value="2" tabindex='12' />&nbsp;Postal Mail Information<br/>
											<input type="checkbox" name="responseType" value="3" tabindex='13' />&nbsp;E-mail Information<br/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top"><span class="required">* </span></td>
							<td colspan="5" valign="top"><strong>Please provide the details of this request:</strong>&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<td colspan="6">
								<textarea name="requestDescription" cols="80" rows="10"></textarea>		 
							</td>
						</tr>
						<tr>
							<td colspan="6">&nbsp;</td>
						</tr>
</table>

<input
 name="submit" value="Submit Request"
 type="submit">
              <input name="reset" value="Clear Form"
 type="reset">
              <p>&nbsp;</p>
					

				</form>
				<SCRIPT LANGUAGE="JavaScript">
					<!--//
					// initialize the qForm object
					objForm = new qForm("getQuote");
					
					// make these fields required
					objForm.required("personName, emailAddress, companyName, phoneNumber,responseType");
					objForm.personName.requiredMessage = "Your name is required.";
					objForm.companyName.requiredMessage = "Your company name is required.";
					objForm.emailAddress.requiredMessage = "Your email address is required.";
					objForm.phoneNumber.requiredMessage = "Your phone number is required.";
					objForm.responseType.requiredMessage = "Please chose your response type.";
					//objForm.requestDescription.requiredMessage = "Please enter the reason for this request.";
					objForm.emailAddress.validate = true;
					objForm.emailAddress.validateEmail();
					//-->
				</SCRIPT>


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
						8551-1 Westside Industrial Dr.<br>
						Jacksonville, Florida, 32219<br>
						Phone: (904) 248-4325<br>
						Fax: (904) 248-4301<br>
						Business Hours: 6:00 am-3:00 pm EST<br/>
					</div>
				
				<div id="footer_copyright">
					<br/>&copy; 2014 Naval Systems, Inc.
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