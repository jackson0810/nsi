<cfcomponent output="false">

	<!---
	PROPERTIES - APPLICATION SPECIFIC
	--->
	<cfset this.name = "NSI" />
	<cfset this.loginStorage = "session" />
	<cfset this.sessionManagement = true />
	<cfset this.setClientCookies = true />
	<cfset this.setDomainCookies = false />
	<cfset this.sessionTimeOut = CreateTimeSpan(0,2,0,0) />
	<cfset this.applicationTimeOut = CreateTimeSpan(30,0,0,0) />

	<!---
	PUBLIC FUNCTIONS
	--->
	<cffunction name="onApplicationStart" returnType="void" output="false"
		hint="Only runs when the App is started.">
		
		<cfsetting requesttimeout="120" />
		<cfset application.startTime = Now() />
	</cffunction>

	<cffunction name="onApplicationEnd" returntype="void" output="false"
		hint="Only runs when the App is shut down.">
		<cfargument name="ApplicationScope" required="true"/>
	</cffunction>

	<cffunction name="onSessionStart" returntype="void" output="false"
		hint="Only runs when a session is created.">
		<!---
		Example onSessionStart in a Session Facade
		<cfset getProperty("sessionFacade").onSessionStart() />
		--->
	</cffunction>

	<cffunction name="onSessionEnd" returntype="void" output="false"
		hint="Only run when a session ends.">
		<cfargument name="SessionScope" required="true"/>
		<!---
		Example onSessionEnd
		<cfset getProperty("sessionFacade").onSessionEnd(arguments.SessionScope) />
		--->
	</cffunction>

	<cffunction name="onRequestStart" returnType="void" output="true"
		hint="Run at the start of a page request.">
		<cfargument name="targetPage" type="string" required="true" />

		<!--- Request Scope Variable Defaults --->
		<cfset request.self = "index.cfm">

		<!--- Set per session cookies if not using J2EE session management --->
		<cfif StructKeyExists(session, "cfid") AND (NOT StructKeyExists(cookie, "cfid") OR NOT StructKeyExists(cookie, "cftoken"))>
			<cfcookie name="cfid" value="#session.cfid#" />
			<cfcookie name="cftoken" value="#session.cftoken#" />
		</cfif>

		<!--- Temporarily override the default config mode
			Set the configuration mode (when to reinit): -1=never, 0=dynamic, 1=always --->
		<cfif StructKeyExists(url, "reinit")>
			<cfset onApplicationStart() />
			<!--- <cfhtmlhead text="<script language=""JavaScript"">alert('Application was refreshed.');</script>"> --->
			<cfsetting requesttimeout="120" />
		</cfif>
	</cffunction>

</cfcomponent>