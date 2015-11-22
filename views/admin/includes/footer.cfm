
			<tr>
				<td colspan="2" class="footer2">
					<div id="footer_address">
						Naval Systems, Inc.<br>
						21491 Great Mills Road, Suite 100<br>
						Lexington Park, MD 20653<br>
						Phone: (301) 737-1911<br>
						Fax: (301) 737-1940					
					</div>
					<div id="footer_copyright">
						&copy; 2009 Naval Systems, Inc.
					</div>
				</td>
			</tr>
		</table>
		<br/>
		<cfoutput>
		<div class="footer">
			<a href="#application.fileLocationHeader#index.cfm">Home</a> | 
			<a href="#application.fileLocationHeader#about.cfm">About Us</a> | 
			<a href="#application.fileLocationHeader#capabilities.cfm">Capabilities</a> | 
			<a href="/clients.cfm">Clients</a> | 
			<a href="/china/china.cfm"> | 
			<a href="/mro/index.cfm">MRO&amp;L</a> | 
			<a href="#application.fileLocationHeader#news.cfm">Company News</a> | 
			<a href="/contractVehicles.cfm">Contract Vehicles</a> | 
			<a href="/careerOpps.cfm">Career Opportunities</a> | 
			<a href="/contact.cfm">Contact Us</a> |
			<cfif NOT listFindNoCase(CGI.CF_TEMPLATE_PATH,"admin","/") OR NOT listFindNoCase(CGI.CF_TEMPLATE_PATH,"admin","\")>
				<a href="/admin/index.cfm">Administrative</a>
			</cfif>
		</div>
		</cfoutput>
	</body>
</html>