<!---
License:
Copyright 2008 GreatBizTools, LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Copyright: GreatBizTools, LLC
$Id: ApplicationProperty.cfc 1546 2009-05-12 21:57:07Z peterfarrell $

Created version: 1.0.0
Updated version: 1.0.0

Notes:
--->
<cfcomponent 
	displayname="ApplicationProperty" 
	extends="MachII.framework.Property" 
	output="false" 
	hint="Performs on module start operations.">

	<!---
	PROPERTIES
	--->
	
	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="configure" access="public" returntype="void" output="false"
		hint="Performs on module start operations.">
		
		<!--- Setup if we use sessions or client --->
		<cfset discoverSessionManagement() />
		<!--- Setup if login should be disabled on this environment --->
		<cfset discoverEnableLoginByEnvironment() />
		
		<!--- Ensure that the password has been set if login is enabled --->
		<cfif getProperty("enableLogin")
			AND (NOT getPropertyManager().isPropertyDefined("password") 
			OR NOT Len(getProperty("password")))>
			<cfthrow type="MachIIDashboard.ApplicationProperty.noPasswordSet" 
				message="You must set a password when defining the dashboard module. See README." />
		</cfif>
		
		<!--- Set module name to the properties for use by the exception viewer --->
		<cfset setProperty("moduleName", getAppManager().getModuleName()) />
	</cffunction>

	<!---
	PROTECTED FUNCTIONS
	--->
	<cffunction name="discoverSessionManagement" access="private" returntype="void" output="false"
		hint="Discovers how the session management is setup for this application.">
		
		<cfset var scope = "" />
		<cfset var foundScope = false />
		
		<cfif NOT foundScope>
			<cftry>
				<cfset scope = StructGet("session") />
				
				<cfset setProperty("sessionManagementScope", "session") />
				<cfset foundScope = true />
				<cfcatch type="any">
					<!--- Do nothing --->
				</cfcatch>
			</cftry>
		</cfif>
		
		<cfif NOT foundScope>
			<cftry>
				<cfset scope = StructGet("client") />
				
				<cfset setProperty("sessionManagementScope", "client") />
				<cfset foundScope = true />
				<cfcatch type="any">
					<!--- Do nothing --->
				</cfcatch>
			</cftry>
		</cfif>
		
		<!--- No session management is on so throw an error --->
		<cfif NOT foundScope>
			<cfthrow type="MachIIDashboard.LoginPlugin.noSessionManagement"
				message="The dashboard needs the session or client scopes for session management."
				detail="Please enabled session or client scope in your Application.cfc." />
		</cfif>
	</cffunction>
	
	<cffunction name="discoverEnableLoginByEnvironment" access="private" returntype="void" output="false"
		hint="Decides of login should be enabled by environment.">
		
		<cfset var environments = getProperty("enableLogin", true) />
		
		<cfif IsStruct(environments)>
			<cfset setProperty("enableLogin", resolveValueByEnvironment(environments, true)) />	
		</cfif>
	</cffunction>

</cfcomponent>