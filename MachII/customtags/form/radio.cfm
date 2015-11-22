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
$Id: radio.cfm 1424 2009-03-28 07:11:07Z peterfarrell $

Created version: 1.8.0
Updated version: 1.8.0

Notes:
- REQUIRED ATTRIBUTES
	name		= AUTOMATIC|[string]
	value		= AUTOMATIC|[string]
	type		= text
- OPTIONAL ATTRIBUTES
	disabled	= disabled|[null]
	checked		= checked|[null] 
	size		= [numeric]
- STANDARD TAG ATTRIBUTES
- EVENT ATTRIBUTES
--->
<cfif thisTag.ExecutionMode IS "start">

	<!--- Setup the tag --->
	<cfinclude template="/MachII/customtags/form/helper/formTagBuilder.cfm" />		
	<cfset setupTag("input", true) />
	
	<!--- Ensure certain attributes are defined --->
	<cfset ensurePathOrName() />
	
	<!--- Resolve path if defined--->
	<cfif StructKeyExists(attributes, "path")>
		<cfparam name="attributes.checkValue" type="string" 
			default="#resolvePath(attributes.path)#" />
	<cfelse>
		<cfset attributes.path = "" />
		<cfparam name="attributes.checkValue" type="string" 
			default="" />
	</cfif>

	<!--- Set defaults --->
	<cfparam name="attributes.name" type="string" 
		default="#attributes.path#" />
	<cfparam name="attributes.value" type="string" 
		default="1" />
	<cfparam name="attributes.id" type="string" 
		default="#attributes.name#_#replaceSpaces(attributes.value)#" />

	<!--- Set required attributes--->
	<cfset setAttribute("type", "radio") />
	<cfset setAttribute("name") />
	<cfset setAttribute("value") />
	
	<!--- Set optional attributes --->
	<cfif StructKeyExists(attributes, "checkValue") AND attributes.checkValue EQ attributes.value>
		<cfset setAttribute("checked", "checked") />
	<cfelse>
		<cfset setAttributeIfDefined("checked", "checked") />
	</cfif>

	<!--- Set optional attributes --->
	<cfset setAttributeIfDefined("size") />
	<cfset setAttributeIfDefined("disabled", "disabled") />
	
	<!--- Set standard and event attributes --->
	<cfset setStandardAttributes() />
	<cfset setNonStandardAttributes() />
	<cfset setEventAttributes() />
	
	<cfoutput>#doStartTag()#</cfoutput>
</cfif>
<cfsetting enablecfoutputonly="false" />