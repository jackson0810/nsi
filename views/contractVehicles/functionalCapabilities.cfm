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
		<title>Naval Systems, Inc. - SeaPort Enhanced</title>
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
					<ul>
						<li><a href="functionalCapabilities.cfm">&raquo; Functional<br>&nbsp;&nbsp;&nbsp;Capabilities</a></li>
						<li><a href="teamMembers.cfm">&raquo; Team Members</a></li>
						<li><a href="qaPlan.cfm">&raquo; Quality<br>&nbsp;&nbsp;&nbsp;Assurance<br>&nbsp;&nbsp;&nbsp;Plan</a></li>
						<li>
							<a href="javascript:void(0);" onclick="$('div.seaPortContact').toggle('slow');">&raquo; Contacts</a>
							<div style="display:none; padding: 0px 0px 8px 25px; font-size:90%;" class="seaPortContact">
								<strong>Diana Waldorf</strong>,<br/>
								Director of Corporate Operations<br/>
								(301) 737-1911<br/>
								<a href="mailto:dwaldorf@n-s-i.us" style="font-weight: normal; color: ##2e2e2e; padding-left:0px; text-decoration: none;">dwaldorf@n-s-i.us</a>
								<br/>
								<strong>Gadsden 'Ed' Rule</strong>,</br>
								President<br/>
								(301) 919-1272<br/>
								<a href="mailto:erule@n-s-i.us" style="font-weight: normal; color: ##2e2e2e; padding-left:0px; text-decoration: none;">erule@n-s-i.us</a>
								<br/>
								<strong>Dan Seifert</strong>,<br/>
								Chief Operating Officer<br/>
								(240) 298-7158<br/>
								<a href="mailto:dseifert@n-s-i.us" style="font-weight: normal; color: ##2e2e2e; padding-left:0px; text-decoration: none;">dseifert@n-s-i.us</a>
							</div>
						</li>
						<li><a href="http://www.seaport.navy.mil/default.aspx" target="_blank">&raquo; Website</a></li>
					</ul>
				</li>
				<li style="border-bottom: 1px solid ##e2e2e2;"><a href="gsa.cfm">GSA</a></li>
				</ul>
			</div>
			<div align="center">
				<img src="/images/battleship.jpg" width="125" /><br/><br/>
				<img src="/images/SeaStallion.jpg" width="125" />
			</div>
		</td>
		<td valign="top" style="padding-left:5px;" width="80%">
			<h1>Funcitonal Capabilities</h1>
			<p>
				The SeaPort Enhanced (SeaPort-e) MACs contain scope in the 22 areas listed and described in the links below.  NSI currently provides or has the ability to provide support in any of 
				the functional areas listed below.
			</p>
			<div align="right">
				<script type="text/javascript">
					function expandAll(){
						$('div.ResearchDevelopmentSupport').toggle('slow');
						$('div.EngineeringSystemEngineeringandProcessEngineeringSupport').toggle('slow');
						$('div.ModelingSimulationStimulationAnalysisSupport').toggle('slow');
						$('div.PrototypingPreProductionModelMakingFabricationSupport').toggle('slow');
						$('div.SystemDesignDocumentationTechnicalDataSupport').toggle('slow');
						$('div.SoftwareEngineeringDevelopmentProgrammingNetworkSupport').toggle('slow');
						$('div.ReliabilityMaintainabilityAvailabilitySupport').toggle('slow');
						$('div.HumanFactorsPerformanceUsabilityEngineeringSupport').toggle('slow');
						$('div.SystemSafetyEngineeringSupport').toggle('slow');
						$('div.ConfigurationManagementSupport').toggle('slow');
						$('div.QualityAssuranceSupport').toggle('slow');
						$('div.InformationSystemDevelopmentInformationAssuranceInformationTechnologySupport').toggle('slow');
						$('div.InactivationDisposalSupport').toggle('slow');
						$('div.InteroperabilityTestEvaluationTrialsSupport').toggle('slow');
						$('div.MeasurementFacilitiesRangeInstrumentationSupport').toggle('slow');
						$('div.LogisticsSupport').toggle('slow');
						$('div.SupplyProvisioningSupport').toggle('slow');
						$('div.TrainingSupport').toggle('slow');
						$('div.InServiceEngineeringFleetIntroductionInstallationCheckoutSupport').toggle('slow');
						$('div.ProgramSupport').toggle('slow');
						$('div.FunctionalAdministrativeSupport').toggle('slow');
						$('div.PublicAffairsMultimediaSupport').toggle('slow');
					}
				</script>
				<a href="javascript:void(0);" onclick="expandAll()" class="capabilities" id="showHideAll">Show/Hide All Functional Capabilities</a>
				<br><br>
			</div>
			<p>
				<a href="javascript:void(0);" onclick="$('div.ResearchDevelopmentSupport').toggle('slow');" class="capabilities">Research and Development Support</a>
				<div style="display:none;" class="ResearchDevelopmentSupport">
					This functional area consists of supporting the development and application of scientific and analytical disciplines to conduct fundamental research; scientific study and experimentation directed toward advancing the state-of-the-art or increasing knowledge or understanding; concept formulation; assessment of system and subsystem requirements; development, analysis and evaluation of concepts, technologies, systems and subsystems; and development of operational concepts and tactics with the end goal being the application of results to developing new or improving existing warfighting capabilities. This effort may include manning, operating, and maintaining test support craft and experimental vessels in the open ocean or restricted waters to support tests.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.EngineeringSystemEngineeringandProcessEngineeringSupport').toggle('slow');" class="capabilities">Engineering, System Engineering and Process Engineering Support</a>
				<div style="display:none;" class="EngineeringSystemEngineeringandProcessEngineeringSupport">
					This functional area consists of supporting the application of engineering disciplines to technically support development of new and existing Naval capabilities and systems, technically support development of significant alterations to existing systems, support integration and interface of existing equipment or software into different applications or platforms to support the warfighter, and support evaluation of foreign or non-developmental systems, equipments, and technologies. This functional area also includes all support required within the area of environmental engineering of U. S. Navy weapon systems and base related infrastructure.<br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.ModelingSimulationStimulationAnalysisSupport').toggle('slow');" class="capabilities">Modeling, Simulation, Stimulation, and Analysis Support</a>
				<div style="display:none;" class="ModelingSimulationStimulationAnalysisSupport">
					This functional area consists of the application of a standardized, rigorous, structured methodology to create and validate a physical, mathematical, or otherwise logical representation of a system, entity, phenomenon, or process. The functional area involves the use of models, including emulators, prototypes, simulators, and stimulators, either statically or over time, to develop data as a basis for making managerial, technical, strategic, or tactical decisions.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.PrototypingPreProductionModelMakingFabricationSupport').toggle('slow');" class="capabilities">Prototyping, Pre-Production, Model-Making, and Fabrication Support</a>
				<div style="display:none;" class="PrototypingPreProductionModelMakingFabricationSupport">
					This functional area consists of the building, fabrication, testing, evaluating and operating reduced and full scale models, mock-ups, prototypes, pre-production units and research and development (R&D) test tools of electronic and electro-mechanical systems and system elements. Fabrication and machining of replacement parts or equipments for fielded systems or platforms is included. Includes the use of traditional materials as well as new composite materials.<br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.SystemDesignDocumentationTechnicalDataSupport').toggle('slow');" class="capabilities">System Design Documentation and Technical Data Support</a>
				<div style="display:none;" class="SystemDesignDocumentationTechnicalDataSupport">
					This functional area involves the engineering effort required to prepare and assure that the detailed technical data documentation that is necessary to support system development reflects the latest design, configuration, integration, and installation concepts. Technical documentation may be in the form of paper, electronic (digital) or interactive computer systems.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.SoftwareEngineeringDevelopmentProgrammingNetworkSupport').toggle('slow');" class="capabilities">Software Engineering, Development, Programming, and Network Support</a>
				<div style="display:none;" class="SoftwareEngineeringDevelopmentProgrammingNetworkSupport">
					This functional area consists of applying the engineering and scientific disciplines to perform technical analysis of, technically support development of or selection of hardware and computer software, or modification to existing hardware and software for systems, test facilities, or training facilities. This also consists of software engineering efforts and programming support required to technically support software implementation in systems, sub-systems, and components utilizing computers, electronics, and software. Planning, designing, coding, testing, integrating, supporting, and delivering algorithms, software (source code and executables), computer programs are the inherent activities of this functional area. Commercial Off-The-Shelf (COTS) solutions and product modifications (e.g., software tools, licensing, and associated hardware) which are incidental to the overall support service efforts are considered within the scope of this functional area. Generally, the software development processes used for software development under this contract shall be, as a minimum, assessed at Software Engineering Institute (SEI) Capability Maturity Model (CMM) Level 3 or equivalent, however the Government may specify other (either lower or higher) standards in individual task orders issued under the contract.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.ReliabilityMaintainabilityAvailabilitySupport').toggle('slow');" class="capabilities">Reliability, Maintainability, and Availability (RM&A) Support</a>
				<div style="display:none;" class="ReliabilityMaintainabilityAvailabilitySupport">
					This functional area consists of applying engineering, scientific, and analytical disciplines to ensure that systems and platforms RM&A requirements are integrated with the system design, development and life cycle sustainment resulting in warfighting capabilities that function effectively when required and that detection and correction of design deficiencies, weak parts, and workmanship defects that affect functionality are implemented.<br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.HumanFactorsPerformanceUsabilityEngineeringSupport').toggle('slow');" class="capabilities">Human Factors, Performance, and Usability Engineering Support</a>
				<div style="display:none;" class="HumanFactorsPerformanceUsabilityEngineeringSupport">
					This functional area consists of applying engineering, scientific, and analytical disciplines to ensure that design of interactive systems are safer, more secure and easier to use thereby reducing accidents due to human error, increasing system integrity and enabling more efficient process operations. This functional area also includes applying engineering, scientific, and analytical disciplines to ensure that the number, type, mix, knowledge, skills, and abilities (KSAs), aptitudes and physical characteristics of operators, maintainers and support personnel have been defined and documented early in the system design phase.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.SystemSafetyEngineeringSupport').toggle('slow');" class="capabilities">System Safety Engineering Support</a>
				<div style="display:none;" class="SystemSafetyEngineeringSupport">
					This functional area consists of applying engineering and analytical disciplines to ensure that safety is considered in all aspects of design, development, operation, maintenance, and modification of systems and platforms. <br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.ConfigurationManagementSupport').toggle('slow');" class="capabilities">Configuration Management (CM) Support</a>
				<div style="display:none;" class="ConfigurationManagementSupport">
					This functional area consists of applying engineering and analytical disciplines to identify, document, and verify the functional, performance, and physical characteristics of systems, to control changes and non-conformance, and to track actual configurations of systems and platforms. <br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.ConfigurationManagementSupport').toggle('slow');" class="capabilities">Configuration Management (CM) Support</a>
				<div style="display:none;" class="ConfigurationManagementSupport">
					This functional area consists of applying engineering and analytical disciplines to identify, document, and verify the functional, performance, and physical characteristics of systems, to control changes and non-conformance, and to track actual configurations of systems and platforms. <br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.QualityAssuranceSupport').toggle('slow');" class="capabilities">Quality Assurance (QA) Support</a>
				<div style="display:none;" class="QualityAssuranceSupport">
					This functional area consists of applying engineering and analytical disciplines to ensure that the processes and products used in the design, development, fabrication, manufacture and installation result in quality products.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.InformationSystemDevelopmentInformationAssuranceInformationTechnologySupport').toggle('slow');" class="capabilities">Information System (IS) Development, Information Assurance (IA), and Information Technology (IT) Support</a>
				<div style="display:none;" class="InformationSystemDevelopmentInformationAssuranceInformationTechnologySupport">
					This functional area consists of providing information system software analysis, requirements definition, design, development, test, modification, installation, implementation, quality assurance, training, and documentation to meet the evolving data storage and reporting needs of programs and management. Analyze existing IT and IS databases, web sites, and IT applications and recommend new or improved interfaces and improved management tools that meet new management requirements, or improve management effectiveness and efficiency. Perform maintenance and technical support for Local Area Networks (LAN) and Wide Area Networks (WAN) that are outside the cognizance of the Navy Marine Corps Intranet (NMCI). Modify, implement and maintain web based information systems and links. Develop web-site structure, prepare documentation for population, implement and maintain web sites. Provide systems engineering and technical support for establishment, test, upgrade, and operational support of systems, networks, workstations and support equipment hardware and software that are outside the cognizance of NMCI. Conduct IA analyses, develop, recommend, and implement, monitor, update, and maintain, IA practices, procedures, equipments, algorithms, and hardware that are outside the cognizance of NMCI.<br><br>
				</div>
			</p> 			
			<p>
				<a href="javascript:void(0);" onclick="$('div.InactivationDisposalSupport').toggle('slow');" class="capabilities">Inactivation and Disposal Support</a>
				<div style="display:none;" class="InactivationDisposalSupport">
					This functional area consists of technically supporting submarine, aircraft, weapons system and ship inactivation and disposal efforts to ensure that critical equipment removed is safeguarded and destroyed in accordance with the appropriate Navy instructions and directives. Provide direct liaison with the Shipyard or depot and the Navy to insure that critical technology is not inadvertently transferred to foreign nationals or governments. Ensure proper documentation exists for the sale of excess materials from inactivated platforms prior to sale by the Defense Reutilization and Marketing Service (DRMS). Technically support the demilitarization process for shipboard equipment using the Expanded Work Breakdown Structure (EWBS), Trade Security Controls (TSC), and Munitions List Items (MLI) all of which are used to determine the disposition of excess, not-ready-for-issue (non-RFI) equipment. Technically support the security classification requirements and guidelines for data and equipment necessary to assist in making decisions on sales issues.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.InteroperabilityTestEvaluationTrialsSupport').toggle('slow');" class="capabilities">Interoperability, Test and Evaluation, Trials Support</a>
				<div style="display:none;" class="InteroperabilityTestEvaluationTrialsSupport">
					This functional area consists of the application of engineering, scientific, and analytical disciplines necessary to ensure that developed platforms, systems, and warfighting capabilities have been properly tested and that joint interoperability requirements have been fully met at all levels of their life cycle.<br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.MeasurementFacilitiesRangeInstrumentationSupport').toggle('slow');" class="capabilities">Measurement Facilities, Range, and Instrumentation Support</a>
				<div style="display:none;" class="MeasurementFacilitiesRangeInstrumentationSupport">
					This functional area consists of applying engineering, analytical, and technician disciplines in the operation and support of measurement facilities, ranges and instrumentation used for testing, evaluating, experimenting, and exercising platforms and systems.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.LogisticsSupport').toggle('slow');" class="capabilities">Logistics Support</a>
				<div style="display:none;" class="LogisticsSupport">
					This functional area consists of applying the engineering and analytical disciplines required to implement acquisition logistics as a multi-functional technical management discipline associated with the design, development, test, production, fielding, sustainment, and improvement modifications of cost effective systems that achieve the warfighters' peacetime and wartime readiness requirements. The principal objectives of acquisition logistics are to ensure that support considerations are an integral part of the system's design requirements, that the system can be cost effectively supported through its life-cycle, and that the infrastructure elements necessary to the initial fielding, operation and maintenance support of the system are identified and developed and acquired.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.SupplyProvisioningSupport').toggle('slow');" class="capabilities">Supply and Provisioning Support</a>
				<div style="display:none;" class="SupplyProvisioningSupport">
					This functional area consists of applying the analytical and technical disciplines required to ensure that fielded warfighting capabilities are materially sustained. The principal objectives of this functional area are to ensure that material for operation and maintenance of warfighter systems is available when required, that materials are properly stored and transported, and inventories are managed in a cost effective manner to sustain supported systems.<br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.TrainingSupport').toggle('slow');" class="capabilities">Training Support</a>
				<div style="display:none;" class="TrainingSupport">
					<strong>3.18.1 - Technical Training Support</strong>
