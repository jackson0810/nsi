<cftry>
	<cfif isdefined("form.pdfName") and len(form.pdfname) neq 0>
		<cffile action="upload" filefield="pdfName" destination="#ExpandPath('/views/documents/')#" nameconflict="overwrite">
		<cfset fullfilename = #cffile.serverfile#>
		<cfset filename = #cffile.serverfilename#>
		<cfset fileext = #cffile.serverfileext#>
		
		<!--- loops through the directory until the new file is found.  --->
		<!--- set the variable filecount1 to 0 ---> 
		<cfset filecount = 0>
		<!-- loop until filecount = 1 -->
		<cfloop condition = "filecount neq 1">
			<cfdirectory action="list" directory="#ExpandPath('/views/documents/')#" filter="#fullfilename#" name="updoc_check">
			<cfif #updoc_check.recordcount# gt "0" and (#updoc_check.size# eq #cffile.filesize#) and #cffile.filewassaved#>
				<cfset upsize = #updoc_check.size#>
				<cfset filezise = #cffile.filesize#>
				<cfset filecount = 1>
				<cfbreak>
			</cfif>
		</cfloop>
			
		<cfset findwhat="_,`,~,!,@,##,$,%,^,&,*,(,),+,=,{,[,],},\,|,:,;,?,/, " />
		<cfset replacewith="" />
		<cfset processtype="replace" />
		<cfset searchstring="#filename#" />
		
		<cfset strippedfilename = ArrayNew(1)>
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
			
			<cfset strippedfilename[1] = "Success">
			<cfset strippedfilename[2] = ReplaceList(#arguments.SearchString#, #ListPlace#, #EscapeList#)>
		<cfelse>
			<cfset strippedfilename[1] = "Success">
			<cfset strippedfilename[2] = ReplaceList(#arguments.SearchString#, #arguments.FindWhat#, #arguments.ReplaceWith#)>
		</cfif>
				
		<cfset themodfilename = "#strippedfilename[2]#.#fileext#">
		<cffile action="rename" source="#ExpandPath('/views/documents/')##fullfilename#" destination="#ExpandPath('/views/documents/')##themodfilename#">
	</cfif>	
				
	<cfif form.taskOrderID EQ 0>
		<cfquery datasource="nsiwebdata09" name="insertTaskItem">
			INSERT INTO	taskOrders
				(taskOrderNumber,
				description,
				pdfName,
				status, 
				dateUpdated,
				dateEntered)
			VALUES (
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.TaskOrderNumber#" />,
				<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.Description#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#themodfilename#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Status#" />,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">
			)
		</cfquery>
	<cfelse>
		<cfquery datasource="nsiwebdata09" name="updateNewsItem">
			UPDATE 	taskOrders set
					taskOrderNumber = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.TaskOrderNumber#" />,
					description = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.Description#" />,
					<cfif form.PDFName NEQ "">
						pdfName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#themodfilename#" />,
					</cfif>
					status = 	<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Status#" />,
					dateUpdated = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#" />
			WHERE	taskOrderID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.TaskOrderID#" />
		</cfquery>
	</cfif>	
	
	<cflocation url="/views/admin/taskOrders/index.cfm" />
	
	<cfcatch type="any">
		<cfdump var="#cfcatch#" >
	</cfcatch>
</cftry>	