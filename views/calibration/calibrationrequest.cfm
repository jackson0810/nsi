<cfsilent>
	<cfset calibrationRequest = event.getArg("calibrationRequest",CreateObject("component","model.main.CalibrationRequest").init()) />
</cfsilent>
<cfoutput>

<!---BEGIN EDITABLE REGION--->

<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="22%" valign="top" style="padding: 0 5px 0 5px;" height="100%" bgcolor="##6699CC">
			<div id="mro_menu">
				<cfinclude template="menu.cfm" />
			</div>
		</td>
		<td valign="top" height="300px;" width="78%" style="padding-left:5px;	">
			<h1>#event.getArg("pageTitle")#</h1>
			<cfif event.isArgDefined("message")>
				<p class="required">
					#event.getArg("message")#
				</p>
			</cfif>
			<form id="calibrationRequest" name="calibrationRequest" method="post" action="#BuildURL('processCalibrationRequest')#">
	 		        <input type="hidden" name="my_email" value="smiller@n-s-i.us">
		                <input type="hidden" name="my_email" value="swinters@n-s-i.us">
				<input type="hidden" name="bcc" value="DRINI@n-s-i.us">
				<input type="hidden" name="subject" value="Calibration Request">
	  			


	  			<p><strong>NOTE:</strong> If you are requesting calibration on an item we have never done for your company, please wait until you receive a response before sending the item in.</p>
		        <p><span class="required">*</span> = Required fields</p>		
				<input type="checkbox" name="wantQuote" value="Yes" id="checkbox7" <cfif calibrationRequest.getWantQuote() EQ "Yes">checked</cfif> />
          		<label for="checkbox7"><strong>Requesting Quote</strong></label>
	          	<br/><br/>
                <table width="100%" border="0">
	          		<tr>
	            		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Technical Contact Information</h2></td>
	          		</tr>
          			<tr>
						<td><span class="required">*</span>&nbsp;</td>
	            		<td><strong>Company</strong></td>
			            <td colspan="3"><input name="company" type="text" size="30" value="#calibrationRequest.getCompany()#" /></td>
		        	</tr>
          			<tr>
						<td><span class="required">*</span>&nbsp;</td>
			            <td><strong>Contact</strong></td>
			            <td><input name="contactName" type="text" size="30" value="#calibrationRequest.getContactName()#"/></td>
			            <td><strong>Title</strong></td>
			            <td><input name="contactTitle" type="text" size="30" value="#calibrationRequest.getContactTitle()#"/></td>
          			</tr>
          			<tr>
						<td>&nbsp;</td>
			            <td><strong>Department</strong></td>
			            <td colspan="3"><input name="department" type="text" size="30" value="#calibrationRequest.getDepartment()#"/></td>
			      	</tr>
		          	<tr>
			          	<td><span class="required">*</span>&nbsp;</td>
			            <td><strong>Email</strong></td>
			            <td colspan="3"><input name="email" type="text" size="30" value="#calibrationRequest.getEmail()#"/></td>
			       	</tr>
			       	<tr>
				       	<td><span class="required">*</span>&nbsp;</td>
			        	<td><strong>Phone Number</strong></td>
			            <td><input name="phoneNumber" type="text" value="#calibrationRequest.getPhoneNumber()#"/></td>
			            <td><strong>Extension</strong></td>
			            <td><input name="extension" type="text" size="6" value="#calibrationRequest.getExtension()#" /></td>
			       	</tr>
        		</table>
            	<p>&nbsp;</p>
            	<table width="100%" border="0">
	              	<tr>
	               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Item Information</h2></td>
	              	</tr>
              		<tr>
						<td>&nbsp;</td>
                		<td><strong>Asset Number</strong></td>
                		<td><input type="text" name="itemAssetNumber" value="#calibrationRequest.getItemAssetNumber()#"/></td>
		                <td><strong>Serial Number</strong></td>
                		<td><input type="text" name="itemSerialNumber" value="#calibrationRequest.getItemSerialNumber()#"/></td>
              		</tr>
              		<tr>
						<td>&nbsp;</td>
                		<td><strong>Item Category</strong></td>
                		<td>
							<select name="itemCategory" id="itemCategory">
								<option value="">Select One</option>
			                    <option value="Dimensional" <cfif calibrationRequest.getItemCategory() EQ "Dimensional">selected="true"</cfif>>Dimensional</option>
			                    <option value="Electric General" <cfif calibrationRequest.getItemCategory() EQ "Electric General">selected="true"</cfif>>Electric General</option>
			                    <option value="Pressure" <cfif calibrationRequest.getItemCategory() EQ "Pressure">selected="true"</cfif>>Pressure</option>
			                    <option value="Temperature" <cfif calibrationRequest.getItemCategory() EQ "Temperature">selected="true"</cfif>>Temperature</option>
								<option value="Other" <cfif calibrationRequest.getItemCategory() EQ "Other">selected="true"</cfif>>Other</option>
                			</select>
						</td>
		                <td><span class="required">*</span>&nbsp;<strong>Item Description</strong></td>
                		<td><input name="itemDescription" type="text" size="30"  value="#calibrationRequest.getItemDescription()#"/></td>
              		</tr>
              		<tr>
						<td>&nbsp;</td>
                		<td><strong>Range</strong></td>
                		<td><input type="text" name="itemRange"  value="#calibrationRequest.getItemRange()#"/></td>
                		<td><strong>Model Number</strong></td>
                		<td><input type="text" name="itemAccuracy"  value="#calibrationRequest.getItemAccuracy()#"/></td>
              		</tr>
            	</table>
           	 	<p>&nbsp;</p>
            	<table width="100%" border="0">
	              	<tr>
	               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Testing Standards</h2></td>
              		</tr>
              		<tr>
                		<td>&nbsp;</td>		
						<td><input type="checkbox" name="ISO17025" value="Yes" <cfif calibrationRequest.getISO17025() EQ "Yes">checked</cfif>/></td>
                		<td><strong>ISO 17025</strong></td>
                		<td><input type="checkbox" name="STDAirForce33K" value="Yes" <cfif calibrationRequest.getSTDAirForce33K() EQ "Yes">checked</cfif>/></td>
                		<td><strong>Air Force 33K</strong></td>
             		 </tr>
              		<tr>
						<td>&nbsp;</td>		
                		<td><input type="checkbox" name="STDANSINCSLZ5401" value="Yes" <cfif calibrationRequest.getSTDANSINCSLZ5401() EQ "Yes">checked</cfif>/></td>
                		<td><strong>ANSI/NCSL Z-50-1</strong></td>
                		<td><input type="checkbox" name="STDNAVAIR" value="Yes" <cfif calibrationRequest.getSTDNAVAIR() EQ "Yes">checked</cfif>/></td>
                		<td><strong>NAVAIR</strong></td>
              		</tr>
              		<tr>
						<td>&nbsp;</td>		
                		<td><input type="checkbox" name="STDASME" value="Yes" id="checkbox3" <cfif calibrationRequest.getSTDASME() EQ "Yes">checked</cfif>/></td>
                		<td><strong>ASME</strong></td>
                		<td colspan="2">Other, please specify <input name="StdOther" type="text" id="label2" size="30" value="#calibrationRequest.getStdOther()#"/></td>
              		</tr>
            	</table>
            	<p>&nbsp;</p>
            	<table width="100%" border="0">
	              	<tr>
	               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Pressure Units</h2></td>
              		</tr>
              		<tr>
						<td>&nbsp;</td>		
                		<td><strong>System fluid</strong></td>
		                <td><input type="text" name="pressureSystemFluid" id="label8"  value="#calibrationRequest.getPressureSystemFluid()#"/></td>
		                <td><strong>Gage Accuracy</strong></td>
		                <td><input type="text" name="pressureGageAccuracy" id="label10"  value="#calibrationRequest.getPressureGageAccuracy()#"/></td>
              		</tr>
              		<tr>
						<td>&nbsp;</td>	
                		<td><strong>Cleanliness Requirements</td>
                		<td><input type="text" name="pressureCleanlinessRequirements" id="label9"  value="#calibrationRequest.getPressureCleanlinessRequirements()#"/></td>
               		 	<td><strong>Normal System Pressure/Rage</strong></td>
                		<td><input type="text" name="pressureNormalSystemPressureRage" id="label11"  value="#calibrationRequest.getPressureNormalSystemPressureRage()#"/></td>
              		</tr>
              	</table>
				<p>&nbsp;</p>
              	<table width="100%" border="0">
	            	<tr>
	               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Additional Information</h2></td>
              		</tr>
              		<tr>
						<td>&nbsp;</td>	
                		<td><strong>Is this item in need of repair?</strong></td>
                		<td colspan="3">
							<input type="radio" name="needOfRepair" value="Yes" <cfif calibrationRequest.getneedOfRepair() EQ "Yes">checked</cfif>/>&nbsp;Yes&nbsp;&nbsp;
                          	<input type="radio" name="needOfRepair" value="No" <cfif calibrationRequest.getneedOfRepair() EQ "" OR calibrationRequest.getneedOfRepair() EQ "No">checked</cfif>/>&nbsp;No
						</td>
                    </tr>
                    <tr>
                		<td>&nbsp;</td>	
						<td><strong>Additional Comments</strong></td>
                		<td colspan="3"><textarea name="additionalComments" cols="50" id="textarea">#calibrationRequest.getAdditionalComments()#</textarea></td>
              		</tr>
        		</table>
			 	<p>&nbsp;</p>

