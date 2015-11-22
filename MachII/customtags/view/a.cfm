<cfsetting enablecfoutputonly="true" />
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
Author: Peter J. Farrell (peter@mach-ii.com)
$Id: a.cfm 1407 2009-03-24 01:02:15Z peterfarrell $

Created version: 1.8.0
Updated version: 1.8.0

Notes:
- REQUIRED ATTRIBUTES
	event	= [string] the event name to build the URL with
	- OR -
	route	= [string] the route name to build the URL with
- OPTIONAL ATTRIBUTES
	module	= [string] the module name to build the URL with (not valid with route attribute)
	label	= [string] the value between the start and closing <a> tags
	p		= [string|struct] name / value pair list or struct of URL parameters to build the URL with
	q		= [string|struct] name / value pair list or struct of query string parameters to append to the end of a route (only valid with route attribute)
	x		= [string|struct] name / value pair list or struct of additional non-standard attribute to insert into the rendered tag output
- STANDARD TAG ATTRIBUTES
- EVENT ATTRIBUTES
- NAMESPACES
	p:key	= Indicates that the attribute "key" name should be used as
--->
<cfif thisTag.ExecutionMode IS "start">
	
	<!--- Setup the tag --->
	<cfinclude template="/MachII/customtags/view/helper/viewTagBuilder.cfm" />
	<cfset setupTag("a", false) />
	
	<!--- Build url parameters --->
	<cfset variables.urlParameters = normalizeStructByNamespace("p") />
	
	<cfif StructKeyExists(attributes, "p")>
		<cfset StructAppend(variables.urlParameters, caller.this.getAppManager().getUtils().parseAttributesIntoStruct(attributes.p), false) />
	</cfif>
	
	<!--- Set required attributes--->
	<cfif StructKeyExists(attributes, "event")>
		<cfif StructKeyExists(attributes, "module")>
			<cfset setAttribute("href", caller.this.buildUrlToModule(attributes.module, attributes.event, variables.urlParameters)) />
		<cfelse>
			<cfset setAttribute("href", caller.this.buildUrl(attributes.event, variables.urlParameters)) />
		</cfif>
	<cfelseif StructKeyExists(attributes, "route")>
		<!--- Build query string parameters --->
		<cfset variables.queryStringParameters = normalizeStructByNamespace("q") />

		<cfif StructKeyExists(attributes, "q")>
			<cfset StructAppend(variables.queryStringParameters, caller.this.getAppManager().getUtils().parseAttributesIntoStruct(attributes.q), false) />
		</cfif>

		<cfset setAttribute("href", caller.this.buildRouteUrl(attributes.route, variables.urlParameters, variables.queryStringParameters))/>
	<cfelseif StructKeyExists(attributes, "useCurrentUrl")>
		<cfset setAttribute("href", caller.this.buildCurrentUrl(variables.urlParameters)) />
	<cfelse>
		<cfthrow type="MachII.customtags.view.a.noEventRouteOrUseCurrentUrl"
			message="The 'a' tag must have an attribute named 'event', 'route' or 'useCurrentUrl'." />
	</cfif>
	
	<!--- Set optional attributes --->
	<cfset setAttributeIfDefined("charset") />
	<cfset setAttributeIfDefined("coords") />
	<cfset setAttributeIfDefined("hreflang") />
	<cfset setAttributeIfDefined("name") />
	<cfset setAttributeIfDefined("rel") />
	<cfset setAttributeIfDefined("rev") />
	<cfset setAttributeIfDefined("shape") />
	<cfset setAttributeIfDefined("target") />
	<cfset setAttributeIfDefined("type") />
	
	<!--- Set standard, non-standard and event attributes --->
	<cfset setStandardAttributes() />
	<cfset setNonStandardAttributes() />
	<cfset setEventAttributes() />
	
	<cfoutput>#doStartTag()#</cfoutput>
<cfelse>	
	<cfif StructKeyExists(attributes, "label")>
		<cfset setContent(HTMLEditFormat(attributes.label)) />
		<cfset thisTag.GeneratedContent = "" />
	</cfif>
	
	<cfoutput>#doEndTag()#</cfoutput>
</cfif>
<cfsetting enablecfoutputonly="false" />