<cfsilent>
	<cfset newsItems = event.getArg("newsItems") />
	<cfset careerItems = event.getArg("careerItems") />
	<cfset message = event.getArg("message","") />
</cfsilent>

<!---BEGIN EDITABLE REGION--->
<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3">&nbsp;</td>
	</tr>
	<tr>
		<td width="70%" style="padding: 0 5px 0 5px;" valign="top">
			<h2>Quality, Integrity, and Victory</h2>
			<p>Naval Systems, Inc. (NSI), is a <strong>Service Disabled</strong> Veteran Owned Small Business supporting the Naval Air Systems Command from locations near Patuxent River, Maryland; Cherry Point, North
				Carolina; Jacksonville, Florida; and China Lake, California.
			</p>
			<p>Our main office is located in Lexington Park, Maryland; just minutes from NAS Patuxent River. NSI has experienced strong growth since our founding and has developed a reputation among clients for superior quality, cost and schedule performance; providing innovative solutions to difficult problems; and demonstrating uncompromising devotion to the ultimate customer: our Navy and Marine Corps warfighters.</p>
			<img src="/images/thumbs/cvn-70-ea6b_thumb.jpg" height="125" />&nbsp;
			<img src="/images/thumbs/AIR_UH-1Y_and_AH-1Z_Photo_lg_thumb.jpg" height="125" />&nbsp;
			<img src="/images/thumbs/p335_thumb.jpg" height="125" />
			<br>
			<p><br/>NSI's outstanding value to our customers results from a great depth of knowledge in engineering, logistics, and management disciplines by the leadership team and key employees, a flat management structure with an extremely efficient business model, and many years of cumulative hands-on experience in Naval Aviation operations and depot level support. The NSI culture has been built upon the core values of Quality, Integrity, and Victory.</p>
                        <br>
<br>
<br>
<br>
<br>
                     <a href= "http://www.ruag.com/self-protection/Self_Protection/MISSIM"><b>RUAG MISSIM</b></a>
		</td>
		<td width="1%" style="border-left: 1px solid">&nbsp;</td>
		<td valign="top" align="left">
			<cfoutput>
			<!---<div>
				<h2>Special Announcement</h2>
				<span style="padding-left:30px;">
				<img src="/images/golf2010.gif" alt="NSI/STAR 98.3 GOLF TOURNAMENT 2010" border="0" /></a>
				</span>
			</div>
			--->
			<br/>
			<div id="home_news">
				<h2>Company News <a href="/views/newsFeed.rss" target="_blank"><img src="/images/rss_icon.gif" alt="RSS Icon" border="0" /></a></h2>
				<!---DO NOT REMOVE THIS LINE OF CODE--->
				<cfinclude template="layout/corpNews.cfm" />
				<!---END--->
			</div>
			</cfoutput>
			<div id="home_jobs">
				<div id="home_jobs">
				<h2>Career Opportunities</h2>
				<!---DO NOT REMOVE THIS LINE OF CODE--->
				<cfinclude template="layout/jobs.cfm" />
				<!---END--->
				</div>
			</div>
			</td>
		</tr>
</table>
<!---END EDITABLE REGION--->