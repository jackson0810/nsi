<cfsilent>
	<cfset quoteList = event.getArg('quoteList') />
	<cfset message = event.getArg('message','') />
	
	<cfset theStatus = event.getArg('status',0) />
	
	<!---Get the quote Data.--->
	<cfquery name="quoteData" dbType="query">
		SELECT		quoteID, personName, companyname, phoneNumber, faxNumber, emailAddress, address1, address2, 
					city, state, zipCode, responseType, requestDescription, requestDate, comments, respondedBy
		FROM		quoteList
		WHERE		1 = 1
		<cfif theStatus EQ 1>
			AND		respondedBy IS NOT NULL
		<cfelseif theStatus EQ 2>
			AND		respondedBy IS NULL
		</cfif>
		ORDER BY	requestDate	DESC
	</cfquery>	
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
				<img src="/images/h1_flight.jpg" width="125" />
			</cfoutput>
			</div>
		</td>
		<td valign="top">
			<table border="0" width="100%" align="left">
				<div id="breadcrumb" style="padding-left:5px;">
				<h4>
					<a href="<cfoutput>#BuildURL('admin.showAdmin')#</cfoutput>">Adminstrative Area</a> > Quote Requests
				</h4>
			</div>
				<tr>
					<cfoutput><td><h1>Quote Request (Total:&nbsp;#quoteData.recordCount#)</h1></td></cfoutput>
				</tr>
				<tr>
					<td>
						<form name="quoteStatusList" action="index.cfm" method="get">
							Status:  <select name="status" onchange="javascript: quoteStatusList.submit();">
								<option value="0" <cfif theStatus EQ 0>selected="true"</cfif>>All</option>
								<option value="1" <cfif theStatus EQ 1>selected="true"</cfif>>Responded To</option>
								<option value="2" <cfif theStatus EQ 2>selected="true"</cfif>>NOT Responsed To</option>
							</select>
						</form>
					</td>
				</tr>
				<tr>
					<td>
						<cfoutput>
						<table id="quoteDataList" class="tablesorter">
							<thead>
								<tr>
									<th>&nbsp;</th>
									<th>Company</th>
									<th>Name</th>
									<th>Response Type</th>
									<th>Date</th>
									<th>Responded By</th>
								</tr>
							</thead>
							
							<cfif quoteData.recordCount GT 10>
								<tfoot>
									<tr>
										<th>&nbsp;</th>
										<th>Company</th>
										<th>Name</th>
										<th>Response Type</th>
										<th>Date</th>
										<th>Responded By</th>
									</tr>
								</tfoot>
							</cfif>
							
							<tbody>
								<cfloop query="quoteData">
									<cfset responseTypeList = "" />
									<tr>
										<td valign="top"><a href="#BuildURL('admin.showQuoteItem','quoteID=#quoteData.quoteID#')#">View</a></td>
										<td valign="top">#quoteData.companyName#</td>
										<td valign="top">#quoteData.personname#</td>
										<td width="30%">
											<cfif listFind(quoteData.responseType,'1') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Call Back") /></cfif>
											<cfif listFind(quoteData.responseType,'2') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Postal Mail Information") /></cfif>
											<cfif listFind(quoteData.responseType,'3') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"E-mail Information") /></cfif>
											#responseTypeList#
										</td>
										<td valign="top">#DateFormat(quoteData.requestDate, "MM/DD/YYYY")#</td>
										<td valign="top">#quoteData.respondedBy#</td>
									</tr>
								</cfloop>
							</tbody>
						</table>
						</cfoutput>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<!---END EDITABLE REGION--->	