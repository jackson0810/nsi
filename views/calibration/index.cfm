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
				NSI Calibration is a calibration laboratory based in Jacksonville, Florida dedicated to meeting our customer needs. NSI Calibration has been increasing services 
				offered as our customers became more varied and requested more services. We calibrate a wide range of instruments using standards directly traceable to <a href="http://www.nist.gov/" target="_blank" style="color: ##0066CC">NIST </a>
				(National Institute of Standards and Technology);  for a sample list of calibrations offered, click the <a href="#BuildURL('showCalibrationServices')#" style="color: ##0066CC">Services</a> tab above. Please call us to discuss your calibration needs or fill out a 
				<a href="#BuildURL('showCalibrationRequests')#" style="color: ##0066CC">Calibration Request Form </a>for a single item. We look forward to doing business with you! 
			</p>
			<div align="right" style="margin-top:160px;"><img src="/images/NSIImagehorizontal.jpg" align="right"></div>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>