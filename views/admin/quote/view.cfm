<cfsilent>
	<cfset quoteItem = event.getArg('quoteItem') />
	<cfset message = event.getArg('message','') />
	<cfset responseTypeList = "" />
	
</cfsilent>

<!---BEGIN EDITABLE REGION--->
<script type="text/javascript">
		document.title = "Naval Systems, Inc. - Quote Request List";
	</script>
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="15%" valign="top" bgcolor="#6699CC" style="padding: 0 5px 0 5px;">
			<div align="center">
				<cfoutput>
				<img src="/images/0430v22.jpg" width="125" /><br/><br/>
				<img src="/images/h1_flight.jpg" width="125" /><br/><br/>
			</cfoutput>
			</div>
		</td>
		<td valign="top">
			<div id="breadcrumb" style="padding-left:5px;">
				<h4>
					<a href="#BuildURl('admin.showAdmin')#">Adminstrative Area</a> > <a href="#BuildURl('admin.showQuoteList')#">Quote Requests List</a> > Quote Request
				</h4>
			</div>
			<table border="0" width="100%" align="left">
				<tr>
					<td><h1>Quote Request</h1></td>
				</tr>
				<tr>
					<td>
						<cfoutput>
						<table border="0" cellpadding="5" cellspacing="5">
							<tr>
								<td width="20%"><strong>Name:</strong>&nbsp;</td>
								<td>#quoteItem.getPersonName()#</td>
							</tr>
							<tr>
								<td><strong>Email Address:</strong>&nbsp;</td>
								<td>#quoteItem.getEmailAddress()#</td>
							</tr>
							<tr>
								<td><strong>Company Name:</strong>&nbsp;</td>
								<td>#quoteItem.getCompanyName()#</td>
							</tr>
							<tr>
								<td valign="top"><strong>Address:</strong>&nbsp;</td>
								<td>
									#quoteItem.getAddress1()#<br/>
									<cfif quoteItem.getAddress2() NEQ "">
										#quoteItem.getAddress2()#<br/>
									</cfif>
									#quoteItem.getCity()#, #quoteItem.getState()# #quoteItem.getZipcode()#
								</td>
							</tr>
							<tr>
								<td><strong>Phone Number:</strong>&nbsp;</td>
								<td>#quoteItem.getPhoneNumber()#</td>
							</tr>
							<tr>
								<td><strong>Fax Number:</strong>&nbsp;</td>
								<td>#quoteItem.getFaxNumber()#</td>
							</tr>
							<tr>
								<td><strong>Response Type:</strong>&nbsp;</td>
								<td>
									<cfif listFind(quoteItem.getResponseType(),'1') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Call Back") /></cfif>
									<cfif listFind(quoteItem.getResponseType(),'2') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Postal Mail Information") /></cfif>
									<cfif listFind(quoteItem.getResponseType(),'3') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"E-mail Information") /></cfif>
									#responseTypeList#
								</td>
							</tr>
							<tr>
								<td valign="top"><strong>Request Description:</strong>&nbsp;</td>
								<td>
									#quoteItem.getRequestDescription()#
								</td>
							</tr>
							<tr>
								<td colspan="2"><hr/></td>
							</tr>
							<form action="#BuildURL('admin.processQuoteItem')#" method="post" name="quoteItem">
								<input type="hidden" name="quoteID" value="#quoteItem.getQuoteID()#" />
							<tr>
								<td valign="top"><strong>Responded By:</strong>&nbsp;</td>
								<td>
									<input type="text" name="respondedBy" value="#quoteItem.getRespondedBy()#" size="30" />
								</td>
							</tr>
							<tr>
								<td valign="top"><strong>Comments:</strong>&nbsp;</td>
								<td>
									<cfset theInstanceName = "comments" />
									<cfset theValue = "#quoteItem.getComments()#" />
									<cfset theHeight="200" />
									<cfset theWidth="500" />
									<!---include text editor--->
									<cfinclude template="../includes/editor.cfm" />
								</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" name="Submit" value="Submit">&nbsp;
									<input type="button" name="Cancel" value="Cancel" onClick="javascript: window.location = 'http://#cgi.server_name#/index.cfm/?go=admin.showQuotesList'">
								</td>
							</tr>
							</form>
							<SCRIPT LANGUAGE="JavaScript">
								<!--//
								// initialize the qForm object
								objForm = new qForm("quoteItem");
									
								// make these fields required
								objForm.required("respondedBy");
								objForm.respondedBy.requiredMessage = "Please enter your name.";
								//-->
							</SCRIPT>
						</table>
						</cfoutput>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<!---END EDITABLE REGION--->