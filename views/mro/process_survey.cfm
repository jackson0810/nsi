<cfset emailTo="lsimerly@n-s-i.us;drini@n-s-i.us;msanders@n-s-i.us;khunnicutt@n-s-i.us;smiller@n-s-i.us" />
	
<!---Email to NSI--->
<cfmail to="#emailTo#" from="NSICustomerSurvey@n-s-i.us" replyto="#emailTo#" subject="NSI Customer Survey" type="html">
	<h2>Naval Systems, Inc. (NSI) Customer Survey</h2>
	
	<table border="0" cellpadding="10" cellspacing="5">
		<tr>
	  		<td width="3">&nbsp;</td>
	  		<td><strong>Company/Customer Name:</strong>&nbsp;&nbsp;</td>
	  		<td colspan="4">#form.name#</td>
	 	</tr>
		<tr>
	  		<td width="3">&nbsp;</td>
	  		<td><strong>Survey Completed By:</strong>&nbsp;&nbsp;</td>
	  		<td colspan="4">#form.CompletedBy#</td>
		  </tr>
		 <tr>
	  		<td width="3">&nbsp;</td>
	  		<td><strong>Title:</strong>&nbsp;&nbsp;</td>
	  		<td colspan="4">#form.title#</td>
		 </tr>
		 
		<tr>
			<td width="3">&nbsp;</td>
			<td valign="top"><strong>Phone Number:</strong>&nbsp;&nbsp;</td>
			<td>#form.PhoneNumber#</td>
			<td>&nbsp;</td>
			<td valign="top"><strong>Date:</strong>&nbsp;&nbsp;</td>
			<td valign="top">#form.Date#</td>
		</tr>
		
		<tr>
			<td valign="top">&nbsp;</td>
			<td colspan="5" valign="top"><strong>On a scale of 1 to 5 (1 being worst - 5 being best) how do we compare with our competitors in the following categories?</td>
		</tr>
		<tr>
			<td colspan="6">
				<table border="0" width="100%" cellspacing="10">
					<tr>
						<th>&nbsp;</th>
						<th>1</th>
						<th>2</th>
						<th>3</th>
						<th>4</th>
						<th>5</th>
					</tr>
					<tr>
						<td>Service</td>
						<td align="center"><input type="radio" disabled="true" name="service" value="1" <cfif isDefined('form.service') AND form.service EQ 1>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="service" value="2" <cfif isDefined('form.service') AND form.service EQ 2>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="service" value="3" <cfif isDefined('form.service') AND form.service EQ 3>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="service" value="4" <cfif isDefined('form.service') AND form.service EQ 4>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="service" value="5" <cfif isDefined('form.service') AND form.service EQ 5>checked </cfif> /></td>
					</tr>
					<tr>
						<td>Quality of Products</td>
						<td align="center"><input type="radio" disabled="true" name="quality" value="1" <cfif isDefined('form.quality') AND form.quality EQ 1>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="quality" value="2" <cfif isDefined('form.quality') AND form.quality EQ 2>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="quality" value="3" <cfif isDefined('form.quality') AND form.quality EQ 3>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="quality" value="4" <cfif isDefined('form.quality') AND form.quality EQ 4>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="quality" value="5" <cfif isDefined('form.quality') AND form.quality EQ 5>checked </cfif> /></td>
					</tr>
					<tr>
						<td>Completeness of orders</td>
						<td align="center"><input type="radio" disabled="true" name="Completeness" value="1" <cfif isDefined('form.completeness') AND form.completeness EQ 1>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="Completeness" value="2" <cfif isDefined('form.completeness') AND form.completeness EQ 2>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="Completeness" value="3" <cfif isDefined('form.completeness') AND form.completeness EQ 3>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="Completeness" value="4" <cfif isDefined('form.completeness') AND form.completeness EQ 4>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="Completeness" value="5" <cfif isDefined('form.completeness') AND form.completeness EQ 5>checked </cfif> /></td>
					</tr>
					<tr>
						<td>On time delivery</td>
						<td align="center"><input type="radio" disabled="true" name="delivery" value="1" <cfif isDefined('form.delivery') AND form.delivery EQ 1>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="delivery" value="2" <cfif isDefined('form.delivery') AND form.delivery EQ 2>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="delivery" value="3" <cfif isDefined('form.delivery') AND form.delivery EQ 3>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="delivery" value="4" <cfif isDefined('form.delivery') AND form.delivery EQ 4>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="delivery" value="5" <cfif isDefined('form.delivery') AND form.delivery EQ 5>checked </cfif> /></td>
					</tr>
					<tr>
						<td>Response to customer's needs</td>
						<td align="center"><input type="radio" disabled="true" name="needs" value="1" <cfif isDefined('form.needs') AND form.needs EQ 1>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="needs" value="2" <cfif isDefined('form.needs') AND form.needs EQ 2>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="needs" value="3" <cfif isDefined('form.needs') AND form.needs EQ 3>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="needs" value="4" <cfif isDefined('form.needs') AND form.needs EQ 4>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="needs" value="5" <cfif isDefined('form.needs') AND form.needs EQ 5>checked </cfif> /></td>
					</tr>
					<tr>
						<td>Completeness of paperwork</td>
						<td align="center"><input type="radio" disabled="true" name="paperwork" value="1" <cfif isDefined('form.paperwork') AND form.paperwork EQ 1>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="paperwork" value="2" <cfif isDefined('form.paperwork') AND form.paperwork EQ 2>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="paperwork" value="3" <cfif isDefined('form.paperwork') AND form.paperwork EQ 3>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="paperwork" value="4" <cfif isDefined('form.paperwork') AND form.paperwork EQ 4>checked </cfif> /></td>
						<td align="center"><input type="radio" disabled="true" name="paperwork" value="5" <cfif isDefined('form.paperwork') AND form.paperwork EQ 5>checked </cfif> /></td>
					</tr>
				</table>	 
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<strong>Comments: </strong>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<p>#form.comments#</p>		 
			</td>
		</tr>
		<tr>
			<td colspan="6">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<hr/>
				<h2><strong>For NSI Use</strong></h2>
				<table border="0" width="100%">
					<tr>
						<td>Survey reviewed by:&nbsp;&nbsp;<input type="text" size="50" value="" /></td>
						<td>Date:&nbsp;&nbsp;<input type="text" size="50" value="" /></td>
					</tr>
					<tr>
						<td colspan="2">
							Comments by investigator (if assigned):&nbsp;&nbsp;<br/>
							<br/>Use separate sheet if needed.<br/>
							<textarea cols="100" rows="20"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							Corrective action record (if assigned):&nbsp;&nbsp;<br/>
							<br/>Use separate sheet if needed.<br/>
							<textarea cols="100" rows="20"></textarea>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</cfmail>

<cflocation url="/views/mro/survey_success.cfm" />