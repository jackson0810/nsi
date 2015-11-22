<cfset theDirectory = "#Replace(GetDirectoryFromPath(GetTemplatePath()),'/views','','ALL')#images/photoAlbum/golfPictures" />

<cfdirectory action="list" directory="/Library/WebServer/Documents/nsim2/images/photoAlbum/golfPictures/" name="golfPics" filter="*.JPG"/>
<h2>Golf Pics</h2>
<cfdump var="#golfPics#">
<cfdump var="#theDirectory#">

<cfloop query="golfPics">
	<cfset theThumbName = "#listFirst(golfPics.name,".")#_s.#listlast(golfPics.name,'.')#" />
		<cfset theMedName = "#listFirst(golfPics.name,".")#_m.#listlast(golfPics.name,'.')#" />
		<cfoutput>#theThumbName# - #TheMedName#</cfoutput><br/><cfflush>
		<cfimage action="resize" width="75" height="" source="#theDirectory#/#golfPics.name#" destination="#theDirectory#/thumbs/#theThumbName#" />
		<cfimage action="resize" width="500" height="" source="#theDirectory#/#golfPics.name#" destination="#theDirectory#/display/#theMedName#" />

</cfloop>