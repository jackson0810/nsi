<cfsilent>
	<cfif isDefined('url.jobid')>
		<cfset jobID = url.jobID />
	<cfelse>
		<cfset jobID = 0 />
	</cfif>
	<cfquery name="jobsData" datasource="nsiwebdata09">
		SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
		FROM		jobData
		WHERE		jobStatus=<cfqueryparam cfsqltype="cf_sql_integer" value="1" />
		ORDER BY	dateUpdated DESC
	</cfquery>
	
	<!---Get the jobs data item.  If the jid(jobsID) was not passed in then get all job items.--->
	<cfquery name="jobData" dbtype="query">
		SELECT		jobID, title, description, datePosted, dateUpdated, jobStatus
		FROM		jobsData
		WHERE		jobStatus=<cfqueryparam cfsqltype="cf_sql_integer" value="1" />
		<cfif jobID NEQ 0>
			AND		jobID = <cfqueryparam cfsqltype="cf_sql_integer" value="#jobID#" />
		</cfif>
		ORDER BY	dateUpdated DESC
	</cfquery>
</cfsilent>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Home</title>
 		<link rel="Shortcut Icon" href="/favicon.ico" />
		<link rel="icon" href="/favicon.ico" type="image/x-icon">
		<link rel="alternate" type="application/rss+xml" title="RSS" href="/views/newsFeed.rss" />
		
		<link rel="stylesheet" media="screen" href="/css/template.css" />		
		<script type="text/javascript" src="/scripts/jquery/jquery-1.3.2.min.js"></script>
		
		<!--JQuery Menu-->
		<script type="text/javascript" src="/scripts/jquery/jdMenu/jquery.jdMenu.js"></script>
		<link type="text/css" rel="stylesheet" href="/scripts/jquery/jdMenu/jquery.jdMenu.css"  />
		
		<!-- table sorting and paging -->
		<script type="text/javascript" src="/scripts/jquery/tableSorter/jquery.tablesorter.min.js"></script>
		<link rel="stylesheet" href="/scripts/jquery/tableSorter/themes/blue/style.css" type="text/css" media="screen" />
	
		<!--Table Highlighting-->
		<script type="text/javascript" language="javascript" src="/scripts/jquery/colorize/colorize.js" ></script>
		 
		<!--// load the qForm JavaScript API //-->
		<script src="/scripts/qForms/lib/qforms.js"></script>
		<script language="JavaScript">
			qFormAPI.setLibraryPath("/scripts/qForms/lib/");
			qFormAPI.include("validation");
			qFormAPI.include("functions", null, "12");
		</script>
		<!--// [ end ] initialize all extension libraries  //-->
		
		<script type="text/javascript">
		$(document).ready(function() {
			$("##corpNewsList")
				.tablesorter({widthFixed: true, widgets: ['zebra'],headers: {0: {sorter:false}, 9: {sorter:false}}})
						
    	});
		</script>
		</cfoutput>
</head>
<body>
	<table class="wrapper" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td valign="middle"><img src="/images/logo.gif"></td>
			<!---Deleted Image<cfoutput><td><a href="/views/documents/GolfTourneyFlyer2013.pdf" target="_blank"><img src="/images/NSIGolfTourney.png" border="0" width="125"></a></td></cfoutput>--->
			<td align="right" valign="middle" class="warfighter">
				<em>Supporting the Warfighter!
				<br/><br/>
				A Service Disabled<br/>Veteran Owned Small Business
				</em>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<cfinclude template="/views/layout/new_navigation.cfm"/>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: #6699CC;" height="10px;"></td>
		</tr>
		<tr>
			<td colspan="4" width="70%" valign="top">
				<cfoutput>
<!---BEGIN EDITABLE REGION--->
<script type="text/javascript">
		document.title = "Naval Systems, Inc. - Career Opportunities";
	</script>
</div>
<!---If this is a single job, display the following information.--->
<table border="0" width="99%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" align="center" bgcolor="##6699CC">
			<img src="/images/thumbs/0430v22_thumb.jpg" width="125" /><br/><br/>
			<img src="/images/thumbs/H1_Flight_thumb.jpg" width="125" /><br/><br/>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Career Opportunities</h1>
			<p>
				<strong>To Apply At NSI</strong><br/>
				NSI offers a team-oriented work environment and a competitive compensation and employee benefits package.  If you have a commitment to excellence and want to join our team of top caliber professionals, 
				we invite you to submit a resume with cover letter to <a href="mailto:employment@n-s-i.us" style="color: ##0066CC">employment@n-s-i.us</a>.  Please specify which position(s) you are interested in applying for in the subject line of your email. 
				Quality, Integrity, Victory - that's NSI! NSI is an Equal Opportunity Employer.<br/><br/>
			</p>
			<cfif jobID NEQ 0>
				<table border="0" cellspacing="10">
					<tr>
						<th align="left">Title:&nbsp;</th>
						<td>#jobData.title#</td>
					</tr>
					<tr>
						<th valign="top" align="left">Description:&nbsp;</th>
						<td>#jobData.description#</td>
					</tr>
				</table>
			<cfelse>
				<cfif jobData.recordCount EQ 0>
					<p>Position: Senior FMS Program Analyst 

