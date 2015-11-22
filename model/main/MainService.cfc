<cfcomponent displayname="MainService" output="false" 
		hint="Main Service">
	
	<!--- constructor --->
	<cffunction name="init" access="public" output="false" returntype="MainService" hint="Constructor">
		<cfargument name="dsn" type="string" required="true" />
		
		<cfset setMainGateway(createObject("component", "MainGateway").init(arguments.dsn)) />
		<cfset setMainDAO(createObject("component", "MainDAO").init(arguments.dsn)) />
		<cfreturn this />
	</cffunction>
	
	<!--- dependencies --->
	<cffunction name="setMainGateway" access="private" output="false" returntype="void" 
			hint="Sets the Main gateway">
		<cfargument name="MainGateway" type="MainGateway" required="true" />
		<cfset variables.MainGateway = arguments.MainGateway />
	</cffunction>

	<cffunction name="getMainGateway" access="private" output="false" returntype="MainGateway" 
			hint="Returns the Main gateway">
		<cfreturn variables.MainGateway />
	</cffunction>

	<cffunction name="setMainDAO" access="private" output="false" returntype="void" 
			hint="Sets the Main DAO">
		<cfargument name="MainDAO" type="MainDAO" required="true" />
		<cfset variables.MainDAO = arguments.MainDAO />
	</cffunction>

	<cffunction name="getMainDAO" access="private" output="false" returntype="MainDAO" 
			hint="Returns the Main DAO">
		<cfreturn variables.MainDAO />
	</cffunction>
		
	<!--- service methods --->
	<cffunction name="getNewsBean" access="private" output="false" returntype="News">
		<cfreturn createObject("component", "News").init() />
	</cffunction>
	
	<cffunction name="getJobBean" access="private" output="false" returntype="Job">
		<cfreturn createObject("component", "Job").init() />
	</cffunction>

	<cffunction name="getTaskBean" access="private" output="false" returntype="Task">
		<cfreturn createObject("component", "Task").init() />
	</cffunction>
		
	<cffunction name="getQuoteBean" access="private" output="false" returntype="Quote">
		<cfreturn createObject("component", "Quote").init() />
	</cffunction>
	
	<cffunction name="getAllNewsItems" access="public" output="false" returntype="query" hint="Returns a query object containing all News Items">
		<cfargument name="pageType" type="string" required="true" />
		
		<cfreturn getMainGateway().getAllNewsItems(argumentCollection = arguments) />
	
	</cffunction>
	
	<cffunction name="getAllCareerItems" access="public" output="false" returntype="query" hint="Returns a query object containing all Career Items">
		<cfargument name="pageType" type="string" required="true" />
		
		<cfreturn getMainGateway().getAllCareerItems(argumentCollection = arguments) />
	
	</cffunction>
	
	<cffunction name="getPics" access="public" output="false" returntype="query" hint="Returns a query object containing all Pic Items">
		<cfargument name="whichDirectory" type="string" required="true" />
		
		<cfreturn getMainGateway().getPics(argumentCollection = arguments) />
	</cffunction>

	<cffunction name="getPicDirectories" access="public" output="false" returntype="query" hint="Returns a query object containing all Pic Directories">
		<cfreturn getMainGateway().getPicDirectories() />
	</cffunction>
	
	<cffunction name="processPic" access="public" output="false" returntype="void">
		<cfargument name="whichDirectory" type="string" required="true" />
		
		<cfset getMainDAO().processPic(argumentCollection = arguments) />
	</cffunction>
	
	<cffunction name="getNewsItem" access="public" output="false" returntype="News" hint="Returns an object containing a News Item">
		<cfargument name="newsID" type="numeric" required="true" />
		
		<cfset var news = getNewsBean().init(arguments.newsID) />
	
		<cfset getMainDAO().fetchNewsItem(news) />
		
		<cfreturn news />
	</cffunction>

	<cffunction name="saveNewsItem" access="public" output="false" returntype="void">
		<cfargument name="news" type="News" required="true" />
		
		<cfset getMainDAO().saveNews(news) />
			
	</cffunction>

	<cffunction name="getJobItem" access="public" output="false" returntype="Job">
		<cfargument name="jobID" type="numeric" required="true" />
		
		<cfset var job = getJobBean().init(arguments.jobID) />
	
		<cfset getMainDAO().fetchJobItem(job) />
		
		<cfreturn job />
	</cffunction>

	<cffunction name="getQuoteItem" access="public" output="false" returntype="Quote">
		<cfargument name="quoteID" type="numeric" required="true" />
		
		<cfset var quote = getQuoteBean().init(arguments.quoteID) />
	
		<cfset getMainDAO().fetchQuoteItem(quote) />
		
		<cfreturn quote />
	</cffunction>
	
	<cffunction name="saveJobItem" access="public" output="false" returntype="void">
		<cfargument name="job" type="Job" required="true" />
		
		<cfset getMainDAO().saveJob(job) />
			
	</cffunction>	

	<cffunction name="saveQuote" access="public" output="false" returntype="void">
		<cfargument name="quote" type="quote" required="true" />
		
		<cfset getMainDAO().saveQuote(argumentCollection = arguments) />
			
	</cffunction>

	<cffunction name="saveQuoteItem" access="public" output="false" returntype="void">
		<cfargument name="quote" type="Quote" required="true" />
		
		<cfset getMainDAO().saveQuote(quote) />
			
	</cffunction>

	<cffunction name="getCareerOpps" access="public" output="false" returntype="query">
		<cfreturn getMainGateway().getCareerOpps() />
	</cffunction>	

	<cffunction name="getJobs" access="public" output="false" returntype="query" hint="Returns a query object containing all Job Items">
		<cfreturn getMainGateway().getJobs() />
	</cffunction>	

	<cffunction name="getQuotes" access="public" output="false" returntype="query" hint="Returns a query object containing all Quote Items">
		<cfreturn getMainGateway().getQuotes() />
	</cffunction>		

	<cffunction name="getTaskOrders" access="public" output="false" returntype="query" >
		<cfreturn getMainGateway().getTaskOrders() />
	</cffunction>

	<cffunction name="getTaskOrderItem" access="public" output="false" returntype="Task">
		<cfargument name="taskOrderID" type="numeric" required="true" />
		
		<cfset var task = getTaskBean().init(arguments.taskOrderID) />
	
		<cfset getMainDAO().fetchTaskItem(task) />
		
		<cfreturn task />
	</cffunction>	

	<cffunction name="saveTaskOrder" access="public" output="false" returntype="void">
		<cfargument name="task" type="Task" required="true" />
		
		<cfset getMainDAO().saveTaskOrder(task) />
			
	</cffunction>	

	<cffunction name="processAdminLogin" access="public" output="false" returntype="numeric">
		<cfargument name="userName" type="string" required="true" />
		<cfargument name="password" type="string" required="true" />
		
		<cfreturn getMainDAO().processAdminLogin(argumentCollection = arguments) />
	</cffunction>		

	<cffunction name="processSurvey" access="public" output="false" returntype="void">
		<cfargument name="survey" type="survey" required="true" />
		
		<cfset getMainDAO().emailSurvey(argumentCollection = arguments) />
			
	</cffunction>	

	<cffunction name="processCalibrationRequest" access="public" output="false" returntype="void">
		<cfargument name="calibrationRequest" type="CalibrationRequest" required="true" />
		
		<cfset theRequest = arguments.calibrationRequest />
			
		<cfmail to="swinters@n-s-i.us" cc="DRINI@n-s-i.us" from="#theRequest.getEmail()#" subject="Calibration Request" type="html">
			<cfoutput>
			<h2>Naval Systems, Inc. (NSI) Calibration Request</h2>
			<strong>Requesting Quote</strong>:  #calibrationRequest.getWantQuote()#
          	<br/><br/>
               <table width="100%" border="0">
          		<tr>
            		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Technical Contact Information</h2></td>
          		</tr>
         			<tr>
					<td><span class="required">*</span>&nbsp;</td>
            		<td><strong>Company</strong></td>
		            <td colspan="3">#calibrationRequest.getCompany()#</td>
	        	</tr>
         			<tr>
					<td><span class="required">*</span>&nbsp;</td>
		            <td><strong>Contact</strong></td>
		            <td>#calibrationRequest.getContactName()#</td>
		            <td><strong>Title</strong></td>
		            <td>#calibrationRequest.getContactTitle()#</td>
         			</tr>
         			<tr>
					<td>&nbsp;</td>
		            <td><strong>Department</strong></td>
		            <td colspan="3">#calibrationRequest.getDepartment()#</td>
		      	</tr>
	          	<tr>
		          	<td><span class="required">*</span>&nbsp;</td>
		            <td><strong>Email</strong></td>
		            <td colspan="3">#calibrationRequest.getEmail()#</td>
		       	</tr>
		       	<tr>
			       	<td><span class="required">*</span>&nbsp;</td>
		        	<td><strong>Phone Number</strong></td>
		            <td>#calibrationRequest.getPhoneNumber()#</td>
		            <td><strong>Extension</strong></td>
		            <td>#calibrationRequest.getExtension()#</td>
		       	</tr>
       		</table>
           	<p>&nbsp;</p>
           	<table width="100%" border="0">
              	<tr>
               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Item Information</h2></td>
              	</tr>
             		<tr>
					<td>&nbsp;</td>
               		<td><strong>Asset Number</strong></td>
               		<td>#calibrationRequest.getItemAssetNumber()#</td>
	                <td><strong>Serial Number</strong></td>
               		<td>#calibrationRequest.getItemSerialNumber()#</td>
             		</tr>
             		<tr>
					<td>&nbsp;</td>
               		<td><strong>Item Category</strong></td>
               		<td>#calibrationRequest.getItemCategory()#</td>
	                <td><strong>Item Description</strong></td>
               		<td>#calibrationRequest.getItemDescription()#</td>
             		</tr>
             		<tr>
					<td>&nbsp;</td>
               		<td><strong>Range</strong></td>
               		<td>#calibrationRequest.getItemRange()#</td>
               		<td><strong>Model Number</strong></td>
               		<td>#calibrationRequest.getItemAccuracy()#</td>
             		</tr>
           	</table>
          	 	<p>&nbsp;</p>
           	<table width="100%" border="0">
              	<tr>
               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Testing Standards</h2></td>
             	</tr>
             	<tr>
               		<td>&nbsp;</td>		
					<td colspan="2"><strong>ISO 17025</strong>:  #calibrationRequest.getISO17025()#</td>
               		<td colspan="2"><strong>Air Force 33K</strong>:  #calibrationRequest.getSTDAirForce33K()#</td>
            	 </tr>
             	<tr>
					<td>&nbsp;</td>		
               		<td colspan="2"><strong>ANSI/NCSL Z-50-1</strong>:  #calibrationRequest.getSTDANSINCSLZ5401()#</td>
               		<td colspan="2"><strong>NAVAIR</strong>:  #calibrationRequest.getSTDNAVAIR()#</td>
             	</tr>
             	<tr>
					<td>&nbsp;</td>		
               		<td colspan="2"><strong>ASME</strong>:  #calibrationRequest.getSTDASME()#</td>
               		<td colspan="2">Other, please specify: #calibrationRequest.getStdOther()#</td>
             	</tr>
           	</table>
           	<p>&nbsp;</p>
           	<table width="100%" border="0">
              	<tr>
               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Pressure Units</h2></td>
             	</tr>
             	<tr>
					<td>&nbsp;</td>		
               		<td><strong>System fluid</strong></td>
	                <td>#calibrationRequest.getPressureSystemFluid()#</td>
	                <td><strong>Gage Accuracy</strong></td>
	                <td>#calibrationRequest.getPressureGageAccuracy()#</td>
             	</tr>
             		<tr>
					<td>&nbsp;</td>	
               		<td><strong>Cleanliness Requirements</td>
               		<td>#calibrationRequest.getPressureCleanlinessRequirements()#</td>
              		 <td><strong>Normal System Pressure/Rage</strong></td>
               		<td>#calibrationRequest.getPressureNormalSystemPressureRage()#</td>
             	</tr>
             </table>
			<p>&nbsp;</p>
             	<table width="100%" border="0">
            	<tr>
               		<td colspan="5" align="center" valign="middle" bgcolor="##EBE9E9"><h2>Additional Information</h2></td>
             	</tr>
             	<tr>
					<td>&nbsp;</td>	
               		<td><strong>Is this item in need of repair?</strong></td>
               		<td colspan="3">#calibrationRequest.getneedOfRepair()#</td>
                </tr>
                <tr>
               		<td>&nbsp;</td>	
					<td><strong>Additional Comments</strong></td>
               		<td colspan="3">#calibrationRequest.getAdditionalComments()#</td>
             	</tr>
       		</table>
		</cfoutput>			
		</cfmail>
	</cffunction>	
	
</cfcomponent>