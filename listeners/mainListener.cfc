<cfcomponent displayname="MainListener" 
		output="false" 
		extends="MachII.framework.Listener" 
		hint="Main Listener">
	
	<!--- this method gets called automagically by Mach-II when the application loads --->
	<cffunction name="configure" access="public" output="false" returntype="void">
		<cfset setMainService(createObject("component", "model.Main.MainService").init(getProperty("dsn"))) />
	</cffunction>
	
	<!--- dependencies --->
	<cffunction name="setMainService" access="private" output="false" returntype="void" hint="Set the Main service">
		<cfargument name="mainService" type="model.main.mainService" required="true" />
		<cfset variables.mainService = arguments.MainService />
	</cffunction>
	<cffunction name="getMainService" access="private" output="false" 
			returntype="model.main.mainService" hint="Returns the instance of Main service">
		<cfreturn variables.mainService />
	</cffunction>
	
	<!--- listener methods --->
	<cffunction name="getNewsItems" access="public" output="false" returntype="query" hint="Returns a query object containing all News Items">
		<cfargument  name="event" type="MachII.framework.Event" required="true">
		
		<cfset var pageType = arguments.event.getArg('pageType','front') />
	
		<cfreturn getMainService().getAllNewsItems(pageType) />
	</cffunction>
	
	<cffunction name="getCareerItems" access="public" output="false" returntype="query" hint="Returns a query object containing all Career Items">
		<cfargument  name="event" type="MachII.framework.Event" required="true">
		
		<cfset var pageType = arguments.event.getArg('pageType','front') />
		
		<cfreturn getMainService().getAllCareerItems(pageType) />
	</cffunction>
	
	<cffunction name="getPics" access="public" output="false" returntype="query" hint="Returns a query object containing all Pic Items">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var whichDirectory = arguments.event.getArg("whichDirectory") />
		
		<cfreturn getMainService().getPics(whichDirectory) />
	</cffunction>
	
	<cffunction name="getPicDirectories" access="public" output="false" returntype="query" hint="Returns a query object containing all Pic Directories">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
			
		<cfreturn getMainService().getPicDirectories() />
	</cffunction>

	<cffunction name="processPic" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "The Photo Album Directory was processed." />
		<cfset var whichDirectory = arguments.event.getArg("whichDirectory") />
		
		<cftry>
			<cfset getMainService().processPic(whichDirectory) />
			
			<cfcatch type="any">
				<cfdump var="#cfcatch#">
				<cfabort>
				<cfset exitEvent = "fail" />
				<cfset message = "Processing the Photo Album Directory failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
		
		
	</cffunction>
	
	<cffunction name="getNewsItem" access="public" output="false" returntype="model.main.News" hint="Returns a query object containing all News Items">
		<cfargument  name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var newsID = arguments.event.getArg('newsID',0) />
		
		<cfreturn getMainService().getNewsItem(newsID) />
	</cffunction>	

	<cffunction name="processNewsItem" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "The News Item was saved." />
		<cfset var news = arguments.event.getArg('news') />
		
		<cftry>
			<cfset getMainService().saveNewsItem(news) />
			
			<cfcatch type="any">
				<cfdump var="#cfcatch#">
				<cfabort>
				<cfset exitEvent = "fail" />
				<cfset message = "Saving the news item failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>	

	<cffunction name="getJobItem" access="public" output="false" returntype="model.main.Job">
		<cfargument  name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var jobID = arguments.event.getArg('jobID',0) />
		
		<cfreturn getMainService().getJobItem(jobID) />
	</cffunction>

	<cffunction name="processJobItem" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "The Job Item was saved." />
		<cfset var job = arguments.event.getArg('job') />
		
		<cftry>
			<cfset getMainService().saveJobItem(job) />
			
			<cfcatch type="any">
				<cfset exitEvent = "fail" />
				<cfset message = "Saving the Job Item failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>	

	<cffunction name="getQuoteItem" access="public" output="false" returntype="model.main.Quote">
		<cfargument  name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var quoteID = arguments.event.getArg('quoteID',0) />
		
		<cfreturn getMainService().getQuoteItem(quoteID) />
	</cffunction>

	<cffunction name="processQuoteItem" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "The Quote Update was saved." />
		<cfset var quote = arguments.event.getArg('quote') />
		
		<cftry>
			<cfset getMainService().saveQuoteItem(quote) />
			
			<cfcatch type="any">
				<cfset exitEvent = "fail" />
				<cfset message = "Saving the Quote update failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>

	<cffunction name="processQuote" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "Your quote request was submitted.  You will receive a confirmation email shortly." />
		<cfset var quote = arguments.event.getArg('quote') />
		
		<cftry>
			<cfset getMainService().saveQuote(quote) />
			
			<cfcatch type="any">
				<cfset exitEvent = "fail" />
				<cfset message = "Saving the quote request failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>	

	<cffunction name="getCareerOpps" access="public" output="false" returntype="query">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfreturn getMainService().getCareerOpps() />
	</cffunction>	

	<cffunction name="getJobs" access="public" output="false" returntype="query" hint="Returns a query object containing all Job Items">
		<cfargument  name="event" type="MachII.framework.Event" required="true">
			
		<cfreturn getMainService().getJobs() />
	</cffunction>

	<cffunction name="getQuotes" access="public" output="false" returntype="query" hint="Returns a query object containing all Quote Items">
		<cfargument  name="event" type="MachII.framework.Event" required="true">
			
		<cfreturn getMainService().getQuotes() />
	</cffunction>	

	<cffunction name="getTaskOrders" access="public" output="false" returntype="query" >
		<cfargument  name="event" type="MachII.framework.Event" required="true">
		
		<cfreturn getMainService().getTaskOrders() />
	</cffunction>	

	<cffunction name="getTaskOrderItem" access="public" output="false" returntype="model.main.Task">
		<cfargument  name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var taskOrderID = arguments.event.getArg('taskOrderID',0) />
		
		<cfreturn getMainService().getTaskOrderItem(taskOrderID) />
	</cffunction>	

	<cffunction name="processTaskOrder" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "The Task Order Item was saved." />
		<cfset var task = arguments.event.getArg('task') />
		<cfset var theModFileName = "" />
		
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
				<!--- call the escapereplace.cfc and replace any special characters in the filename. --->
				<cfinvoke webservice="http://n-s-i.us/components/AppWideFunctions.cfc?wsdl" method="escrepstring" returnvariable="strippedfilename">
					<cfinvokeargument name="findwhat" value="_,`,~,!,@,##,$,%,^,&,*,(,),+,=,{,[,],},\,|,:,;,?,/, ">
					<cfinvokeargument name="replacewith" value="">
					<cfinvokeargument name="processtype" value="replace">
					<cfinvokeargument name="searchstring" value="#filename#">
				</cfinvoke>
				<cfset themodfilename = "#strippedfilename[2]#.#fileext#">
				<cffile action="rename" source="#ExpandPath('/views/documents/')##fullfilename#" destination="#ExpandPath('/views/documents/')##themodfilename#">
			</cfif>	
			
			<cfset task.setPDFName(theModFileName)>
			<cfset getMainService().saveTaskOrder(task) />
			
			<cfcatch type="any">
				<cfset exitEvent = "fail" />
				<cfset message = "Saving the Task Order Item failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>	

	<cffunction name="processAdminLogin" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "Incorrect username and/or password to access this system." />
		<cfset var accessGranted = 0 />
		<cfset var userName = arguments.event.getArg('userName') />
		<cfset var password = arguments.event.getArg('password') />
		
		<cftry>
			<cfset accessGranted = getMainService().processAdminLogin(userName, password) />
		
			<cfif accessGranted EQ 1>
				<cfset session.isLoggedIn = 1 />
				<cfset message = "" />
			</cfif>
			
			<cfcatch type="any">
				<cfset exitEvent = "fail" />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>	

	<cffunction name="logout" access="public" output="false">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "You are now logged out." />
		
		<cfset structDelete(session,"isLoggedIn",false) />
		
		<cfset arguments.event.setArg("message", message) />
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>	

	<cffunction name="processSurvey" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var exitEvent = "success" />
		<cfset var message = "Your business is very important to us.  Thank you for taking the time to share your thoughts." />
		<cfset var survey = arguments.event.getArg('survey') />
		
		<cftry>
			<cfset getMainService().processSurvey(survey) />
			
			<cfcatch type="any">
				<cfset exitEvent = "fail" />
				<cfset message = "Submitting your survey failed.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		<cfset announceEvent(exitEvent, arguments.event.getArgs()) />
	</cffunction>		

	<cffunction name="processCalibrationRequest" access="public" output="false" returntype="void">
		<cfargument name="event" type="MachII.framework.Event" required="true" />
		
		<cfset var message = "Your business is very important to us.  Thank you for submitting your Calibration Request." />
		<cfset var calibrationRequest = arguments.event.getArg('calibrationRequest') />
		
		<cftry>
			<cfset getMainService().processCalibrationRequest(calibrationRequest) />
			
			<cfcatch type="any">
				<cfset message = "There was an error submitting your Calibration Request.  Please try again." />
			</cfcatch>
		</cftry>
		
		<cfset arguments.event.setArg("message", message) />
		<cfset redirectEvent("showCalibrationRequests", "", true) />
	</cffunction>		
</cfcomponent>