<cfsilent>
	<cfset picDirectories = event.getArg('picDirectories') />
	<cfset message = event.getArg("message","") />
</cfsilent>
<cfoutput>
<!---BEGIN EDITABLE REGION--->
<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="15%" valign="top" bgcolor="##6699CC" style="padding: 0 5px 0 5px;">
			<div align="center">
				<cfoutput>
				<img src="/images/0430v22.jpg" width="125" /><br/><br/>
				<img src="/images/h1_flight.jpg" width="125" /><br/><br/>
			</cfoutput>
			</div>
		</td>
		<td valign="top" style="padding-left:10px;">
			<h1>#event.getArg('pageTitle')#</h1>
			<div class="required">#message#</div>
			<form action="#BuildURL('admin.processPhotoAlbum')#" method="post" name="processPhotoAlbum">
				<table border="0">
					<cfloop query="picDirectories">
					<tr>
						<td width="10%"><input type="radio" value="#picDirectories.name#" name="whichDirectory" /></td>
						<td>#picDirectories.name#</td>
					</tr>
				</cfloop>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit" value="Procss Photo Album Images" /></td>
				</tr>
			</form>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>