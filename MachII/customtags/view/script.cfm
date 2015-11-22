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
$Id: script.cfm 1403 2009-03-14 04:27:12Z peterfarrell $

Created version: 1.8.0
Updated version: 1.8.0

Notes:
- OPTIONAL ATTRIBUTES
	outputType	= [string] outputs the code to "head" or "inline"
--->
<cfparam name="attributes.outputType" type="string" 
	default="head" />

<cfif thisTag.ExecutionMode IS "end">
	<cfset variables.js = Chr(13) & '<script type="text/javascript">' & Chr(13) & '<!--//--><![CDATA[//><!--' & Chr(13) & thisTag.GeneratedContent & Chr(13) & '//--><!]]>' & Chr(13) &  '</script>' & Chr(13) />
	<cfif attributes.outputType EQ "head">
		<cfset caller.this.addHTMLHeadElement(variables.js) />
		<cfset thisTag.GeneratedContent = "" />
	<cfelse>
		<cfset thisTag.GeneratedContent = variables.js />
	</cfif>
</cfif>
<cfsetting enablecfoutputonly="false" />