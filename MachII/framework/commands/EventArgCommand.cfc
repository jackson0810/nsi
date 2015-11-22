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
Author: Ben Edwards (ben@ben-edwards.com)
$Id: EventArgCommand.cfc 1574 2009-05-28 04:47:16Z peterfarrell $

Created version: 1.0.0
Updated version: 1.8.0

Notes:
--->
<cfcomponent 
	displayname="EventArgCommand" 
	extends="MachII.framework.Command"
	output="false"
	hint="A Command for putting an event arg into the current event.">
	
	<!---
	PROPERTIES
	--->
	<cfset variables.commandType = "event-arg" />
	<cfset variables.argName = "" />
	<cfset variables.argValue = "" />
	<cfset variables.argVariable = "" />
	<cfset variables.overwrite = true />
	
	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" returntype="EventArgCommand" output="false"
		hint="Used by the framework for initialization.">
		<cfargument name="argName" type="string" required="true" />
		<cfargument name="argValue" type="any" required="false" default="" />
		<cfargument name="argVariable" type="string" required="false" default="" />
		<cfargument name="overwrite" type="boolean" required="false" default="true" />
		
		<cfset setArgName(arguments.argName) />
		<cfset setArgValue(arguments.argValue) />
		<cfset setArgVariable(arguments.argVariable) />
		<cfset setOverwrite(arguments.overwrite) />
		
		<cfreturn this />
	</cffunction>
	
	<!---
	PUBLIC FUNCTIONS
	--->
	<cffunction name="execute" access="public" returntype="boolean" output="false"
		hint="Executes the command.">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		<cfargument name="eventContext" type="MachII.framework.EventContext" required="true" />
		
		<cfset var value = "" />
		<cfset var propertyManager = arguments.eventContext.getAppManager().getPropertyManager() />
		<cfset var log = getLog() />

		<!--- Get value (variable attribute and then event-arg) --->
		<cfif isArgVariableDefined()>
			<cfset value = getArgVariableValue() />
		<cfelseif isArgValueDefined()>
			<cfif getExpressionEvaluator().isExpression(getArgValue())>
				<cfset value = getExpressionEvaluator().evaluateExpression(getArgValue(), arguments.event, propertyManager) />
			<cfelse>
				<cfset value = getArgValue() />
			</cfif>
		</cfif>
		
		<!--- Set event-arg if overwrite is true or if event-arg is not defined
			No need to check if overwrite is false since CF uses short-circuit logic --->
		<cfif getOverwrite() OR NOT arguments.event.isArgDefined(getArgName())>
			<cfif log.isDebugEnabled()>
				<cfif IsSimpleValue(value)>
					<cfset log.debug("Set event-arg named '#getArgName()#' with a value of '#value#'.") />
				<cfelse>
					<cfset log.debug("Set event-arg named '#getArgName()#' with a value of:", value) />
				</cfif>
			</cfif>
			
			<cfset arguments.event.setArg(getArgName(), value) />
		<cfelse>
			<cfif log.isDebugEnabled()>				
				<cfif IsSimpleValue(value)>
					<cfset log.debug("An event-arg named '#getArgName()#' with overwrite 'false' is already defined. Current value or variable: '#value#'.") />
				<cfelse>
					<cfset log.debug("An event-arg named '#getArgName()#' with overwrite 'false' is already defined.", value) />
				</cfif>
			</cfif>
		</cfif>
		
		<cfreturn true />
	</cffunction>
	
	<!---
	PROTECTED FUNCTIONS
	--->
	<cffunction name="getArgVariableValue" access="private" returntype="any" output="false"
		hint="Gets an arg variable value by using evaluate.">
		
		<cfset var value = "" />
		<cfset var log = getLog() />
		
		<cfif IsDefined(getArgVariable())>
			<cfset value = Evaluate(getArgVariable()) />
		<cfelseif log.isDebugEnabled()>
			<cfset log.debug("No value found for arg variable named '#getArgVariable()#' for event-arg named '#getArgName()#'.") />
		</cfif>
		
		<cfreturn value />
	</cffunction>
	
	<!---
	ACCESSORS
	--->
	<cffunction name="setArgName" access="private" returntype="void" output="false">
		<cfargument name="argName" type="string" required="true" />
		<cfset variables.argName = arguments.argName />
	</cffunction>
	<cffunction name="getArgName" access="private" returntype="string" output="false">
		<cfreturn variables.argName />
	</cffunction>
	
	<cffunction name="setArgValue" access="private" returntype="void" output="false">
		<cfargument name="argValue" type="any" required="true" />
		<cfset variables.argValue = arguments.argValue />
	</cffunction>
	<cffunction name="getArgValue" access="private" returntype="any" output="false">
		<cfreturn variables.argValue />
	</cffunction>
	<cffunction name="isArgValueDefined" access="private" returntype="boolean" output="false">
		<cfreturn (IsSimpleValue(variables.argValue) AND Len(variables.argValue)) OR NOT IsSimpleValue(variables.argValue) />
	</cffunction>
	
	<cffunction name="setArgVariable" access="private" returntype="void" output="false">
		<cfargument name="argVariable" type="string" required="true" />
		<cfset variables.argVariable = arguments.argVariable />
	</cffunction>
	<cffunction name="getArgVariable" access="private" returntype="string" output="false">
		<cfreturn variables.argVariable />
	</cffunction>
	<cffunction name="isArgVariableDefined" access="private" returntype="boolean" output="false">
		<cfreturn Len(variables.argVariable) />
	</cffunction>

	<cffunction name="setOverwrite" access="private" returntype="void" output="false">
		<cfargument name="overwrite" type="string" required="true" />
		<!--- Enforce that overwrite is always true unless 'false' is passed --->
		<cfset variables.overwrite = (arguments.overwrite IS NOT "false") />
	</cffunction>
	<cffunction name="getOverwrite" access="private" returntype="boolean" output="false">
		<cfreturn variables.overwrite />
	</cffunction>

</cfcomponent>