This functional area consists of applying the engineering and analytical disciplines required to ensure that the warfighter and technical support community is provided with adequate instruction including applied exercises resulting in the attainment and retention of knowledge, skills, and attitudes regarding the platforms, systems, and warfighting capabilities they operate and maintain.<br><br>

<strong>3.18.2 - Professional Development and Training Support</strong>
This functional area includes organizational development and process improvement training activities. This functional area consists of information dissemination, as well as the development and facilitation of training for the Navy and Marine Corps workforce related to organizational development and process improvement initiatives. This includes efforts such as implementation of LEAN practices, implementation of National Security Personnel System (NSPS), Competency Alignment initiatives, and other workforce training efforts related to organizational development initiatives, process improvement initiatives and Human Capital Strategies. <br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.InServiceEngineeringFleetIntroductionInstallationCheckoutSupport').toggle('slow');" class="capabilities">In-Service Engineering, Fleet Introduction, Installation and Checkout Support</a>
				<div style="display:none;" class="InServiceEngineeringFleetIntroductionInstallationCheckoutSupport">
					This functional area consists of the application of engineering, analytical, and technical disciplines and skills to establish and maintain long-term engineering, operation, and maintenance support for in-service warfighting capabilities as well as the capability to modernize or introduce transformational technologies into those capabilities.<br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.ProgramSupport').toggle('slow');" class="capabilities">Program Support</a>
				<div style="display:none;" class="ProgramSupport">
					This functional area consists of applying the business, financial management, and technical disciplines required to support planning, organizing, staffing, controlling, and leading team efforts in managing acquisition programs such that the result places a capable and supportable system in the hands of the warfighter when and where it is needed, and does so at an affordable price. This functional area represents an integration of a complex system of differing but related functional disciplines that must work together to achieve program goals through development, production, deployment, operations, support, and disposal. <br><br>
				</div>
			</p>
 			<p>
				<a href="javascript:void(0);" onclick="$('div.FunctionalAdministrativeSupport').toggle('slow');" class="capabilities">Functional and Administrative Support</a>
				<div style="display:none;" class="FunctionalAdministrativeSupport">
					<strong>3.21.1 - Clerical and Administrative Support</strong>