</script>              	
              <input name="captcha" size="16"><img
 id="captchaimg"
 src="http://www.EasyCaptchas.com/%5BNSI_Captcha1%5D.captcha"><a
 href="http://www.easycaptchas.com/"
 onclick="document.getElementById('captchaimg').src+='&rf=1';return false;"
 style="font-size: 9px;">refresh</a><br>
<!-- Free Captcha provided courtesy of www.EasyCaptchas.com (please do not remove this link) -->
              <noscript><a href="http://www.easycaptchas.com/"
onclick="return false;" style="display:none">Captcha</a></noscript>

<input
 name="submit" value="Submit Calibration Request"
 type="submit">
              <input name="reset" value="Clear Form"
 type="reset">
              <p>&nbsp;</p>
            </form>

			<SCRIPT LANGUAGE="JavaScript">


                                        <!--//
					// initialize the qForm object
					objForm = new qForm("calibrationRequest");
					
					// make these fields required
					objForm.required("company,contactName,email,phoneNumber,itemDescription");
					objForm.company.requiredMessage = "Your company name is required.";
					objForm.contactName.requiredMessage = "A contanct name is required.";
					objForm.email.requiredMessage = "A contact email address is required.";
					objForm.email.validateEmail();
					objForm.itemDescription.requiredMessage = "An item description is required.";
					objForm.phoneNumber.requiredMessage = "A phone number is required.";
					//-->
				</SCRIPT>
		</td>
	</tr>
</table>

<!---END EDITABLE REGION--->
</cfoutput>