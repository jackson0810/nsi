<cfdirectory action="list" directory="#GetDirectoryFromPath(GetTemplatePath())#/images/" filter="*.gif" name="imageList">

<cfdump var="#imageList#">
<cfoutput>
<cfloop query="imageList">
	<cftry>
		<cfimage source="#GetDirectoryFromPath(GetTemplatePath())#images/#imageList.name#" action="resize" width="125" height="" destination="#GetDirectoryFromPath(GetTemplatePath())#images/thumbs/#ListFirst(imageList.name,'.')#_thumb.gif">
		#GetDirectoryFromPath(GetTemplatePath())#images/#imageList.name# - #ListFirst(imageList.name,'.')#_thumb.gif<br/><cfflush>
		<cfcatch type="any">
			<h2>Cant read document - #imageList.name#</h2>
		</cfcatch>
	</cftry>
</cfloop>
</cfoutput>