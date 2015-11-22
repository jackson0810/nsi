<cfif form.jobID EQ 0>
	<cftransaction>
		<cfquery datasource="nsiwebdata09" name="insertJobItem">
			INSERT INTO	jobData
				(title,
				description, 
				dateUpdated,
				datePosted, 
				jobStatus)
			VALUES (
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Title#" />,
				<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.Description#" />,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
				<cfqueryparam cfsqltype="cf_sql_integer" value="#form.JobStatus#"/>
			)
		</cfquery>
	</cftransaction>
<cfelse>
	<cftransaction>
		<cfquery datasource="nsiwebdata09" name="updateJobItem">
			UPDATE jobData set
				title = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Title#" />,
				description = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.Description#" />,
				dateUpdated = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
				jobStatus = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.JobStatus#" />
			WHERE	jobID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.JobID#" />
		</cfquery>
	</cftransaction>
</cfif>	

<cflocation url="/views/admin/jobs/index.cfm" />