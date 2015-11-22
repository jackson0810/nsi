
<cfset insertQuote = "" />
<cfset emailTo = "lsimerly@n-s-i.us;drini@n-s-i.us;msanders@n-s-i.us;Khunnicutt@n-s-i.us;derrick.jackson73@gmail.com" />
<cfset responseTypeList = "" />
<cftransaction>
	<cfquery datasource="nsiwebdata09" name="insertQuote">
		INSERT INTO	getQuote
		(	personName,
			companyname,
			phoneNumber,
			faxNumber,
			emailAddress,
			address1,
			address2, 
			city, 
			state, 
			zipCode, 
			responseType, 
			requestDescription,
			requestDate)
	VALUES (
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.PersonName#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.CompanyName#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.PhoneNumber#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.FaxNumber#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.EmailAddress#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Address1#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Address2#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.City#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.State#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.ZipCode#" />,
		<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.ResponseType#" />,
		<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.requestDescription#" />,
		<cfqueryparam cfsqltype="cf_sql_timestamp" value="#Now()#" />
	)
	</cfquery>
</cftransaction>

<!---Email to NSI--->
<cfmail to="#emailTo#" from="#form.EmailAddress#" subject="NSI Quote Request:  #form.CompanyName#" type="html">
	<h2>Naval Systems, Inc. (NSI) Request for Quote</h2>
	
	<table border="0">
		<tr>
			<td width="20%">Name:&nbsp;</td>
			<td>#form.PersonName#</td>
		</tr>
		<tr>
			<td>Email Address:&nbsp;</td>
			<td>#form.EmailAddress#</td>
		</tr>
		<tr>
			<td>Company Name:&nbsp;</td>
			<td>#form.CompanyName#</td>
		</tr>
		<tr>
			<td valign="top">Address:&nbsp;</td>
			<td>
				#form.Address1#<br/>
				<cfif form.Address2 NEQ "">
					#form.Address2#<br/>
				</cfif>
				#form.City#, #form.State# #form.Zipcode#
			</td>
		</tr>
		<tr>
			<td>Phone Number:&nbsp;</td>
			<td>#form.PhoneNumber#</td>
		</tr>
		<tr>
			<td>Fax Number:&nbsp;</td>
			<td>#form.FaxNumber#</td>
		</tr>
		<tr>
			<td>Response Type:&nbsp;</td>
			<td>
				<cfif listFind(form.ResponseType,'1') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Call Back") /></cfif>
				<cfif listFind(form.ResponseType,'2') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Postal Mail Information") /></cfif>
				<cfif listFind(form.ResponseType,'3') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"E-mail Information") /></cfif>
				#responseTypeList#
			</td>
		</tr>
		<tr>
			<td valign="top">Request Description:&nbsp;</td>
			<td>
				#form.RequestDescription#
			</td>
		</tr>
	</table>
</cfmail>

<cflocation url="/views/mro/quote_success.cfm" />