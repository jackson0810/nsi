<cfset variables.exception = event.getArg("exception") />
<DIV ID="content" CLASS="home" style="padding-left:15px;">
<cfoutput>	
	<h3>#event.getArg("pageTitle")#</h3>
	<cfsavecontent variable="ErrorInformation">
		<TABLE CELLPADDING="16" CELLSPACING="3" WIDTH="100%" CLASS="errortext" >
			<TR>
				<TD ALIGN="LEFT" COLSPAN="2">
					<B><CENTER><FONT COLOR="##FF0000">ERROR INFORMATION</FONT></CENTER></B>
				</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" COLSPAN="2">
					<P>There has been an error in the application.  An email containing the information below has been sent to the Administrators</P>
				</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>Error Date/Time:&nbsp;&nbsp;</B></TD>
				<TD>#DateFormat(Now(), "DDDD, MMMM DD, YYYY")# #TimeFormat(Now(), "HH:mm:ss")#</TD>
			</TR>	
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>User's Browser:&nbsp;&nbsp;</B></TD>
				<TD>#CGI.HTTP_USER_AGENT#</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>User's IP Address:&nbsp;&nbsp;</B></TD>
				<TD>#CGI.REMOTE_ADDR#</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>System Message:&nbsp;&nbsp;</B></TD>
				<TD VALIGN="TOP">#variables.exception.getMessage()#</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>Message Detail:&nbsp;&nbsp;</B></TD>
				<TD VALIGN="TOP">#variables.exception.getDetail()#</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>Extended Information:&nbsp;&nbsp;</B></TD>
				<TD VALIGN="TOP">#variables.exception.getExtendedInfo()#</TD>
			</TR>
			<TR>
				<TD ALIGN="LEFT" VALIGN="TOP" NOWRAP><B>Tag Context:&nbsp;&nbsp;</B></TD>
				<TD VALIGN="TOP"><cfset variables.tagCtxArr = variables.exception.getTagContext() />
					<cfloop index="i" from="1" to="#ArrayLen(variables.tagCtxArr)#">
						<cfset variables.tagCtx = variables.tagCtxArr[i] />
						<p>#variables.tagCtx['template']# (#variables.tagCtx['line']#)</p>
					</cfloop>
				</TD>
			</TR>
		 	</TABLE>
	</cfsavecontent>
	
	#ErrorInformation#
	
	<cfsavecontent variable="ErrorInformationAppended">
		#ErrorInformation#
		<table width="100%">
			<tr>
				<td>
					<cfdump var="#variables.exception.getCaughtException()#" expand="true" />
				</td>
			</tr>
		</table>
	</cfsavecontent>
</cfoutput>
</DIV>