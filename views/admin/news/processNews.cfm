<cfdump var="#form#"/>
	<cfif form.NewsID EQ 0 or form.newsiD EQ ''>
		<cfquery datasource="nsiwebdata09" name="insertNewsItem">
			INSERT INTO	corpNews
				(title,
				longDesc, 
				dateUpdated,
				dateEntered, 
				releaseDate)
			VALUES (
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Title#" />,
				<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.LongDesc#" />,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#form.ReleaseDate#"/>
			)
		</cfquery>
	<cfelse>
		<cfquery datasource="nsiwebdata09" name="updateNewsItem">
			UPDATE 	corpNews SET
					title = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.Title#" />,
					longDesc = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#form.LongDesc#" />,
					dateUpdated = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#" />,
					releaseDate = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#form.ReleaseDate#" />
			WHERE	newsID = <cfqueryparam cfsqltype="cf_sql_integer" value="#form.NewsID#" />
		</cfquery>
	</cfif>	
	
	<cflocation url="/views/admin/news/index.cfm" />
	
