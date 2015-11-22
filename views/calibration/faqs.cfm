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
			<p>
				<strong>Is Naval Systems, Inc. ISO 17025 Accredited?</strong><br/>
				Yes, please visit our <a href="#BuildURL('showCalibrationAccreditation')#" style="color: ##0066CC">Accreditation</a> page for more information.
			</p>
			<p>
				<strong>Where are you located?</strong><br/>
				We are located at 8551-1 Westside Industrial Drive, Jacksonville, Florida, 32219<br/> 
				<a href="http://goo.gl/maps/yUuG" style="color: ##0066CC" target="_blank">Driving Directions</a>
			</p>
      		<p>
				<strong>How do I find out what instruments you calibrate?</strong><br/>
		     	Check out our <a href="#BuildURL('showCalibrationServices')#" style="color: ##0066CC">Services</a> page. If you don't see what you are looking for, 
		     	don't hesistate to call us at 904-248-4325, or fill out a <a href="#BuildURL('showCalibrationRequests')#" style="color: ##0066CC">Calibration Request Form</a>. 
			</p>
      		<p>
				<strong>How long will you have my equipment before it is shipped back to me?</strong><br/>
				Normal turn around time is 5 days, but expedited services are available upon request.
			</p>
		   	<p>
		   		<strong>What is your fax number?</strong><br/>
		   		904-248-4301 
			</p>
			<div align="right" style="margin-top:160px;"><img src="/images/NSIImagehorizontal.jpg" align="right"></div>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>