Duties and Responsibilities: 
The Senior FMS Analyst analyzes program and support requirements, program schedules and performs
other related management tasks in support of FMS pre-case, case execution, reconciliation and case
closure activities.  Oversees assigned program activities in support of the Program/Case Manager.
Participates in meetings to support program objectives and represent the Program/Case Manager. 

Knowledge/Skill Requirements:
A working knowledge of DOD SAP policies and procedures relating to FMS is required.
Experience with identifying programmatic requirements for FMS agreements and responding to letters of Offer and Acceptance (LOA), Price and Availability (P&A), Request for Information (RFI) and Request for Proposal (RFP) is required.
A working knowledge of MS Office applications is required. 
Demonstrated written and oral communications skills are required.
Knowledge of the H-60 and/or other rotary wing aircraft is a benefit.

Qualifications/Educational Requirements: 
B.A. or B.S. in a business, management or technical discipline.
Six (6) years of relevant work experience supporting U.S. Government programs with three (3) years of FMS; 
Relevant experience includes performing a wide range of analytic tasks; development of recommendations; and preparation of clear, succinct reports for management consideration.
If no Bachelor�s degree, an additional two (2) years of relevant experience and an
Associate�s degree or an additional four (4) years of relevant experience and a High School Diploma/GED can be substituted for the education requirement.

Clearance: 
Secret preferred; at a minimum must be eligible to obtain a Secret Clearance

To Apply:
Applicants who do not fulfill the above qualifications will not be considered for this position.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to submit your resume to employment@n-s-i.us. Please make sure to indicate in your email which position(s) are you interested in applying for. Quality, Integrity, Victory � that�s NSI!









Position: Senior FMS Financial Analyst
Duties and Responsibilities: 
The Senior FMS Financial Analyst performs business financial management activities in support of FMS pre-case, case execution, reconciliation and case closure activities. Analyzes total program financial requirements for development of P&A, LOA, amendments, modifications, revisions and other pricing elements. Applies knowledge of financial management functions, processes, and analytical methods to evaluate program information required for the Budget Financial Manager (BFM) and Program/Case Manager. Develops and maintains program budgets and other financial tracking documentation. 

Knowledge/Skill Requirements:
Experience in Navy Enterprise Resource Planning (NERP), Defense Security Assistance Management System (DSAMS), Management Information System for International Logistics (MISIL), and other DoD financial automated accounting & budgeting systems is required.
Experience in the preparation of P&As, LOAs, amendments, modifications, and revisions within
DSAMS are required.
Experience in case reconciliation, case management, and case closure are required.
Experience in maintaining Case Execution Performance Tool (CEPT) is required.
Knowledge of FMS financial policies and procedures is required.
A working knowledge of DOD SAP policies and procedures relating to FMS is required.
A working knowledge of MS Office applications is required.
Demonstrated written and oral communications skills are required.
Security Cooperation Information Portal SCIP) and Defense Integrated Financial System (DIFS)
experience is desired.
Qualifications/Educational Requirements: 
B.A. or B.S. in a business, management or technical discipline preferred.
Six (6) years professional experience demonstrated in DoD program/financial analysis with three (3) years of Foreign Military Sales (FMS). 
Professional experience includes development of FMS Case documents, obligation and expenditure phasing plans. The individual must clearly demonstrate experience with DoD/USN financial automated accounting and budgeting systems.
An additional two (2) years of relevant experience and an Associate�s degree or an additional four (4) years of relevant experience and a High School Diploma/GED can be substituted for the education requirement.

Clearance:  
Secret preferred; at a minimum must be eligible to obtain a Secret Clearance

To Apply:
Applicants who do not fulfill the above qualifications will not be considered for this position.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to submit your resume to employment@n-s-i.us. Please make sure to indicate in your email which position(s) are you interested in applying for. Quality, Integrity, Victory � that�s NSI!



