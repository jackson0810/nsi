<cfquery datasource="nsiwebdata09" name="verifyLogin">
	SELECT	userName, password
	FROM	adminAccess
	WHERE	username = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.username#" />
	  AND	password = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.password#" />
</cfquery>
		
<cfif verifyLogin.recordCount EQ 1>
	<cflocation url="/views/admin/index.cfm" />
<cfelse>
	<cflocation url="/views/admin/login.cfm?message=Login%20credentials%20are%20incorrect." />
</cfif>
	