This functional area consists of clerical and administrative support required for seamless operation of offices and support functions. This area also includes support of personal property management functions.<br><br>

<strong>3.21.2 - Analytical and Organizational Assessment Support</strong>
This functional area consists of analytical and organizational assessment support functions, Human Capital Strategy processes and programs, organizational development efforts and organizational process improvement efforts.<br><br>

<strong>3.21.3 - Most Efficient Organization (MEO) Teaming Support Services (executed in compliance with Circular No. A-76 dated 29 May 2003)</strong>
This functional area consists of organizational assessment, infrastructure assessment, financial management, process engineering, business as well as technical and non-technical disciplines to support development and implementation of the MEO. This functional area includes offering recommendations for technology infusion, capital investments, organizational structures, staffing and lean performance execution processes and metrics. In the event of an MEO selection/decision, this functional area includes providing accepted technology solutions, capital investments and staffing in accordance with the MEO through a follow-on contract action or option. This functional area will include conflict of interest clauses. <br><br>
				</div>
			</p>
			<p>
				<a href="javascript:void(0);" onclick="$('div.PublicAffairsMultimediaSupport').toggle('slow');" class="capabilities">Public Affairs and Multimedia Support</a>
				<div style="display:none;" class="PublicAffairsMultimediaSupport">
					This functional area consists of supporting Public Affairs organizations as it relates to strategic counsel, planning and execution of communication as a function of command goals and requirements for informing, and promoting the successes of the organization both to external and internal media. Public Affairs organizations oversee the development, implementation and execution of the command communication strategy, planning and tactics for enterprise and national-level initiatives across all target audiences. To accomplish this Public affairs organizations require specific contractor public affairs support including; speechwriting, multimedia documentation, development of strategic communication plans, support of the command exhibit program, exhibit planning/services/leasing of exhibit, photography support, design/layout of command publication to provide critical assistance in development of communication messages for the Navy. This area also includes support in the development of multimedia documentation to support Command communication goals; support for development of strategic communication plans to include metrics, technical writing services, message/brand development, visual media to include still, video and multimedia, and other public affairs services. 
 <br><br>
				</div>
			</p>
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