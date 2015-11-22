
			<tr>
				<td colspan="2" class="footer2">
					<div id="footer_address">
						Naval Systems, Inc. MRO&L<br>
						8551-1 Westside Industrial Drive<br>
						Jacksonville, FL 32219-3273<br>
						Phone: (904) 248-4300<br>
						Fax: (904) 248-4301				
					</div>
					<div id="footer_copyright">
						&copy; 2013 Naval Systems, Inc.
					</div>
				</td>
			</tr>
		</table>
		<br/>
		<cfoutput>
		<div class="footer">
			<a href="#application.fileLocationHeader#index.cfm" target="_self">Home</a> | 
			<a href="#application.fileLocationHeader#about.cfm" target="_self">About Us</a> | 
			<a href="#application.fileLocationHeader#capabilities.cfm" target="_self">Capabilities</a> | 
			Clients | 
			China Lake | 
			<a href="/mro/index.cfm">MRO&amp;L</a> | 
			<a href="#application.fileLocationHeader#news.cfm" target="_self">Company News</a> | 
			SeaPort-e | Career Opportunities | Contact Us |
			<cfif NOT listFindNoCase(CGI.CF_TEMPLATE_PATH,"admin","/") OR NOT listFindNoCase(CGI.CF_TEMPLATE_PATH,"admin","\")>
				<a href="/admin/index.cfm" target="_self">Administrative</a>
			</cfif>
		</div>
		</cfoutput>
	</body>
</html>