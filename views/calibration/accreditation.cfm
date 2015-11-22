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
				Naval Systems, Inc. has obtained international <a href="http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=39883" title="ISO17025" target="_blank" style="color: ##0066CC">ISO17025</a> 
				using <a href="http://www.pjlabs.com/" style="color: ##0066CC" target="_blank">Perry Johnson Accreditation Lab</a> and accreditation body with <a href="http://www.ilac.org/" target="_blank" style="color: ##0066CC">ILAC</a>. 
			</p>
      		<p>You can view our <a href="/views/documents/PJLA_Cal_Lab_Certificate_.pdf" target="_blank" style="color: ##0066CC">Accreditation letter</a>.</p> 
      		<p>The NSI Quality Manual is available for review by customers and regulatory authorities upon request during normal business hours in accordance with contract or regulatory requirements. </p>
      					
			<div align="right" style="margin-top:160px;"><img src="/images/NSIImagehorizontal.jpg" align="right"></div>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>