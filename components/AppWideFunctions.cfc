<cfcomponent displayname="Custom functions" hint="custom functions used throughout the application" output="false">

	<cffunction name="EscRepString" access="remote" hint="Allows you to escape or replace a list of characters" returntype="array">
		<cfargument name="FindWhat" type="string" hint="This is the list of values to find." required="yes">
		<cfargument name="ReplaceWith" type="string" hint="This is the list of values used to replace found values." required="no" default="">
		<cfargument name="SearchString" type="string" hint="This is the string to search" required="yes">
		<cfargument name="ProcessType" type="string" hint="This is the type of escape or replace that's being performed." required="no" default="REPLACE">
		
		<cftry>
			<!--- Process Type:  Replace = Regular Find Character and replace with nothing/something
								 Escape = Escape the specified list of characters.
			--->
			<cfset ReturnArray = ArrayNew(1)>
			<cfif UCASE(arguments.ProcessType) EQ "ESCAPE">
				<cfset EscapeArray = ArrayNew(1)>
				<cfloop index="ListPlace" from="1" to="#ListLen(arguments.FindWhat)#">
					<cfset ListValue = ListGetAt(#arguments.FindWhat#,#ListPlace#)>
					<cfif ListValue eq "&">
						<cfset EscapeArray[#ListPlace#] = "\#ListValue#amp;">
					<cfelse>
						<cfset EscapeArray[#ListPlace#] = "\#ListValue#">
					</cfif>
				</cfloop>
				<cfset EscapeList = ArrayToList(EscapeArray)>
				
				<cfset ReturnArray[1] = "Success">
				<cfset ReturnArray[2] = ReplaceList(#arguments.SearchString#, #ListPlace#, #EscapeList#)>
			<cfelse>
				<cfset ReturnArray[1] = "Success">
				<cfset ReturnArray[2] = ReplaceList(#arguments.SearchString#, #arguments.FindWhat#, #arguments.ReplaceWith#)>
			</cfif>
			
		<cfcatch type="any">
			<cfset ReturnArray[1] = "Failed">
			<cfset ReturnArray[2] = "#cfcatch#">
			<cfdump var="#variables#">
		</cfcatch>
		</cftry>
		
		<cfreturn #ReturnArray#>
	</cffunction>
</cfcomponent>