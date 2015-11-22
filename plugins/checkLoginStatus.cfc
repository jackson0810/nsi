<!---
	User:  Derrick-Desktop
	Date:  6/6/2007
	Description:  Check login status plugin for the Online Application Manager (OAM)
	$ID$
--->

<cfcomponent displayname="CheckLoginStatus" output="false" extends="MachII.framework.Plugin" 
		hint="Check Login Status plugin for the NSI">

	<!---
	PROPERTIES
	--->
	
	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="configure" access="public" returntype="void" output="false"
		hint="Configures the plugin.">
	</cffunction>
	
	<!---
	PUBLIC FUNCTIONS
	--->
	<cffunction name="preProcess" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		
		<cfset var firstEvent = arguments.eventContext.getNextEvent() />
		<cfset var eventArgs = structNew() />
		
		<cfif not listFindnocase(getProperty("publicEvents"), firstEvent.getName()) AND lCase(listFirst(firstEvent.getName(),'.')) EQ "admin" AND NOT structKeyExists(session, "isLoggedIn")>
			<cfset arguments.eventContext.clearEventQueue() />
			<cfset arguments.eventContext.announceEvent("admin.showLogin_redirect", eventArgs) />
		</cfif>
	</cffunction>
	
	<!--- <cffunction name="preEvent" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		<cfoutput>&nbsp;SimplePlugin.preEvent()<br /></cfoutput>
	</cffunction>
	
	<cffunction name="postEvent" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		<cfoutput>&nbsp;SimplePlugin.postEvent()<br /></cfoutput>
	</cffunction>
	
	<cffunction name="preView" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		<cfoutput>&nbsp;SimplePlugin.preView()<br /></cfoutput>
	</cffunction>
	
	<cffunction name="postView" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		<cfoutput>&nbsp;SimplePlugin.postView()<br /></cfoutput>
	</cffunction>
	
	<cffunction name="postProcess" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		<cfoutput>&nbsp;SimplePlugin.postProcess()<br /></cfoutput>
	</cffunction>
	
	<cffunction name="handleException" access="public" returntype="void" output="true">
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		<cfargument name="exception" type="MachII.util.Exception" required="true" />
		<cfoutput>&nbsp;SimplePlugin.handleException()<br /></cfoutput>
	</cffunction> --->

	<!---
	PROTECTED FUNCTIONS
	--->

	<!---
	ACCESSORS
	--->


</cfcomponent>