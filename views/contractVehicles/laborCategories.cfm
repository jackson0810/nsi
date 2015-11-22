<html>
<cfsilent>
	<cfquery name="taskOrders" datasource="nsiwebdata09">
		SELECT		taskOrderID, taskOrderNumber, description, pdfName, status, dateEntered, dateUpdated 
	    FROM 		taskOrders
	    WHERE		status = 1
		ORDER BY	taskOrderNumber ASC
	</cfquery>
</cfsilent>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfoutput>
		<meta name="robots" content="index, follow">
		<title>Naval Systems, Inc. - Technical/Professional Labor Categories (All SINs)</title>
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
				<em>Supporting the Warfighter!</em>
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


<!---If this is a single news item, display the following information.  Otherwise see section below labeled "ALL NEWS ITEMS".--->
<table border="0" width="95%" cellpadding="0" cellspacing="0">
	<tr>
		<td width="20%" valign="top" bgcolor="##6699CC"  style="padding: 0 5px 0 5px;" >
			<div id="mro_menu">
				<ul>
				<li style="border-bottom: 1px solid ##e2e2e2;">
					<a href="seaport.cfm">SeaPort-e</a>
				</li>
				<li style="border-bottom: 1px solid ##e2e2e2;">
					<a href="gsa.cfm">GSA</a>
					<ul>
						<li><a href="authorizedSpecialItemNumber.cfm">&raquo; Authorized Special<br/>&nbsp;&nbsp;&nbsp;Item Number<br>&nbsp;&nbsp;&nbsp;(SINS)</a></li>
						<li><a href="customerInfoDataSheet.cfm">&raquo; Customer Data<br/>&nbsp;&nbsp;&nbsp;Sheet</a></li>
						<li><a href="laborCategories.cfm">&raquo; Labor Categories<br>&nbsp;&nbsp;&nbsp;(All SINS)</a></li>
						<li><a href="pricelist.cfm">&raquo; Pricelist</a></li>
					</ul>
				</li>
				</ul>
			</div>
			<div align="center">
				<img src="/images/battleship.jpg" width="125" /><br/><br/>
				<img src="/images/SeaStallion.jpg" width="125" />
			</div>
		</td>
		<td valign="top" style="padding-left:5px;">
			<h1>Technical/Professional Labor Categories (All SINs)</h1>
			<table border="0" class="tablesorter">
				<thead>
					<tr>
						<th>SIN(s)</th>
						<th>Service Proposed<br/>(e.g. Job Title/Task)</th>
						<th>Minimum Education/<br>Certification Level</th>
						<th>Min. Yrs of Exp</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Consultant Expert</td>
						<td>Masters Degree/PhD preferred</td>
						<td>15</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:   </strong>Senior executive responsible for providing strategic direction, vision, and leadership.  Able to provide 
							the highest-level of functional expertise.  Other responsibilities may include:  (1) Analyze and assess the operational and functional baseline of an organization and its 
							organizational components and define the direction and strategy for engagement while ensuring organizational needs are being addressed.  (2)  Ability to analyze complex problems 
							and makes recommendations or propose/develop alternative solutions. The individual may be called upon to provide inputs, prepare and/or present.
						</td>
					</tr>
					
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td> Subject Matter Expert </td>
						<td>Bachelors Degree</td>
						<td>8</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong>Provides unique, subject matter expertise in specific functional, technical, professional or policy areas of the project.  
							Other responsibilities may: include:  (1)  Investigating or identifying business, scientific, technology, engineering, operational, professional and/or policy issues. (2)  
							Conducting expert analysis of these issues; and providing expert advice in support of major programs/projects,  (3)  Assignments may require independent action, leading and/or 
							guiding the efforts of peers, leading or collaborating with top level working groups and personnel involved in high level, highly complex efforts. 
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2<br/>874-6  874-7</td>
						<td>Project Manager</td>
						<td>Bachelors Degree</td>
						<td>7</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities: </strong>Provides oversight and management to overall contract operations often involving multiple projects/tasks and groups of personnel 
							at multiple locations. Other responsibilities may include:  (1)  Maintain and manages relationships with senior level management within the client organization, (2)  May manage 
							multiple contract operations, ensure quality standards and work performance on all task orders and projects, plans, organizes and oversees work efforts, (3) Assigns resources and 
							manages personnel., (4) Provides risk management, ensures quality management, monitors overall project and contract performance.
						</td>
					</tr>
					<tr>
						<td align="center">874-1 874-2<br/>874-6  874-7</td>
						<td>Project Control Specialist</td>
						<td>Bachelors Degree</td>
						<td>10</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities: </strong>Provides management and financial expertise to such areas as budgeting, manpower and resource planning, and financial reporting.  
							Other responsibilities may include: (1)  May direct financial management and administrative activities, (2)  Performs complex evaluations of existing procedures, processes, 
							techniques, models, and/or systems related to management problems or contractual issues, which would require a report and recommend solutions, (3)  Develops work breakdown 
							structures, prepare charts, tables, graphs, and diagrams to assist in analyzing problems. 
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Project Analyst</td>
						<td>Bachelors Degree</td>
						<td>6</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities: </strong>Designs, develops, tests, surveys and troubleshoots management, organizational, and business improvement activities; works on 
							complex projects requiring original thinking and new approaches. Other responsibilities may include:  (1)  Possesses ability to guide, assist or manage others on a project, set 
							priorities and ensure that the work products for the group conform to company standards, (2)  May conduct and manage a MOBIS project; reviews progress and evaluates results; works 
							with other technical and administrative disciplines; performs top-level design/development; and, plans, assigns and manages personnel.
						</td>
					</tr>
					<tr>
						<td align="center">874-1 874-2<br/>874-6  874-7</td>
						<td>Principal Cost Analyst</td>
						<td>Bachelors Degree</td>
						<td>12</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong>Works as a consulting team member or an individual consultant by analyzing intricate or complex data in order to provide advice 
							and service to clients in areas of expertise. Other responsibilities may include: (1) May function as client�s representative or spokes person, (2) Responsible for ensuring compliance 
							with established client standards, (3) Familiar with a variety of the field�s concepts, practices, and procedures, (4) Relies on experience and judgment to plan and accomplish goals, 
							(5) Performs a variety of complicated tasks, (6) Leads and directs work of others.  A wide degree of creativity and latitude is expected.
						</td>
					</tr>
					<tr>
						<td align="center">874-1 874-2<br/>874-6  874-7</td>
						<td>Financial Analyst</td>
						<td>Bachelors degree</td>
						<td>3</td>
					</tr>
					<tr>
						<td colspan="4">
						<strong>Functional Duties/Responsibilities:  </strong>Provides cost/financial management experience as well as management experience in planning, problem solving, and data collection and 
						analysis. Other responsibilities may include:  (1) May develop cost estimates according to prescribed work breakdown structures, (2)  Develop cost estimating relationships, identify cost 
						drivers, and develop cost charts in prescribed formats, (3) Provides support to Principal Cost Analyst and senior staff.
						</td>
					</tr>
					<tr>
						<td align="center">874-1 874-2<br/>874-6  874-7</td>
						<td>Program Analyst</td>
						<td>Bachelors Degree</td>
						<td>5 - 7</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong>Provides assistance in carrying out operational work, serving primarily as fact-finder and program analyst with the ability to 
							provide research assistance under direction of technical staff.  Other responsibilities may include:  (1)  Performs a variety of management tasks that are broad in nature and are 
							concerned with the integration of teams/personnel, tools and techniques to provide MOBIS based program/project management services to improve operations, (2) Uses a variety of project 
							management tools and database tools like Access, and Microsoft office to make representations of program/project issues and problems.
						</td>
					</tr>
					<tr>
						<td align="center">874-1 874-2<br/>874-6  874-7</td>
						<td>BFM Manager</td>
						<td>Bachelors Degree</td>
						<td>3 - 5</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong>Provides financial management support from project information provided by Project Managers or client POCs.  Other 
							responsibilities may include: (1) Monitors and reports on performance against budget throughout the fiscal year, (2) Develops and manages information systems to track and provide 
							up-to-the minute reports on the financial, contractual, and funding status of projects and on personnel utilization, (3) Maintains financial and operational projections.
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Project Engineer</td>
						<td>Masters Degree</td>
						<td>14</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong>Performs engineering assignments as part of a work team involved in the planning, organizing, and developing of complicated 
							projects. Other responsibilities may include:  (1) Applies extensive knowledge and expertise to a wide range of MOBIS-related engineering problems, (2) Perform data collection, 
							oversee surveys, lead in assessment of organizational structures and activities, evaluations, and assessments, and assist in preparation of deliverables, (3) May supervise other 
							project professional or technicians. 
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Junior Engineer</td>
						<td>Bachelors Degree</td>
						<td>4</td>
					</tr>
					<tr>
						<td colspan="4">
						<strong>Functional Duties/Responsibilities:  </strong>Under the limited supervision of a Senior Engineer or Principal Engineer, performs assigned portions of work that involves 
						solving engineering problems. Other responsibilities may include: (1) Perform design implementation and analysis, technical writing and presentations, customer interface, application 
						of engineering mathematics, and the use of a variety of engineering/manufacturing computer systems, (2) May assist in developing and implementing engineering training specific to the 
						customer. 
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Systems Analyst</td>
						<td>Bachelors Degree</td>
						<td>7</td>
					</tr>
					<tr>
						<td colspan="4">
						<strong>Functional Duties/Responsibilities:  </strong>performs analysis, primarily with respect to computer functions, software development, hardware development, and reliability, 
						maintainability, and availability.  Other responsibilities may include: (1) May provide technical direction for personnel performing system wide analysis, including the review of work 
						products for correctness, adherence to the design concepts and customer standards, and for progress in accordance with schedules 
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Technical Writer</td>
						<td>Bachelors Degree</td>
						<td>6</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong> Provides technical writing support to contract efforts.  Other responsibilities may include: (1) The individual may be called 
							upon to provide inputs, prepare and/or present high-level briefings of an innovative business, management, technological or strategic nature, (2) Task may also include obtaining 
							technical data from independent observation, reviews with staff members, and/or studies of published materials and existing documentation, (3) Coordinate efforts of technical artists 
							and illustrators in preparing reports, articles, and publications of internal and external distribution.  
						</td>
					</tr>
					<tr>
						<td align="center">874-1  874-2  874-3<br/>874-6  874-7</td>
						<td>Administrative Assistant</td>
						<td>High School Diploma</td>
						<td>0 - 1</td>
					</tr>
					<tr>
						<td colspan="4">
							<strong>Functional Duties/Responsibilities:  </strong>Provides a wide range of administrative support depending on the functional specialty required by the project.  Other 
							responsibilities include:  (1) Assists in the preparation of deliverables, internal reports, briefings, and drawings associated with the project being supported, (2) Coordinates and 
							schedules facilities, meetings, and other functions.
						</td>
					</tr>
				</tbody>
			</table>
			<h2>Experience & Degree Substitution</h2>
			<p>
				The above describes the functional responsibilities and education and experience requirements for each labor category. These requirements are a guide to the types of experience and educational 
				background of typical personnel in each labor category.  Education and experience may be substituted for each other. Each year of relevant experience may be substituted for one year of education, 
				and vice versa. In addition, certifications, professional licenses, and vocational technical training may be substituted for experience or education. 
			</p>
			<table border="0" class="tablesorter">
				<thead>
					<tr>
						<th>Degree</th>
						<th>Experience Equivalence</th>
						<th>Other Equivalence</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Bachelors</td>
						<td>Associate degree +2 years relevant experience or 4 years relevant experience</td>
						<td>Professional certification</td>
					</tr>
					<tr>
						<td>Masters</td>
						<td>Bachelors degree +2 years relevant experience or Associate degree +4 years relevant experience</td>
						<td>Professional license</td>
					</tr>
				</tbody>
			</table>
			<br/>
			<p>
				* Successful completion of higher education which has not yet resulted in a degree may be counted as 1 for 1 year�s of experience for each year of college completed.  
			</p>
			<br/><br/>
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