Position:  FMS Financial Analyst
Duties and Responsibilities:  
The FMS Financial Analyst supports business financial management activities of FMS pre-case, case execution, reconciliation and case closure activities. This position will assist the BFM with analysis of program financial requirements for development of P&A, LOA, amendments, modifications, revisions and other pricing elements. In addition, they will support financial management functions as required by the BFM and Program/Case Manager. Maintain program budgets and other financial tracking documentation. 

Knowledge/Skill Requirements:
A working knowledge of MS Office applications is required.
Demonstrated written and oral communications skills are required.
Experience in Navy Enterprise Resource Planning (NERP), Defense Security Assistance Management System (DSAMS), Management Information System for International Logistics (MISIL), Security Cooperation Information Portal (SCIP), Defense Integrated Financial System (DIFS) and other DoD financial automated accounting & budgeting systems is desired.
Experience in case reconciliation, case management, and case closure are required.
Experience in maintaining Case Execution Performance Tool (CEPT) is desired.
A working knowledge of DOD SAP policies and procedures relating to FMS is desired.
Qualifications/Educational Requirements: 
A.A. or A.S. in a business, management or technical discipline.
Four (4) years professional experience supporting U.S. Government programs is required.  
Professional experience includes development of financial documents, obligation and expenditure phasing plans. The individual must clearly demonstrate experience with DoD/USN financial automated accounting and budgeting systems.
An additional two (2) years of relevant experience and a High School Diploma/GED can be substituted for the education requirement

Clearance: 
Secret preferred; at a minimum must be eligible to obtain a Secret Clearance

To Apply:
Applicants who do not fulfill the above qualifications will not be considered for this position.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to submit your resume to employment@n-s-i.us. Please make sure to indicate in your email which position(s) are you interested in applying for. Quality, Integrity, Victory � that�s NSI!






Position:  Weapons/Store Integration Consultant (FMS SME) 
Duties and Responsibilities: 
The Weapons/Store Integration Consultant (FMS SME) receives assignments in terms of general technical requirements to be attained, broad phases and progress of the work, administrative and budgetary constraint. They independently plan priorities and substantive technical requirements for work, accomplished functions with minimal direction or supervision. To accomplish this, they exercise authority over developmental, upgrade and T&E matters for assigned project for the program manager for all phases of the assigned program and to manage the activities of the assigned technical team. In support of the above functions, a Secret clearance is required for the position. Security Clearance level

Knowledge/Skill Requirements:
Mastery of systems engineering and software engineering principles and practices applicable to Naval Combat, Weapons and C4I systems in order to provide overall technical direction for the
establishment and maintenance of processes and products required for systems engineering across
force/warfare systems is required.
Broad knowledge and experience in Major Acquisition Program planning and execution and the
defense acquisition process is required.
In depth knowledge of systems engineering principles and practices including hardware, software, information systems, Program Protection and AT solutions is required, with a focus in weapons/store integration.
Experience in requirements generation, acquisition, and systems integration is required.
A working knowledge of MS Office applications is required.
Demonstrated written and oral communications skills are required.
Knowledgeable of USN configuration control, domain knowledge of airframes and avionics and
systems engineering processes, policies and procedures is required.
A working knowledge of DOD SAP policies and procedures relating to FMS is desired.
Broad knowledge and experience in foreign disclosure and police and processes is desired.
Knowledge of the H-60 and/or other rotary wing aircraft is desired.
  
Qualifications/Educational Requirements: 
B.S. in a business, management or technical discipline.
Eight (8) years of relevant work experience supporting U.S. Government aviation programs. 
Relevant experience includes performing a wide range of analytic tasks; development of recommendations; and preparation of clear, succinct reports for management consideration.

Clearance: 
Secret preferred; at a minimum must be eligible to obtain a Secret Clearance

To Apply:
Applicants who do not fulfill the above qualifications will not be considered for this position.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to submit your resume to employment@n-s-i.us. Please make sure to indicate in your email which position(s) are you interested in applying for. Quality, Integrity, Victory � that�s NSI!

Position:  Systems Security Engineering Consultant (FMS SME) 
Duties and Responsibilities:   
The Systems Security Engineering Consultant (FMS SME) receives assignments in terms of general technical requirements to be attained, broad phases and progress of the work, administrative and budgetary constraint. They independently plan priorities and substantive technical requirements for work, accomplished functions with minimal direction or supervision. To accomplish this, they exercise authority over developmental, upgrade and T&E matters for assigned project for the program manager for all phases of the assigned program and to manage the activities of the assigned technical team. 

