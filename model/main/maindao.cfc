<cfcomponent displayname="MainDAO" output="false" hint="Main DAO">
	
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
	
	<!--- dao methods --->
	<cffunction name="fetchNewsItem" access="public" output="false" returntype="void">
		<cfargument name="news" type="News" required="true" />
		
		<cfset var getNewsItem = "" />
	
		<cfquery name="getNewsItem" datasource="#getDSN()#">
			SELECT	newsID, title, shortDesc, longDesc, dateUpdated, dateEntered, releaseDate
			FROM	corpNews
			WHERE	newsID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.news.getNewsID()#" />
		</cfquery>
		
		<cfif getNewsItem.recordCount GT 0>
			<cfset arguments.news.setNewsID(getNewsItem.newsID) />
			<cfset arguments.news.setTitle(getNewsItem.title) />
			<cfset arguments.news.setShortDesc(getNewsItem.shortDesc) />
			<cfset arguments.news.setLongDesc(getNewsItem.longDesc) />
			<cfset arguments.news.setDateUpdated(getNewsItem.dateUpdated) />
			<cfset arguments.news.setDateEntered(getNewsItem.dateEntered) />
			<cfset arguments.news.setReleaseDate(getNewsItem.releaseDate) />
		</cfif>
	</cffunction>

	<cffunction name="fetchJobItem" access="public" output="false" returntype="void">
		<cfargument name="job" type="Job" required="true" />
		
		<cfset var getJobItem = "" />
	
		<cfquery name="getJobItem" datasource="#getDSN()#">
			SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
			FROM		jobData
			WHERE		jobID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.job.getJobID()#" />
		</cfquery>
		
		<cfif getJobItem.recordCount GT 0>
			<cfset arguments.job.setJobID(getJobItem.jobID) />
			<cfset arguments.job.setTitle(getJobItem.title) />
			<cfset arguments.job.setDescription(getJobItem.description) />
			<cfset arguments.job.setDatePosted(getJobItem.datePosted) />
			<cfset arguments.job.setDateUpdated(getJobItem.dateUpdated) />
			<cfset arguments.job.setJobStatus(getJobItem.jobStatus) />
		</cfif>
	</cffunction>

	<cffunction name="fetchQuoteItem" access="public" output="false" returntype="void">
		<cfargument name="quote" type="Quote" required="true" />
		
		<cfset var getQuoteItem = "" />
	
		<cfquery name="getQuoteItem" datasource="#getDSN()#">
			SELECT		quoteID, personName, companyname, phoneNumber, faxNumber, emailAddress, address1, address2, 
						city, state, zipCode, responseType, requestDescription, requestDate, comments, respondedBy,
						respondedComments
			FROM		getQuote
			WHERE		quoteID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.quote.getQuoteID()#" />
		</cfquery>
		
		<cfif getQuoteItem.recordCount GT 0>
			<cfset arguments.quote.setQuoteID(getQuoteItem.quoteID) />
			<cfset arguments.quote.setPersonName(getQuoteItem.personName) />
			<cfset arguments.quote.setCompanyname(getQuoteItem.companyname) />
			<cfset arguments.quote.setPhoneNumber(getQuoteItem.phoneNumber) />
			<cfset arguments.quote.setFaxNumber(getQuoteItem.faxNumber) />
			<cfset arguments.quote.setEmailAddress(getQuoteItem.emailAddress) />
			<cfset arguments.quote.setAddress1(getQuoteItem.address1) />
			<cfset arguments.quote.setAddress2(getQuoteItem.address2) />
			<cfset arguments.quote.setCity(getQuoteItem.city) />
			<cfset arguments.quote.setState(getQuoteItem.state) />
			<cfset arguments.quote.setZipCode(getQuoteItem.zipCode) />
			<cfset arguments.quote.setResponseType(getQuoteItem.responseType) />
			<cfset arguments.quote.setRequestDescription(getQuoteItem.requestDescription) />
			<cfset arguments.quote.setComments(getQuoteItem.comments) />
			<cfset arguments.quote.setRespondedBy(getQuoteItem.respondedBy) />
			<cfset arguments.quote.setRespondedComments(getQuoteItem.respondedComments) />
			<cfset arguments.quote.setRequestDate(getQuoteItem.requestDate) />
		</cfif>
	</cffunction>

	<cffunction name="fetchTaskItem" access="public" output="false" returntype="void">
		<cfargument name="task" type="Task" required="true" />
		
		<cfset var getTaskItem = "" />
	
		<cfquery name="getTaskItem" datasource="#getDSN()#">
			SELECT		taskOrderID, taskOrderNumber, description, pdfName, status, dateEntered, dateUpdated 
	    	FROM 		taskOrders
			WHERE		taskOrderID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.task.getTaskOrderID()#" />
			ORDER BY	dateUpdated	DESC
		</cfquery>
		
		<cfif getTaskItem.recordCount GT 0>
			<cfset arguments.task.setTaskOrderID(getTaskItem.taskOrderID) />
			<cfset arguments.task.setTaskOrderNumber(getTaskItem.taskOrderNumber) />
			<cfset arguments.task.setDescription(getTaskItem.description) />
			<cfset arguments.task.setPdfName(getTaskItem.pdfName) />
			<cfset arguments.task.setStatus(getTaskItem.status) />
			<cfset arguments.task.setDateEntered(getTaskItem.dateEntered) />
			<cfset arguments.task.setDateUpdated(getTaskItem.dateUpdated) />
		</cfif>
	</cffunction>


	<cffunction name="saveNews" access="public" output="false" returntype="void">
		<cfargument name="news" type="News" required="true" />
		
		<cfif arguments.news.getNewsID() EQ 0>
			<cfset createNews(arguments.news) />
		<cfelse>
			<cfset updateNews(arguments.news) />
		</cfif>	
	</cffunction>	

	<cffunction name="saveJob" access="public" output="false" returntype="void">
		<cfargument name="job" type="Job" required="true" />
		
		<cfif arguments.job.getJobID() EQ 0>
			<cfset createJob(arguments.job) />
		<cfelse>
			<cfset updateJob(arguments.job) />
		</cfif>	
	</cffunction>

	<cffunction name="saveTaskOrder" access="public" output="false" returntype="void">
		<cfargument name="task" type="Task" required="true" />
		
		<cfif arguments.task.getTaskOrderID() EQ 0>
			<cfset createTask(arguments.task) />
		<cfelse>
			<cfset updateTask(arguments.task) />
		</cfif>	
	</cffunction>
	
	<cffunction name="saveQuote" access="public" output="false" returntype="void">
		<cfargument name="quote" type="Quote" required="true" />
		
		<cfif arguments.quote.getQuoteID() EQ 0>
			<cfset createQuote(arguments.quote) />
		<cfelse>
			<cfset updateQuote(arguments.quote) />
		</cfif>	
	</cffunction>

	<cffunction name="processAdminLogin" access="public" output="false" returntype="numeric">
		<cfargument name="userName" type="string" required="true" />
		<cfargument name="password" type="string" required="true" />
		
		<cfset var verifyLogin = "" />
		<cfset var grantedAccess = 0 />
		
		<cfquery datasource="#getDSN()#" name="verifyLogin">
			SELECT	userName, password
			FROM	adminAccess
			WHERE	username = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.username#" />
			  AND	password = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.password#" />
		</cfquery>
		
		<cfif verifyLogin.recordCount EQ 1>
			<cfset grantedAccess = 1 />
		</cfif>
		
		<cfreturn grantedAccess />
	</cffunction>

	<cffunction name="emailSurvey" access="public" output="false" returntype="void">
		<cfargument name="survey" type="survey" required="true" />
		
		<cfset var theSurvey = arguments.survey />
		<cfset var emailTo = "wwhitington@n-s-i.us;lsimerly@n-s-i.us;drini@n-s-i.us;msanders@n-s-i.us;khunnicutt@n-s-i.us,,smiller@n-s-i.us" />
		
		<!---Email to NSI--->
		<cfmail to="#emailTo#" from="NSICustomerSurvey@n-s-i.us" replyto="#emailTo#" subject="NSI Customer Survey" type="html">
			<h2>Naval Systems, Inc. (NSI) Customer Survey</h2>
			
			<table border="0" cellpadding="10" cellspacing="5">
						<tr>
					  		<td width="3">&nbsp;</td>
					  		<td><strong>Company/Customer Name:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">#theSurvey.getName()#</td>
					 	</tr>
						<tr>
					  		<td width="3">&nbsp;</td>
					  		<td><strong>Survey Completed By:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">#theSurvey.getCompletedBy()#</td>
						  </tr>
						 <tr>
					  		<td width="3">&nbsp;</td>
					  		<td><strong>Title:</strong>&nbsp;&nbsp;</td>
					  		<td colspan="4">#theSurvey.getTitle()#</td>
						 </tr>
						 
						<tr>
							<td width="3">&nbsp;</td>
							<td valign="top"><strong>Phone Number:</strong>&nbsp;&nbsp;</td>
							<td>#theSurvey.getPhoneNumber()#</td>
							<td>&nbsp;</td>
							<td valign="top"><strong>Date:</strong>&nbsp;&nbsp;</td>
							<td valign="top">#theSurvey.getDate()#</td>
						</tr>
						
						<tr>
							<td valign="top">&nbsp;</td>
							<td colspan="5" valign="top"><strong>On a scale of 1 to 5 (1 being worst - 5 being best) how do we compare with our competitors in the following categories?</td>
						</tr>
						<tr>
							<td colspan="6">
								<table border="0" width="100%" cellspacing="10">
									<tr>
										<th>&nbsp;</th>
										<th>1</th>
										<th>2</th>
										<th>3</th>
										<th>4</th>
										<th>5</th>
									</tr>
									<tr>
										<td>Service</td>
										<td align="center"><input type="radio" disabled="true" name="service" value="1" <cfif theSurvey.getService() EQ 1>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="service" value="2" <cfif theSurvey.getService() EQ 2>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="service" value="3" <cfif theSurvey.getService() EQ 3>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="service" value="4" <cfif theSurvey.getService() EQ 4>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="service" value="5" <cfif theSurvey.getService() EQ 5>checked </cfif> /></td>
									</tr>
									<tr>
										<td>Quality of Products</td>
										<td align="center"><input type="radio" disabled="true" name="quality" value="1" <cfif theSurvey.getQuality() EQ 1>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="quality" value="2" <cfif theSurvey.getQuality() EQ 2>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="quality" value="3" <cfif theSurvey.getQuality() EQ 3>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="quality" value="4" <cfif theSurvey.getQuality() EQ 4>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="quality" value="5" <cfif theSurvey.getQuality() EQ 5>checked </cfif> /></td>
									</tr>
									<tr>
										<td>Completeness of orders</td>
										<td align="center"><input type="radio" disabled="true" name="Completeness" value="1" <cfif theSurvey.getCompleteness() EQ 1>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="Completeness" value="2" <cfif theSurvey.getCompleteness() EQ 2>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="Completeness" value="3" <cfif theSurvey.getCompleteness() EQ 3>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="Completeness" value="4" <cfif theSurvey.getCompleteness() EQ 4>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="Completeness" value="5" <cfif theSurvey.getCompleteness() EQ 5>checked </cfif> /></td>
									</tr>
									<tr>
										<td>On time delivery</td>
										<td align="center"><input type="radio" disabled="true" name="delivery" value="1" <cfif theSurvey.getDelivery() EQ 1>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="delivery" value="2" <cfif theSurvey.getDelivery() EQ 2>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="delivery" value="3" <cfif theSurvey.getDelivery() EQ 3>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="delivery" value="4" <cfif theSurvey.getDelivery() EQ 4>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="delivery" value="5" <cfif theSurvey.getDelivery() EQ 5>checked </cfif> /></td>
									</tr>
									<tr>
										<td>Response to customer's needs</td>
										<td align="center"><input type="radio" disabled="true" name="needs" value="1" <cfif theSurvey.getNeeds() EQ 1>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="needs" value="2" <cfif theSurvey.getNeeds() EQ 2>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="needs" value="3" <cfif theSurvey.getNeeds() EQ 3>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="needs" value="4" <cfif theSurvey.getNeeds() EQ 4>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="needs" value="5" <cfif theSurvey.getNeeds() EQ 5>checked </cfif> /></td>
									</tr>
									<tr>
										<td>Completeness of paperwork</td>
										<td align="center"><input type="radio" disabled="true" name="paperwork" value="1" <cfif theSurvey.getPaperWork() EQ 1>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="paperwork" value="2" <cfif theSurvey.getPaperWork() EQ 2>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="paperwork" value="3" <cfif theSurvey.getPaperWork() EQ 3>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="paperwork" value="4" <cfif theSurvey.getPaperWork() EQ 4>checked </cfif> /></td>
										<td align="center"><input type="radio" disabled="true" name="paperwork" value="5" <cfif theSurvey.getPaperWork() EQ 5>checked </cfif> /></td>
									</tr>
								</table>	 
							</td>
						</tr>
						<tr>
							<td colspan="6">
								<strong>Comments: </strong>
							</td>
						</tr>
						<tr>
							<td colspan="6">
								<p>#theSurvey.getComments()#</p>		 
							</td>
						</tr>
						<tr>
							<td colspan="6">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="6" align="center">
								<hr/>
								<h2><strong>For NSI Use</strong></h2>
								<table border="0" width="100%">
									<tr>
										<td>Survey reviewed by:&nbsp;&nbsp;<input type="text" size="50" value="" /></td>
										<td>Date:&nbsp;&nbsp;<input type="text" size="50" value="" /></td>
									</tr>
									<tr>
										<td colspan="2">
											Comments by investigator (if assigned):&nbsp;&nbsp;<br/>
											<br/>Use separate sheet if needed.<br/>
											<textarea cols="100" rows="20"></textarea>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											Corrective action record (if assigned):&nbsp;&nbsp;<br/>
											<br/>Use separate sheet if needed.<br/>
											<textarea cols="100" rows="20"></textarea>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
		</cfmail>
	</cffunction>

	<cffunction name="processPic" access="public" output="true" returntype="void" >
		<cfargument name="whichDirectory" type="string" required="true" />
		
		<cfset var theDirectory = "#Replace(GetDirectoryFromPath(GetTemplatePath()),'/views','','ALL')#images/photoAlbum/#arguments.whichDirectory#" />
		<cfset var theFilteredPicList = "" />
		<cfset var newDirectory1 = "#theDirectory#/thumbs" />
		<cfset var newDirectory2 = "#theDirectory#/display" />		
		
		<cfdirectory action="list" directory="#theDirectory#" name="thePics" />
		
		<cfquery dbtype="query" name="theFilteredPicList">
			SELECT	*
			FROM	thePics
			WHERE	type = 'File' 
			  AND	name NOT LIKE '.DS_Store'
		</cfquery>
		
		<!---Create the Thumbs and Display Directory--->
		<!--- Check whether the thumbs directory exists. --->
		<cfif NOT DirectoryExists(#newDirectory1#)>
		    <!--- If no, create the directory. --->
		    <cfdirectory action = "create" directory = "#newDirectory1#" />
		</cfif>
		
		<!--- Check whether the display directory exists. --->
		<cfif NOT DirectoryExists(#newDirectory2#)>
		    <!--- If no, create the directory. --->
		    <cfdirectory action = "create" directory = "#newDirectory2#" />
		</cfif>
		<cfsetting requesttimeout="100000">
		<cfloop query="theFilteredPicList">
			<cftry>
				<cfset theThumbName =   "#listFirst(Replace(theFilteredPicList.name,' ','','ALL'),'.')#_s.#listlast(theFilteredPicList.name,'.')#" />
				<cfset theMedName =   "#listFirst(Replace(theFilteredPicList.name,' ','','ALL'),'.')#_m.#listlast(theFilteredPicList.name,'.')#" />
				
				<!--- <cfimage action="resize" width="75" height="56" source="#theFilteredPicList.directory#/#theFilteredPicList.name#" destination="#theFilteredPicList.directory#/thumbs/#theThumbName#" overwrite="true" />
				<cfimage action="resize" width="500" height="375" source="#theFilteredPicList.directory#/#theFilteredPicList.name#" destination="#theFilteredPicList.directory#/display/#theMedName#" overwrite="true" /> --->
				<cfcatch type="any">
					<!---DO NOTHING--->
				</cfcatch>
			</cftry>
		</cfloop>
	</cffunction>

	<!---private methods--->
	<cffunction name="createNews" access="private" output="false" returntype="void">
		<cfargument name="news" type="News" required="true" />
		
		<cfset var insertNewsItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="insertNewsItem">
				INSERT INTO	corpNews
					(title,
					longDesc, 
					dateUpdated,
					dateEntered, 
					releaseDate)
				VALUES (
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.news.getTitle()#" />,
					<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.news.getLongDesc()#" />,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#arguments.news.getDateUpdated()#">,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#arguments.news.getDateEntered()#">,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#arguments.news.getReleaseDate()#"/>
				)
			</cfquery>
		</cftransaction>

		<cfset createRSSFile() />
	</cffunction>

	<cffunction name="updateNews" access="private" output="false" returntype="void">
		<cfargument name="news" type="News" required="true" />
		
		<cfset var updateNewsItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="updateNewsItem">
				UPDATE 	corpNews SET
						title = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.news.getTitle()#" />,
						longDesc = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.news.getLongDesc()#" />,
						dateUpdated = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#arguments.news.getDateUpdated()#" />,
						releaseDate = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#arguments.news.getReleaseDate()#" />
				WHERE	newsID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.news.getNewsID()#" />
			</cfquery>
		</cftransaction>
		
		<cfset createRSSFile() />
	</cffunction>

	<cffunction name="createJob" access="private" output="false" returntype="void">
		<cfargument name="job" type="Job" required="true" />
		
		<cfset var insertJobItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="insertJobItem">
				INSERT INTO	jobData
					(title,
					description, 
					dateUpdated,
					datePosted, 
					jobStatus)
				VALUES (
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.job.getTitle()#" />,
					<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.job.getDescription()#" />,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
					<cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.job.getJobStatus()#"/>
				)
			</cfquery>
		</cftransaction>
	</cffunction>

	<cffunction name="updateJob" access="private" output="false" returntype="void">
		<cfargument name="job" type="Job" required="true" />
		
		<cfset var updateJobItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="updateJobItem">
				UPDATE jobData set
					title = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.job.getTitle()#" />,
					description = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.job.getDescription()#" />,
					dateUpdated = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
					jobStatus = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.job.getJobStatus()#" />
				WHERE	jobID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.job.getJobID()#" />
			</cfquery>
		</cftransaction>
	</cffunction>

	<cffunction name="updateQuote" access="private" output="false" returntype="void">
		<cfargument name="quote" type="Quote" required="true" />
		
		<cfset var updateQuoteItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="updateQuoteItem">
				UPDATE 	getQuote SET
						respondedBy = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getRespondedBy()#" />,
						comments = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.quote.getComments()#" />
				WHERE	quoteID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.quote.getQuoteID()#"/>	
			</cfquery>
		</cftransaction>
	</cffunction>
	
	<cffunction name="createRSSFile" access="private" returntype="void">
		
		<cfset var getCorpNews = "" />
		
		<cfsetting enablecfoutputonly="yes">
		<cfquery name="getCorpNews" datasource="#getDSN()#">
		   	SELECT		newsID, title, shortDesc, longDesc, dateUpdated, dateEntered, releaseDate
			FROM		corpNews
			ORDER BY	dateUpdated	DESC
		</cfquery>
	
		<cfsavecontent variable="theXML">
			<cfoutput><?xml version="1.0" encoding="ISO-8859-1" ?>
				<!-- RSS generated by Naval Systems Inc. (NSI) on #now()# -->
		 		<rss version="2.0">
			    <channel>
			       <title>Naval Systems, Inc. (NSI)</title>
			       <link></link>
			       <description>All NSI News Items</description>
			       <language>en-us</language>
			       <copyright>Copyright 2009 Naval System, Inc. (NSI)</copyright>
			       <lastBuildDate>#dateformat(now(), "ddd, dd mmm yyyy")# #timeformat(now(), "HH:mm:ss")# EST</lastBuildDate>
			       <image>
			            <title>Naval Systems, Inc. (NSI)</title>
			            <url>/images/logo.gif</url>
			            <link></link>
			       </image>
			</cfoutput>
			<cfloop from="1" to="#getCorpNews.RecordCount#" index="ctr">
			    <!--- Here let's clean up and ensure that all values are XML Compliant --->
			    <cfscript>
			       title = replace(getCorpNews.title[ctr], "<", "&lt;", "ALL");
			       longDesc = replace(getCorpNews.longDesc[ctr], "<", "&lt;", "ALL");
			       longDesc = replace(longDesc, "&", "&amp;", "ALL");
			       longDesc = replace(longDesc, '"', "'", "ALL");
			       releaseDate = dateformat(getCorpNews.releaseDate[ctr], "ddd, dd mmm yyyy");
			       releaseTime = timeformat(getCorpNews.releaseDate[ctr], "HH:mm:ss") & " EST";
			   </cfscript>
			
			   <cfoutput>
			   <item>
			         <title>#title#</title>
			         <description>#longDesc#</description>
			         <link>http://n-s-i.us/index.cfm/go/showNews/nid/#getCorpNews.newsID[ctr]#</link>
			         <author>Naval Systems, Inc. (NSI)</author>
			         <pubDate>#releaseDate# #releaseTime#</pubDate>
			   </item>
			   </cfoutput>
			</cfloop>
			</channel>
			</rss>
		</cfsavecontent>
		<cffile action="write" file="#expandPath('/views/newsFeed.rss')#" output="#theXml#">
	</cffunction>

	<cffunction name="createQuote" access="private" output="false" returntype="void">
		<cfargument name="quote" type="Quote" required="true" />
		
		<cfset var insertQuote = "" />
		<cfset var emailTo = "wwhitington@n-s-i.us;lsimerly@n-s-i.us;drini@n-s-i.us;msanders@n-s-i.us;Khunnicutt@n-s-i.us" />
		<cfset var responseTypeList = "" />
				
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="insertQuote">
				INSERT INTO	getQuote
				(	personName,
					companyname,
					phoneNumber,
					faxNumber,
					emailAddress,
					address1,
					address2, 
					city, 
					state, 
					zipCode, 
					responseType, 
					requestDescription,
					requestDate)
			VALUES (
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getPersonName()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getCompanyName()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getPhoneNumber()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getFaxNumber()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getEmailAddress()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getAddress1()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getAddress2()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getCity()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getState()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getZipCode()#" />,
				<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.quote.getResponseType()#" />,
				<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.quote.getrequestDescription()#" />,
				<cfqueryparam cfsqltype="cf_sql_timestamp" value="#Now()#" />
			)
			</cfquery>
		</cftransaction>

		<!---Email to NSI--->
		<cfmail to="#emailTo#" from="#arguments.quote.getEmailAddress()#" subject="NSI Quote Request:  #arguments.quote.getCompanyName()#" type="html">
			<h2>Naval Systems, Inc. (NSI) Request for Quote</h2>
			
			<table border="0">
				<tr>
					<td width="20%">Name:&nbsp;</td>
					<td>#arguments.quote.getPersonName()#</td>
				</tr>
				<tr>
					<td>Email Address:&nbsp;</td>
					<td>#arguments.quote.getEmailAddress()#</td>
				</tr>
				<tr>
					<td>Company Name:&nbsp;</td>
					<td>#arguments.quote.getCompanyName()#</td>
				</tr>
				<tr>
					<td valign="top">Address:&nbsp;</td>
					<td>
						#arguments.quote.getAddress1()#<br/>
						<cfif arguments.quote.getAddress2() NEQ "">
							#arguments.quote.getAddress2()#<br/>
						</cfif>
						#arguments.quote.getCity()#, #arguments.quote.getState()# #arguments.quote.getZipcode()#
					</td>
				</tr>
				<tr>
					<td>Phone Number:&nbsp;</td>
					<td>#arguments.quote.getPhoneNumber()#</td>
				</tr>
				<tr>
					<td>Fax Number:&nbsp;</td>
					<td>#arguments.quote.getFaxNumber()#</td>
				</tr>
				<tr>
					<td>Response Type:&nbsp;</td>
					<td>
						<cfif listFind(arguments.quote.getResponseType(),'1') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Call Back") /></cfif>
						<cfif listFind(arguments.quote.getResponseType(),'2') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"Postal Mail Information") /></cfif>
						<cfif listFind(arguments.quote.getResponseType(),'3') NEQ 0><cfset responseTypeList = listAppend(responseTypeList,"E-mail Information") /></cfif>
						#responseTypeList#
					</td>
				</tr>
				<tr>
					<td valign="top">Request Description:&nbsp;</td>
					<td>
						#arguments.quote.getRequestDescription()#
					</td>
				</tr>
			</table>
		</cfmail>
	</cffunction>

	<cffunction name="createTask" access="private" output="false" returntype="void">
		<cfargument name="task" type="Task" required="true" />
		
		<cfset var insertTaskItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="insertTaskItem">
				INSERT INTO	taskOrders
					(taskOrderNumber,
					description,
					pdfName,
					status, 
					dateUpdated,
					dateEntered)
				VALUES (
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.task.getTaskOrderNumber()#" />,
					<cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.task.getDescription()#" />,
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.task.getPDFName()#" />,
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.task.getStatus()#" />,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">,
					<cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#">
				)
			</cfquery>
		</cftransaction>
	</cffunction>

	<cffunction name="updateTask" access="private" output="false" returntype="void">
		<cfargument name="task" type="Task" required="true" />
		
		<cfset var updateTaskItem = "" />
		
		<cftransaction>
			<cfquery datasource="#getDSN()#" name="updateNewsItem">
				UPDATE 	taskOrders set
						taskOrderNumber = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.task.getTaskOrderNumber()#" />,
						description = <cfqueryparam cfsqltype="cf_sql_longvarchar" value="#arguments.task.getDescription()#" />,
						<cfif arguments.task.getPDFName() NEQ "">
							pdfName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.task.getPDFName()#" />,
						</cfif>
						status = 	<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.task.getStatus()#" />,
						dateUpdated = <cfqueryparam cfsqltype="cf_sql_timestamp" value="#now()#" />
				WHERE	taskOrderID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.task.getTaskOrderID()#" />
			</cfquery>
		</cftransaction>
	</cffunction>

</cfcomponent>