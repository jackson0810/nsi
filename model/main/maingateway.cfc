<cfcomponent displayname="MainGateway" output="false" hint="Main Gateway">
	
	<!--- constructor --->
	<cffunction name="init" access="public" output="false" required="true" hint="Constructor">
		<cfargument name="dsn" type="string" required="true" />
		
		<cfset setDSN(arguments.dsn) />
		
		<cfreturn this />
	</cffunction>
	
	<!--- dependencies --->
	<cffunction name="setDSN" access="private" output="false" returntype="void" hint="Sets the main DSN">
		<cfargument name="dsn" type="string" required="true" />
		<cfset variables.dsn = arguments.dsn />
	</cffunction>
	<cffunction name="getDSN" access="private" output="false" returntype="string" hint="Gets the main DSN">
		<cfreturn variables.dsn />
	</cffunction>
	
	<!--- gateway methods --->
	<cffunction name="getAllNewsItems" access="public" output="false" returntype="query" hint="Returns a query object containing all News Items">
		<cfargument name="pageType" type="string" required="true" />
		
		<cfset var newsItemsList = "" />
	
		<cfquery name="newsItemsList" datasource="#getDSN()#">
			SELECT		<cfif pageType EQ 'front'>TOP 5</cfif> newsID, title, shortDesc, longDesc, dateUpdated, releaseDate
			FROM		corpNews
			ORDER BY	releaseDate	DESC
		</cfquery>
		
		<cfreturn newsItemsList />
	</cffunction>
	
	<cffunction name="getAllCareerItems" access="public" output="false" returntype="query" hint="Returns a query object containing all Career Items">
		<cfargument name="pageType" type="string" required="true" />
		
		<cfset var careerItemsList = "" />
	
		<cfquery name="careerItemsList" datasource="#getDSN()#">
			SELECT		<cfif pageType EQ 'front'>TOP 5</cfif> jobID, title, description, datePosted, dateUpdated, jobStatus
			FROM		jobData
			<cfif pageType EQ 'front'>WHERE jobStatus = 1</cfif>
			ORDER BY	dateUpdated	DESC
		</cfquery>
		
		<cfreturn careerItemsList />
	</cffunction>

	<cffunction name="getPics" access="public" output="false" returntype="query" hint="Returns a query object containing all Pic Items">
		<cfargument name="whichDirectory" type="string" required="true" />
		
		<cfset var theDirectory = "#GetDirectoryFromPath(GetTemplatePath())#/images/photoAlbum/#arguments.whichDirectory#/" />
		<cfdirectory action="list" directory="#theDirectory#" name="thePics" />
		
		<cfreturn thePics />
	</cffunction>
	
	<cffunction name="getPicDirectories" access="public" output="false" returntype="query" hint="Returns a query object containing all Pic Directories">
		
		<cfset var theDirectory = "#GetDirectoryFromPath(GetTemplatePath())#/images/photoAlbum/" />
		<cfset var theDirectories = "" />
		
		<cfdirectory action="list" directory="#theDirectory#" name="thePicDirectories" />
	
		<cfquery dbtype="query" name="theDirectories">
			SELECT 	*
			FROM	thePicDirectories
			WHERE	type = 'Dir'
		</cfquery>
		
		<cfreturn theDirectories />
	</cffunction>
	
	<cffunction name="getTaskOrders" access="public" output="false" returntype="query">
		
		<cfset var taskOrders = "" />
		
		<cfquery name="taskOrders" datasource="#getDSN()#">
			SELECT		taskOrderID, taskOrderNumber, description, pdfName, status, dateEntered, dateUpdated 
		    FROM 		taskOrders
		    WHERE		status = 1
			ORDER BY	taskOrderNumber ASC
		</cfquery>
		
		<cfreturn taskOrders />
	</cffunction>

	<cffunction name="getCareerOpps" access="public" output="false" returntype="query">
		
		<cfset var careerOpps = "" />
		
		<cfquery name="careerOpps" datasource="#getDSN()#">
			SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
			FROM		jobData
			WHERE		jobStatus=<cfqueryparam cfsqltype="cf_sql_integer" value="1" />
			ORDER BY	dateUpdated DESC
		</cfquery>
		
		<cfreturn careerOpps />
	</cffunction>

	<cffunction name="getJobs" access="public" output="false" returntype="query" hint="Returns a query object containing all Job Items">
		
		<cfset var jobsList = "" />
	
		<cfquery name="jobsList" datasource="#getDSN()#">
			SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
			FROM		jobData
			ORDER BY	dateUpdated DESC
		</cfquery>
		
		<cfreturn jobsList />
	</cffunction>

	<cffunction name="getQuotes" access="public" output="false" returntype="query" hint="Returns a query object containing all Quote Items">
		
		<cfset var quoteList = "" />
	
		<cfquery name="quoteList" datasource="#getDSN()#">
			SELECT		quoteID, personName, companyname, phoneNumber, faxNumber, emailAddress, address1, address2, 
						city, state, zipCode, responseType, requestDescription, requestDate, comments, respondedBy
			FROM		getQuote
			ORDER BY	requestDate	DESC
		</cfquery>
		
		<cfreturn quoteList />
	</cffunction>
</cfcomponent>