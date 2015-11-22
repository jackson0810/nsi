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
$Id: BaseComponent.cfc 1467 2009-04-15 23:01:25Z peterfarrell $

Created version: 1.0.10
Updated version: 1.8.0

Notes:
The BaseComponent extended by Listener, EventFilter, Plugin and Property components and gives
quick access to things such as announcing a new event or getting/setting properties.
--->
<cfcomponent
	displayname="BaseComponent"
	output="false"
	hint="Base component for Listeners, EventFilters, Plugins and Properties.">
	
	<!---
	PROPERTIES
	--->
	<cfset variables.appManager = "" />
	<cfset variables.parameters = StructNew() />
	<cfset variables.log = "" />
	<cfset variables.baseProxy = "" />
	
	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" returntype="void" output="false"
		hint="Used by the framework for initialization. Do not override.">
		<cfargument name="appManager" type="MachII.framework.AppManager" required="true"
			hint="The framework instances' AppManager." />
		<cfargument name="parameters" type="struct" required="false" default="#StructNew()#"
			hint="The initial set of configuration parameters." />
		
		<!--- Run setters --->
		<cfset setAppManager(arguments.appManager) />
		<cfset setParameters(arguments.parameters) />
		
		<cfset setLog(getAppManager().getLogFactory()) />
	</cffunction>
	
	<cffunction name="setLog" access="public" returntype="void" output="false"
		hint="Uses the log factory to create a log.">
		<cfargument name="logFactory" type="MachII.logging.LogFactory" required="true" />
		<cfset variables.log = arguments.logFactory.getLog(getMetadata(this).name) />
	</cffunction>
	<cffunction name="getLog" access="public" returntype="MachII.logging.Log" output="false"
		hint="Gets the log.">
		<cfreturn variables.log />
	</cffunction>
	
	<cffunction name="setProxy" access="public" returntype="void" output="false"
		hint="Sets the base proxy.">
		<cfargument name="proxy" type="MachII.framework.BaseProxy" required="true" />
		<cfset variables.baseProxy = arguments.proxy>
	</cffunction>
	<cffunction name="getProxy" access="public" returntype="any" output="false"
		hint="Gets the base proxy.">
		<cfreturn variables.baseProxy />
	</cffunction>

	<cffunction name="configure" access="public" returntype="void" output="false"
		hint="Override to provide custom configuration logic. Called after init().">
		<!--- Does nothing --->
	</cffunction>
	
	<cffunction name="deconfigure" access="public" returntype="void" output="false"
		hint="Override to provide custom deconfiguration logic. Also called when target object is reloaded.">
		<!--- Does nothing --->
	</cffunction>

	<!---
	PUBLIC FUNCTIONS
	--->	
	<cffunction name="announceEvent" access="public" returntype="void" output="false"
		hint="Announces a new event to the framework.">
		<cfargument name="eventName" type="string" required="true"
			hint="The name of the event to announce." />
		<cfargument name="eventArgs" type="struct" required="false" default="#StructNew()#"
			hint="A struct of arguments to set as the event's args." />
		<cfset getAppManager().getRequestManager().getRequestHandler().getEventContext().announceEvent(arguments.eventName, arguments.eventArgs) />
	</cffunction>
	
	<cffunction name="announceEventInModule" access="public" returntype="void" output="false"
		hint="Announces a new event to the framework.">
		<cfargument name="moduleName" type="string" required="true"
			hint="The name of the module in which event exists." />
		<cfargument name="eventName" type="string" required="true"
			hint="The name of the event to announce." />
		<cfargument name="eventArgs" type="struct" required="false" default="#StructNew()#"
			hint="A struct of arguments to set as the event's args." />
		<cfset getAppManager().getRequestManager().getRequestHandler().getEventContext().announceEvent(arguments.eventName, arguments.eventArgs, arguments.moduleName) />
	</cffunction>
	
	<cffunction name="redirectEvent" access="public" returntype="void" output="false"
		hint="Triggers a server side redirect to an event.">
		<cfargument name="eventName" type="string" required="true"
			hint="The name of the event to redirect to." />
		<cfargument name="args" type="any" required="false" default=""
			hint="You can pass in either a struct of arguments or a list of event args names from the current event to place in the url." />
		<cfargument name="persist" type="boolean" required="false" default="false"
			hint="Choose whether or not to sort any of the persistArgs into the session scope." />
		<cfargument name="persistArgs" type="any" required="false" default=""
			hint="You can pass in either a struct of items or a list of event args to persist." />
		<cfargument name="statusType" type="string" required="false" default=""
			hint="String that represent which http status type to use in the redirect.">
		<cfset getAppManager().getRequestManager().getRequestHandler().getEventContext().redirectEvent(
				arguments.eventName, arguments.args, 
				getAppManager().getRequestManager().getRequestHandler().getEventContext().getAppManager().getModuleName(), 
				arguments.persist, arguments.persistArgs, arguments.statusType) />
	</cffunction>
	
	<cffunction name="redirectEventInModule" access="public" returntype="void" output="false"
		hint="Triggers a server side redirect to an event.">
		<cfargument name="moduleName" type="string" required="true"
			hint="The name of the module in which event exists." />
		<cfargument name="eventName" type="string" required="true"
			hint="The name of the event to redirect to." />
		<cfargument name="args" type="any" required="false" default=""
			hint="You can pass in either a struct of arguments or a list of event args names from the current event to place in the url." />
		<cfargument name="persist" type="boolean" required="false" default="false"
			hint="Choose whether or not to sort any of the persistArgs into the session scope." />
		<cfargument name="persistArgs" type="any" required="false" default=""
			hint="You can pass in either a struct of items or a list of event args to persist." />
		<cfargument name="statusType" type="string" required="false" default=""
			hint="String that represent which http status type to use in the redirect.">
		<cfset getAppManager().getRequestManager().getRequestHandler().getEventContext().redirectEvent(
			arguments.eventName, arguments.args, arguments.moduleName, arguments.persist, arguments.persistArgs, arguments.statusType) />
	</cffunction>
	
	<cffunction name="redirectRoute" access="public" returntype="void" output="false"
		hint="Triggers a server side redirect to a route.">
		<cfargument name="routeName" type="string" required="true"
			hint="The name of the route." />
		<cfargument name="routeArgs" type="any" required="false" default=""
			hint="You can pass in either a struct of arguments or a list of event args names from the current event to place in the url." />
		<cfargument name="persist" type="boolean" required="false" default="false"
			hint="Choose whether or not to sort any of the persistArgs into the session scope." />
		<cfargument name="persistArgs" type="any" required="false" default=""
			hint="You can pass in either a struct of items or a list of event args to persist." />
		<cfargument name="statusType" type="string" required="false" default=""
			hint="String that represent which http status type to use in the redirect.">
		<cfset getAppManager().getRequestManager().getRequestHandler().getEventContext().redirectRoute(
			arguments.routeName, arguments.routeArgs, arguments.persist, arguments.persistArgs, arguments.statusType) />
	</cffunction>
	
	<cffunction name="redirectUrl" access="public" returntype="void" output="false"
		hint="Triggers a server side redirect to a specific url.">
		<cfargument name="redirectUrl" type="string" required="true"
			hint="The url to redirect to. Should be in the form of 'http://www.google.com'." />
		<cfargument name="statusType" type="string" required="false" default=""
			hint="String that represent which http status type to use in the redirect.">
		<cfset getAppManager().getRequestManager().getRequestHandler().getEventContext().redirectUrl(
			arguments.redirectUrl, arguments.statusType) />
	</cffunction>
	
	<cffunction name="buildUrl" access="public" returntype="string" output="false"
		hint="Builds a framework specific url without specifying a module name. Does not escape entities.">
		<cfargument name="eventName" type="string" required="true"
			hint="Name of the event to build the url with." />
		<cfargument name="urlParameters" type="any" required="false" default=""
			hint="Name/value pairs (urlArg1=value1|urlArg2=value2) to build the url with or a struct of data." />
		<cfargument name="urlBase" type="string" required="false"
			hint="Base of the url. Defaults to the value of the urlBase property." />
					
		<!--- If we are loading, then fall back to current module, because this means
			BuildUrl is being called during configure() and there is no current request --->
		<cfif getAppManager().isLoading()>
			<cfset arguments.moduleName = getAppManager().getModuleName() />
		<!--- Grab the module name from the context of the currently executing request--->
		<cfelse>
			<cfset arguments.moduleName = getAppManager().getRequestManager().getRequestHandler().getEventContext().getAppManager().getModuleName() />
		</cfif>
		
		<cfreturn getAppManager().getRequestManager().buildUrl(argumentcollection=arguments) />
	</cffunction>
	
	<cffunction name="buildUrlToModule" access="public" returntype="string" output="false"
		hint="Builds a framework specific url. Does not escape entities.">
		<cfargument name="moduleName" type="string" required="true"
			hint="Name of the module to build the url with. Defaults to base module if empty string." />
		<cfargument name="eventName" type="string" required="true"
			hint="Name of the event to build the url with." />
		<cfargument name="urlParameters" type="any" required="false" default=""
			hint="Name/value pairs (urlArg1=value1|urlArg2=value2) to build the url with or a struct of data." />
		<cfargument name="urlBase" type="string" required="false"
			hint="Base of the url. Defaults to the value of the urlBase property." />
		<cfreturn getAppManager().getRequestManager().buildUrl(argumentcollection=arguments) />
	</cffunction>
	
	<cffunction name="resolveValueByEnvironment" access="public" returntype="any" output="false"
		hint="Resolves a value by deployed environment name or group (explicit environment names are searched first then groups then default).">
		<cfargument name="environmentValues" type="struct" required="true"
			hint="A struct of environment values. Key prefixed with 'group:' are treated as groups and keys can contain ',' to indicate multiple environments names or groups." />
		<cfargument name="defaultValue" type="any" required="false"
			hint="A default value to provide if no environment is found. An exception will be thrown if no 'defaultValue' is provide and no value can be resolved." />
		
		<cfset var currentEnvironmentName = getAppManager().getEnvironmentName() />
		<cfset var currentEnvironmentGroup = getAppManager().getEnvironmentGroup() />
		<cfset var valuesByEnvironmentName = StructNew() />
		<cfset var valuesByEnvironmentGroup = StructNew() />
		<cfset var validEnvironmentGroupNames = getAppManager().getEnvironmentGroupNames() />
		<cfset var scrubbedEnvironmentGroups = "" />
		<cfset var i = "" />
		<cfset var key = "" />
		<cfset var utils = getUtils() />
		
		<!--- Build values by name and group --->
		<cfloop collection="#arguments.environmentValues#" item="key">
			<!--- An environment group if it is prefixed with 'group:' --->
			<cfif key.toLowerCase().startsWith("group:")>
				<!--- Removed 'group:' and trim each list element --->
				<cfset scrubbedEnvironmentGroups = utils.trimList(Right(key, Len(key) - 6)) />
				
				<cfloop list="#scrubbedEnvironmentGroups#" index="i">
					<cfset getAssert().isTrue(ListFindNoCase(validEnvironmentGroupNames, i)
							, "An environment group named '#i#' is not a valid environment group name. Valid environment group names: '#validEnvironmentGroupNames#'.") />
					<cfset valuesByEnvironmentGroup[i] = arguments.environmentValues[key] />
				</cfloop>
			<!--- An explicit environment name if it does not have a prefix --->
			<cfelse>
				<cfloop list="#key#" index="i">
					<cfset valuesByEnvironmentName[i] = arguments.environmentValues[key] />
				</cfloop>
			</cfif>
		</cfloop>
		
		<!--- 
			Typically, we prefer to only have one return, however in this case 
			it is easier to just short-ciruit the process.
			
			Resolution order:
			 * by explicit environment name
			 * by environment group
			 * by default value (if provided)
			 * throw exception
		--->
		
		<!--- Resolve value by explicit environment name --->
		<cfif StructKeyExists(valuesByEnvironmentName, currentEnvironmentName)>
			<cfreturn valuesByEnvironmentName[currentEnvironmentName] />
		</cfif>
		
		<!--- Resolve value by explicit environment group --->
		<cfif StructKeyExists(valuesByEnvironmentGroup, currentEnvironmentGroup)>
			<cfreturn valuesByEnvironmentGroup[currentEnvironmentGroup] />
		</cfif>
		
		<!--- No environment to resolve, return default value if provided --->
		<cfset getAssert().isTrue(StructKeyExists(arguments, "defaultValue")
					, "Cannot resolve value by environment name or group and no default value was provided. Provide an explicit value by environment name, environment group or provide a default value. Current environment name: '#currentEnvironmentName#' Current environment group: '#currentEnvironmentGroup#'") />
		<cfreturn arguments.defaultValue />
	</cffunction>
	
	<cffunction name="setParameter" access="public" returntype="void" output="false"
		hint="Sets a configuration parameter.">
		<cfargument name="name" type="string" required="true"
			hint="The parameter name." />
		<cfargument name="value" type="any" required="true"
			hint="The parameter value." />
		<cfset variables.parameters[arguments.name] = arguments.value />
	</cffunction>
	<cffunction name="getParameter" access="public" returntype="any" output="false"
		hint="Gets a configuration parameter value, or a default value if not defined.">
		<cfargument name="name" type="string" required="true"
			hint="The parameter name." />
		<cfargument name="defaultValue" type="any" required="false" default=""
			hint="The default value to return if the parameter is not defined. Defaults to a blank string." />
		<cfif isParameterDefined(arguments.name)>
			<cfreturn bindValue(arguments.name, variables.parameters[arguments.name]) />
		<cfelse>
			<cfreturn arguments.defaultValue />
		</cfif>
	</cffunction>
	<cffunction name="isParameterDefined" access="public" returntype="boolean" output="false"
		hint="Checks to see whether or not a configuration parameter is defined.">
		<cfargument name="name" type="string" required="true"
			hint="The parameter name." />
		<cfreturn StructKeyExists(variables.parameters, arguments.name) />
	</cffunction>
	<cffunction name="getParameterNames" access="public" returntype="string" output="false"
		hint="Returns a comma delimited list of parameter names.">
		<cfreturn StructKeyList(variables.parameters) />
	</cffunction>
	<cffunction name="hasParameter" access="public" returntype="boolean" output="false"
		hint="DEPRECATED - use isParameterDefined() instead. Checks to see whether or not a configuration parameter is defined.">
		<cfargument name="name" type="string" required="true"
			hint="The parameter name." />
		
		<cfif getLog().isWarnEnabled()>
			<cfset getLog().warn("DEPRECATED: The hasParameter() method has been deprecated. Please use isParameterDefined() instead. Called from component '#getComponentNameForLogging()#'.") />
		</cfif>
		
		<cfreturn StructKeyExists(variables.parameters, arguments.name) />
	</cffunction>

	<cffunction name="setProperty" access="public" returntype="void" output="false"
		hint="Sets the specified property - this is just a shortcut for getPropertyManager().setProperty()">
		<cfargument name="propertyName" type="string" required="true"
			hint="The name of the property to set."/>
		<cfargument name="propertyValue" type="any" required="true" 
			hint="The value to store in the property." />
		<cfset getPropertyManager().setProperty(arguments.propertyName, arguments.propertyValue) />
	</cffunction>
	<cffunction name="getProperty" access="public" returntype="any" output="false"
		hint="Gets the specified property - this is just a shortcut for getPropertyManager().getProperty()">
		<cfargument name="propertyName" type="string" required="true"
			hint="The name of the property to return."/>
		<cfargument name="defaultValue" type="any" required="false" default=""
			hint="The default value to use if the requested property is not defined." />
		<cfreturn getPropertyManager().getProperty(arguments.propertyName, arguments.defaultValue) />
	</cffunction>
	
	<cffunction name="getComponentNameForLogging" access="public" returntype="string" output="false"
		hint="Gets the component name for logging.">
		<cfreturn ListLast(getMetaData(this).name, ".") />
	</cffunction>
	
	<!---
	PUBLIC FUNCTIONS - UTILS
	--->
	<cffunction name="getPropertyManager" access="public" returntype="MachII.framework.PropertyManager" output="false"
		hint="Gets the components PropertyManager instance.">
		<cfreturn getAppManager().getPropertyManager() />
	</cffunction>
	
	<cffunction name="getUtils" access="public" returntype="MachII.util.Utils" output="false"
		hint="Gets the Utils component.">
		<cfreturn getAppManager().getUtils() />
	</cffunction>
	
	<cffunction name="getAssert" access="public" returntype="MachII.util.Assert" output="false"
		hint="Gets the Assert component.">
		<cfreturn getAppManager().getAssert() />
	</cffunction>

	<!---
	PROTECTED FUNCTIONS
	--->
	<cffunction name="bindValue" access="private" returntype="any" output="false"
		hint="Binds placeholders to any passed value.">
		<cfargument name="parameterName" type="string" required="true"
			hint="The name of the parameter to bind." />
		<cfargument name="parameterValue" type="any" required="true"
			hint="The current value of the parameter." />
		
		<cfset var propertyName = "" />
		<cfset var value =  arguments.parameterValue />
		
		<!--- Can only bind simple parameter values --->
		<cfif IsSimpleValue(arguments.parameterValue) AND REFindNoCase("\${(.)*?}", arguments.parameterValue)>
			<cfset propertyName = Mid(arguments.parameterValue, 3, Len(arguments.parameterValue) -3) />
			<cfif getPropertyManager().isPropertyDefined(propertyName) 
				OR (IsObject(getAppManager().getParent()) AND getAppManager().getParent().getPropertyManager().isPropertyDefined(propertyName))>
				<cfset value = getProperty(propertyName) />
			<cfelse>
				<cfthrow type="MachII.framework.ProperyNotDefinedToBindToParameter" 
					message="The required property is not defined to bind to a parameter named '#arguments.parameterName#'." />
			</cfif>
		</cfif>
		
		<cfreturn value />
	</cffunction>

	<!---
	ACCESSORS
	--->
	<cffunction name="setAppManager" access="private" returntype="void" output="false"
		hint="Sets the components AppManager instance.">
		<cfargument name="appManager" type="MachII.framework.AppManager" required="true"
			hint="The AppManager instance to set." />
		<cfset variables.appManager = arguments.appManager />
	</cffunction>
	<cffunction name="getAppManager" access="public" returntype="MachII.framework.AppManager" output="false"
		hint="Gets the components AppManager instance.">
		<cfreturn variables.appManager />
	</cffunction>

	<cffunction name="setParameters" access="public" returntype="void" output="false"
		hint="Sets the full set of configuration parameters for the component.">
		<cfargument name="parameters" type="struct" required="true"
			hint="Struct to set as parameters" />
		
		<cfset var key = "" />
		
		<cfloop collection="#arguments.parameters#" item="key">
			<cfset setParameter(key, arguments.parameters[key]) />
		</cfloop>
	</cffunction>
	<cffunction name="getParameters" access="public" returntype="struct" output="false"
		hint="Gets the full set of configuration parameters for the component.">
		
		<cfset var key = "" />
		<cfset var resolvedParameters = StructNew() />
		
		<!--- Get values and bind placeholders --->
		<cfloop collection="#variables.parameters#" item="key">
			<cfset resolvedParameters[key] = bindValue(key, variables.parameters[key]) />
		</cfloop>
		
		<cfreturn resolvedParameters />
	</cffunction>

</cfcomponent>