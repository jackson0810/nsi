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
			 <p>We calibrate a wide variety of equipment in the areas of general electrical, pressure, dimensional, and temperature including, but not limited to: </p>
      <table border="0" align="center" width="75%">
        <tr>
          <td><p>Air speed indicator</p></td>
          <td><p>Micrometer</p></td>
        </tr>
        <tr>
          <td><p>Ammeter</p></td>
          <td><p>Oscilloscope</p></td>
        </tr>
        <tr>
          <td><p>Angle position</p></td>
          <td><p>Phase Angle Volt Meter</p></td> 
        </tr>
        <tr>
          <td><p>Aircraft Scales</p></td>
          <td><p>Pitot static tester</p></td>
		
        </tr>
        <tr>
          <td><p>Caliper</p></td>
         <td><p>Pressure gauge</p></td>
        </tr>
        <tr>
          <td><p>Counter sink gauge</p></td>
         <td><p>Pressure transducer</p></td>
        </tr>
        <tr>
          <td><p>Dead weight tester</p></td>
           <td><p>Relief valve</p></td>
        </tr>
        <tr>
         <td><p>Decade boxes</p></td>
           <td><p>Ring gauge</p></td>
        </tr>
        <tr>
            <td><p>Dial indicator</p></td>
         <td><p>Scale</p></td>
        </tr>
        <tr>
       	 <td><p>Dynamometer</p></td>
          <td><p>Signal generator</p></td>
        </tr>
        <tr>
          <td><p>Fuel tester </p></td>
          <td><p>Spring scale</p></td>
        </tr>
        <tr>
           <td><p>Gauge block</p></td>
          <td><p>Tensiometer</p></td>
        </tr>
        <tr>
         <td><p>Go-Nogo</p></td>
         <td><p>Thermocouple</p></td>
        </tr>
        <tr>
           <td><p>Humidity tester</p></td>
            <td><p>Torque wrench</p></td>
        <tr>
         <td><p>Level</p></td>
         <td><p>Thermometer</p></td>
        </tr>
        <tr>
          <td><p>Magnehelic</p></td>
         <td><p>Voltmeter</p></td>
        </tr>
        </tr>
        <tr>
        <td><p>Multimeter</p></td>  
		 
          <td><p>Wire crimper</p></td>
        </tr>
		
		
      </table>
    <p align="justify">NSI's Calibration Services can calibrate a range of Disciplines, Temperature, Pressure, Physical, Dimensional and Electronics. Please view our <a href="/views/documents/CalLabScope.pdf" target="_blank" style="color: ##0066CC">Perry Johnson Accreditation Scope</a> </p>
	<div align="right" style="margin-top:125px;"><img src="/images/NSIImagehorizontal.jpg" align="right"></div>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>