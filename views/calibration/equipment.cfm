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
			<p>The standards we use to test your equipment are some of the best available.</p>
      		<table border="0">
				<tr>
					<td colspan="2" align="center"><h3>Dimensional  Calibration</h3></td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						<img src="/images/labmaster1.jpg" alt="labmaster" width="148" height="119" align="left" style="padding-right:5px;" />
						Dimensional Calibration is  performed using Pratt &amp; Whitney&rsquo;s Labmaster Universal Measuring  System. This laser based system has unmatched accuracy for all types of precision 
						dimensional measurement devices, 0-12 inch range with 2 micro inch accuracy.
					</td>
				</tr>
				<tr><td colspan="2">&nbsp;</td></tr>
				<tr>
					<td colspan="2" align="center"><h3>Electrical Calibration</h3></td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						<img src="/images/5520A.jpg" alt="picture of 5520" width="183" height="79" align="left" style="padding-right:5px;" />
	        			Fluke&rsquo;s high precision multi-product workstation, the  5520A, is capable of calibrating frequency,  capacitance and temperature. Within the frequency range of 0.01Hz- 2MHz, 
	        			it has  basic V dc accuracy of up to 0.0024 %.
					</td>
				</tr>
				<tr><td colspan="2">&nbsp;</td></tr>
				<tr>
					<td valign="top" colspan="2">
						<img src="/images/8508.jpg" alt="picture of 8508" width="214" height="48" align="left" style="padding-right:5px;"/>
						The 8508A  Reference Multimeter features 8.5 digit resolution, exceptional linearity and  extraordinarily low noise and stability, producing what are arguably the most  accurate 
						measurements to be had from any commercially available product today.
					</td>
				</tr>
				<tr><td colspan="2">&nbsp;</td></tr>
				<tr>
					<td colspan="2" align="center"><h3>Radio Frequency Calibration</h3></td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						<img src="/images/9640.jpg" alt="9640" width="197" height="71" align="left" style="padding-right:5px;"/>
		       			The 9640A has signal precision and noise immunity  throughout a 154dB dynamic range, down to &ndash;130 dBm, with a max output of +24,  in the frequency range of 10Hz-4GHz.
					</td>
				</tr>
				<tr><td colspan="2">&nbsp;</td></tr>
				<tr>
					<td colspan="2" align="center"><h3>Pressure Calibration</h3></td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						<img src="/images/dhi.jpg" alt="DHI" width="193" height="84" align="left" style="padding-right:5px;"/>
					    DHI 7601 is sensitive to 0.02PA + 0.5ppm, with a  reproducibility of +/- 2ppm. It has an uncertainty of +/- 0.2PA + 12ppm.<br/><br/><br/> 
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"> <h3>Temperature Calibration</h3></td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						<img src="/images/Hart-9170A.jpg" alt="picture of 9170" width="95" height="140" align="left" style="padding-right:5px;"/>
		    			The Hart 9170A is the best performing industrial heat  source to date in accuracy, stability, and uniformity. It has an immersion  depth of 203mm. The entire range is &ndash;45 to 140&deg;C  with accuracy of +/- 0.1&deg;C.
					</td>
				</tr>
			</table>	
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>