Knowledge/Skill Requirements:
Mastery of systems engineering and software engineering principles and practices applicable to Naval Combat, Weapons and C4I systems in order to provide overall technical direction for the
establishment and maintenance of processes and products required for systems engineering across
force/warfare systems is required.
Broad knowledge and experience in Major Acquisition Program planning and execution and the
Defense acquisition process is required.
In depth knowledge of systems engineering principles and practices including hardware, software, information systems, Program Protection and AT solutions is required, with a focus in system security engineering.
Experience in requirements generation, acquisition, and systems integration is required.
A working knowledge of MS Office applications is required.
Demonstrated written and oral communications skills are required.
Knowledgeable of USN configuration control, domain knowledge of airframes and avionics and
systems engineering processes, policies and procedures is required.
A working knowledge of DOD SAP policies and procedures relating to FMS is desired.
Broad knowledge and experience in foreign disclosure and police and processes is desired.
Knowledge of the H-60 and/or other rotary wing aircraft is desired.

Qualifications/Educational Requirements: 
B.S. in a business, management or technical discipline.
Eight (8) years of relevant work experience supporting U.S. Government aviation programs. 
Relevant experience includes performing a wide range of analytic tasks; development of recommendations; and preparation of clear, succinct reports for management consideration.

Clearance: 
Secret preferred; at a minimum must be eligible to obtain a Secret Clearance

To Apply:
Applicants who do not fulfill the above qualifications will not be considered for this position.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to submit your resume to employment@n-s-i.us. Please make sure to indicate in your email which position(s) are you interested in applying for. Quality, Integrity, Victory � that�s NSI!


Position:  Structures Consultant (FMS SME) 
Duties and Responsibilities:  
The Structures Consultant (FMS SME) receives assignments in terms of general technical requirements to be attained, broad phases and progress of the work, administrative and budgetary constraint. They independently plan priorities and substantive technical requirements for work, accomplished functions with minimal direction or supervision. To accomplish this, they exercise authority over developmental, upgrade and T&E matters for assigned project for the program manager for all phases of the assigned program and to manage the activities of the assigned technical team. 

Knowledge/Skill requirements:
Mastery of systems engineering and software engineering principles and practices applicable to Naval
Combat, Weapons and C4I systems in order to provide overall technical direction for the
       establishment and maintenance of processes and products required for systems engineering across
force/warfare systems is required.
Broad knowledge and experience in Major Acquisition Program planning and execution and the
defense acquisition process is required.
In depth knowledge of systems engineering principles and practices including hardware, software,
information systems, Program Protection and AT solutions is required, with a focus in structures.
Experience in requirements generation, acquisition, and systems integration is required.
A working knowledge of MS Office applications is required.
Demonstrated written and oral communications skills are required.
Knowledgeable of USN configuration control, domain knowledge of airframes and avionics and
systems engineering processes, policies and procedures is required.
A working knowledge of DOD SAP policies and procedures relating to FMS is desired.
Broad knowledge and experience in foreign disclosure and police and processes is desired.
Knowledge of the H-60 and/or other rotary wing aircraft is desired.

Qualifications/Educational Requirements: 
B.S. in a business, management or technical discipline.
Eight (8) years of relevant work experience supporting U.S. Government aviation programs. 
Relevant experience includes performing a wide range of analytic tasks; development of recommendations; and preparation of clear, succinct reports for management consideration.

Clearance: 
Secret preferred; at a minimum must be eligible to obtain a Secret Clearance

To Apply:
Applicants who do not fulfill the above qualifications will not be considered for this position.  NSI offers a team-oriented work environment and a competitive compensation and employee benefits package. If you have a commitment to excellence and want to join our team of top caliber professionals, we invite you to submit your resume to employment@n-s-i.us. Please make sure to indicate in your email which position(s) are you interested in applying for. Quality, Integrity, Victory � that�s NSI!</p>
				<cfelse>
					<cfloop query="jobData">
						<strong>#jobData.title#</strong><br>
						#jobData.description#<br/>
					</cfloop>
				</cfif>
			</cfif>
		</td>
	</tr>
</table>
<!---END EDITABLE REGION--->
</cfoutput>
			</td>
		</tr>
		<tr>
			<td colspan="4" class="footer2">
				<div id="footer_address">
						Naval Systems, Inc.<br>
						21491 Great Mills Road, Suite 100<br>
						Lexington Park, MD 20653<br>
						Phone: (301) 737-1911<br>
						Fax: (301) 737-1940					
					</div>
				
				
				<div id="footer_copyright">
					&copy; 2014 Naval Systems, Inc.
				</div>
			</td>
		</tr>
	</table>
	<br/>
	<cfoutput>
		<cfinclude template="/views/layout/new_footer.cfm" />
	</cfoutput>
</body>
</html>