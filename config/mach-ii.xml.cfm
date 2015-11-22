<?xml version="1.0" encoding="UTF-8"?>
<!--<cfsetting enablecfoutputonly="true">-->
<!DOCTYPE mach-ii PUBLIC
	"-//Mach-II//DTD Mach-II Configuration 1.8.0//EN"
	"http://www.mach-ii.com/dtds/mach-ii_1_8_0.dtd">

<mach-ii version="1.8">
	<!--<modules>
       <module name="dashboard" file="/MachIIDashboard/config/mach-ii_dashboard.xml">
          <mach-ii>
             <properties>
                <property name="password" value="kacrex7j" />
             </properties>
          </mach-ii>
       </module>
    </modules>-->
	
	<!-- PROPERTIES -->
	<properties>
		<property name="applicationRoot" value="/"/>
		<property name="defaultEvent" value="showHome"/>
		<property name="eventParameter" value="go"/>
		<property name="parameterPrecedence" value="form"/>
		<property name="maxEvents" value="10"/>
		<property name="exceptionEvent" value="exception"/>
		
		<!--<property name="urlBase" value="/index.cfm" />
	   	<property name="urlParseSES" value="true" />
		<property name="urlDelimiters" value="/|/|/" />-->
		
		<!--APPLICATION SPECIFIC-->
		<property name="mainPageTitle" value="Naval Systems, Inc. (NSI)" />
		<property name="dsn" value="nsiwebdata09" />
		<property name="editorToolbar" value="Basic" />
		<property name="documentLocation" value="views/documents/" />
		<property name="administratorEmail" value="tflora@n-s-i.us;derrick.jackson73@gmail.com"/>
		<property name="publicEvents" value="admin.showLogin,admin.processAdminLogin" />		
		
		
		<!--<property name="Logging" type="MachII.logging.LoggingProperty" />-->
		<property name="Logging" type="MachII.logging.LoggingProperty">
			<parameters>
				<parameter name="EmailLog">
					<struct>
						<key name="type" value="MachII.logging.loggers.EmailLog.Logger" />
						<!-- Optional and defaults to true -->
						<key name="loggingEnabled" value="true" />
						<!-- Optional and defaults to 'fatal' -->
						<key name="loggingLevel" value="all" />
						<!-- Required - list of email addresses to send the log report to -->
						<key name="to" value="tflora@n-s-i.us;derrick.jackson73@gmail.com" />
						<!-- Required - email address to send the log report from -->
						<key name="from" value="logging@n-s-i-us" />
						<!-- Optional - the name of the subject of the log report email
							defaults to 'Application Log' -->
						<key name="subject" value="NSI Log" />
						<!-- Optional - mail type for the cfmail (default: text/html) -->
						<key name="mailType" value="text/html" />
					</struct>
				</parameter>
			</parameters>
		</property>

		<property name="Caching" type="MachII.caching.CachingProperty">
			<parameters>
				<parameter name="defaultCacheName" value="default" />
				<parameter name="default">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showHome_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showAbout_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showCapabilities_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showClients_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showChina_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showMRO_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showNews_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showPhotoAlbum_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showContracts_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showServices_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showCareers_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				<parameter name="showCalibration_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="0,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
				
				<parameter name="showContacts_cache">
					<struct>
						<key name="type" value="MachII.caching.strategies.TimeSpanCache" />
						<key name="scope" value="application" />
						<key name="timespan" value="29,0,0,0" />
						<key name="cleanupIntervalInMinutes" value="3" />
					</struct>
				</parameter>
			</parameters>
		</property>

	</properties>
	
	<!-- LISTENERS -->
	<listeners>
		<listener name="mainListener" type="listeners.mainListener" />
	</listeners>
	
	<!-- EVENT-FILTERS -->
	<event-filters>
		<!--
		<event-filter name="yourEventFilterName" type="fully.Qualified.Dot.Delimited.Path.To.CFC">
			<parameters>
				<parameter name="yourParameterName" value="yourParameterValue" />
			</parameters>
		</event-filter>
		-->
	</event-filters>
	
	<!-- EVENT-HANDLERS -->
	<event-handlers>
		<!--login related-->
		<event-handler event="showHome" access="public">
			<cache alias="showHome" strategyName="showHome_cache">
				<event-arg name="pageTitle" value="Home" />
				<event-arg name="pageType" value="front" />
				<notify listener="mainListener" method="getNewsItems" resultArg="newsItems" />
				<notify listener="mainListener" method="getCareerItems" resultArg="careerItems" />
				<view-page name="home" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showHome_redirect" access="private">
			<redirect event="showHome" persist="true" />
		</event-handler>
		
		<event-handler event="showAbout" access="public">
			<cache alias="showAbout" strategyName="showAbout_cache">
				<event-arg name="pageTitle" value="About Us" />
				<view-page name="about" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCapabilities" access="public">
			<cache alias="showCapabilities" strategyName="showCapabilities_cache">
				<event-arg name="pageTitle" value="Capabilities" />
				<view-page name="capabilities" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCalibration" access="public">
			<cache alias="showCalibration" strategyName="showCalibration_cache">
				<event-arg name="pageTitle" value="About" />
				<view-page name="calibration.index" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCalibrationServices" access="public">
			<cache alias="showCalibration" strategyName="showCalibration_cache">
				<event-arg name="pageTitle" value="Services" />
				<view-page name="calibration.services" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCalibrationSurvery" access="public">
			<event-arg name="pageTitle" value="Customer Survey" />
			<view-page name="calibration.customerSurvey" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="showCalibrationCustomerSurvey" access="public">
			<cache alias="showCalibration" strategyName="showCalibration_cache">
				<event-arg name="pageTitle" value="Customer Survey" />
				<view-page name="calibration.customerSurvey" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCalibrationEquipment" access="public">
			<cache alias="showCalibration" strategyName="showCalibration_cache">
				<event-arg name="pageTitle" value="Equipment" />
				<view-page name="calibration.equipment" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCalibrationAccreditation" access="public">
			<cache alias="showCalibration" strategyName="showCalibration_cache">
				<event-arg name="pageTitle" value="Accreditation" />
				<view-page name="calibration.accreditation" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCalibrationFAQs" access="public">
			<cache alias="showCalibration" strategyName="showCalibration_cache">
				<event-arg name="pageTitle" value="FAQs" />
				<view-page name="calibration.faqs" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>

		<event-handler event="showCalibrationRequests" access="public">
			<event-arg name="pageTitle" value="Calibration Request(s)" />
			<view-page name="calibration.calibrationRequest" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="processCalibrationRequest" access="public">
			<event-bean name="calibrationRequest" type="model.main.CalibrationRequest" />
			<notify listener="mainListener" method="processCalibrationRequest" />
		</event-handler>
		
		<event-handler event="showClients" access="public">
			<cache alias="showClients" strategyName="showClients_cache">
				<event-arg name="pageTitle" value="Clients" />
				<view-page name="clients" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showChina" access="public">
			<cache alias="showChina" strategyName="showChina_cache">
				<event-arg name="pageTitle" value="China Lake" />
				<view-page name="china.index" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showChinaExpertise" access="public">
			<cache alias="showChinaExpertise" strategyName="showChina_cache">
				<event-arg name="pageTitle" value="China Lake (Areas of Expertise)" />
				<view-page name="china.expertise" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMRO" access="public">
			<cache alias="showMRO" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="About MRO&amp;L" />
				<view-page name="mro.index" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMRO_redirect" access="private">
			<redirect event="showMRO" persist="true" />
		</event-handler>
		
		<event-handler event="showMROAvionics" access="public">
			<cache alias="showMROAvionics" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Avionics" />
				<view-page name="mro.avionics" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROSolder" access="public">
			<cache alias="showMROSolder" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Avionics - Protected Solder Station" />
				<view-page name="mro.solder" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROVacuum" access="public">
			<cache alias="showMROVacuum" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Avionics - Vacuum Ovens" />
				<view-page name="mro.vacuum" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROTest" access="public">
			<cache alias="showMROTest" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Avionics - Test Set" />
				<view-page name="mro.testset" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROEnv" access="public">
			<cache alias="showMROEnv" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Avionics - Environmental Chamber" />
				<view-page name="mro.chamber" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROSupplyChainMgmt" access="public">
			<cache alias="showMROSupplyChainMgmt" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Supply Chain Management" />
				<view-page name="mro.supplychainmgmt" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROMachine" access="public">
			<cache alias="showMROMachine" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Machine/Light Manufacturing" />
				<view-page name="mro.machine" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROEquipment" access="public">
			<cache alias="showMROEquipment" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Machine/Light Manurfacturing - Equipment" />
				<view-page name="mro.equipment" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROCapabilities" access="public">
			<cache alias="showMROCapabilities" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Machine/Light Manurfacturing - Capabilities" />
				<view-page name="mro.capabilities" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROMainCapabilities" access="public">
			<cache alias="showMROMainCapabilities" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Capabilities" />
				<view-page name="mro.mainCapabilities" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROService" access="public">
			<cache alias="showMROService" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Machine/Light Manurfacturing - Service" />
				<view-page name="mro.service" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROQuote" access="public">
			<cache alias="showMROQuote" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Request Quote" />
				<view-page name="mro.getquote" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showMROQuote_redirect" access="private">
			<redirect event="showMROQuote" persist="true" />
		</event-handler>
		
		<event-handler event="processQuote" access="public">
			<event-mapping event="success" mapping="showMRO_redirect" />
			<event-mapping event="fail"  mapping="showMROQuote_redirect" />
			<event-bean name="quote" type="model.main.Quote" />
			<notify listener="mainListener" method="processQuote" />
		</event-handler>
		
		<event-handler event="showMROSurvey" access="public">
			<!--<cache alias="showMROSurvey" strategyName="showMRO_cache">-->
				<event-arg name="pageTitle" value="MRO&amp;L Customer Survey" />
				<view-page name="mro.survey" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			<!-- </cache> -->
		</event-handler>
		
		<event-handler event="showMROSurvey_redirect" access="private">
			<redirect event="showMROSurvey" persist="true" />
		</event-handler>
		
		<event-handler event="processSurvey" access="public">
			<event-mapping event="success" mapping="showMRO_redirect" />
			<event-mapping event="fail"  mapping="showMROSurvey_redirect" />
			<event-bean name="survey" type="model.main.Survey" />
			<notify listener="mainListener" method="processSurvey" />
		</event-handler>
		
		<event-handler event="showMROInventory" access="public">
			<cache alias="showMROSurvey" strategyName="showMRO_cache">
				<event-arg name="pageTitle" value="MRO&amp;L Inventory for Sale" />
				<view-page name="mro.inventory" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showNews" access="public">
			<event-arg name="pageTitle" value="Company News" />
			<cache alias="showNews" strategyName="showNews_cache">
				<notify listener="mainListener" method="getNewsItems" resultArg="newsItems" />
			</cache>
			<view-page name="news" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="showGolf2009" access="public">
			<cache alias="showPhotoAlbum" strategyName="showPhotoAlbum_cache">
				<event-arg name="pageTitle" value="2009 Inaugural Golf Tournament" />
				<event-arg name="whichDirectory" value="golf2009" />
				<notify listener="mainListener" method="getPics" resultArg="picItems" />
				<view-page name="photoAlbum.golf2009" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showGolf2010" access="public">
			<cache alias="showPhotoAlbum" strategyName="showPhotoAlbum_cache">
				<event-arg name="pageTitle" value="2010 Golf Tournament" />
				<event-arg name="whichDirectory" value="golf2010" />
				<notify listener="mainListener" method="getPics" resultArg="picItems" />
				<view-page name="photoAlbum.golf2010" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showGolf2012" access="public">
			<cache alias="showPhotoAlbum" strategyName="showPhotoAlbum_cache">
				<event-arg name="pageTitle" value="2012 Golf Tournament" />
				<event-arg name="whichDirectory" value="golf2012" />
				<notify listener="mainListener" method="getPics" resultArg="picItems" />
				<view-page name="photoAlbum.golf2012" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
			
		<!--Photo Album Shell Event-->
			<!--
			<event-handler event="showGolf2009" access="public">
				<cache alias="showPhotoAlbum" strategyName="showPhotoAlbum_cache">
					<event-arg name="pageTitle" value="Company News (2009 Golf Tournament)" />
					<event-arg name="whichDirectory" value="golf2009" />
					<notify listener="mainListener" method="getPics" resultArg="picItems" />
					<view-page name="photoAlbum.golf2009" contentArg="content"/>
					<execute subroutine="mainTemplate"/>
				</cache>
			</event-handler>
			-->
		<!--End Photo Album Shell Event-->
		
		<event-handler event="showContracts" access="public">
			<cache alias="showContracts" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Contract Vehicles" />
				<view-page name="contractVehicles.index" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showFunctionalCapabilities" access="public">
			<cache alias="showFunctionalCapabilities" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Functional Capabilities" />
				<view-page name="contractVehicles.functionalCapabilities" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showSeaPort" access="public">
			<cache alias="showSeaPort" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Contract Vehicles" />
				<notify listener="mainListener" method="getTaskOrders" resultArg="taskOrders"/>
				<view-page name="contractVehicles.seaPort" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showTeamMembers" access="public">
			<cache alias="showTeamMembers" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="SeaPort-e Team Members" />
				<view-page name="contractVehicles.teamMembers" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showQAPlan" access="public">
			<cache alias="showQAPlan" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="SeaPort-e Quality Assurance Plan" />
				<view-page name="contractVehicles.qaplan" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showGSA" access="public">
			<cache alias="showGSA" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Contract Vehicles" />
				<view-page name="contractVehicles.gsa" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showAuthorizedSpecialItems" access="public">
			<cache alias="showGSA" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Authorized Special Item Numbers (SINS)" />
				<view-page name="contractVehicles.authorizedSpecialItemNumber" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCustomerInfoDataSheet" access="public">
			<cache alias="showGSA" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Customer Information Data Sheet" />
				<view-page name="contractVehicles.customerInfoDataSheet" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showLaborCategories" access="public">
			<cache alias="showGSA" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Technical/Professional Labor Categories (All SINS)" />
				<view-page name="contractVehicles.laborCategories" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showPricelist" access="public">
			<cache alias="showGSA" strategyName="showContracts_cache">
				<event-arg name="pageTitle" value="Pricelist" />
				<view-page name="contractVehicles.pricelist" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showCareers" access="public">
			<cache alias="showCareers" strategyName="showCareers_cache">
				<event-arg name="pageTitle" value="Career Opportunities" />
				<notify listener="mainListener" method="getCareerOpps" resultArg="careerOpps"/>
				<view-page name="careerOpps" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showContacts" access="public">
			<cache alias="showContacts" strategyName="showContacts_cache">
				<event-arg name="pageTitle" value="Contact Us" />
				<view-page name="contact" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showContacts2" access="public">
			<event-arg name="pageTitle" value="Contact Us" />
			<view-page name="contact2" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="showServices" access="public">
			<cache alias="showServices" strategyName="showServices_cache">
				<event-arg name="pageTitle" value="Services" />
				<view-page name="services.index" contentArg="content"/>
				<execute subroutine="mainTemplate"/>
			</cache>
		</event-handler>
		
		<event-handler event="showServicesOurTeam" access="public">
			<event-arg name="pageTitle" value="Services" />
			<view-page name="services.ourteam" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<!--Admin Section-->
		<event-handler event="admin.showLogin" access="public">
			<event-arg name="pageTitle" value="Administrative Area - Login" />
			<view-page name="admin.login" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showLogin_redirect" access="private">
			<redirect event="admin.showLogin" persist="true" />
		</event-handler>
		
		<event-handler event="admin.logout" access="public">
			<event-mapping event="success" mapping="showHome_redirect" />
			<notify listener="mainListener" method="logout" />
		</event-handler>
		
		<event-handler event="admin.processAdminLogin" access="public">
			<event-mapping event="success" mapping="admin.showAdmin_redirect" />
			<event-mapping event="fail"  mapping="admin.showLogin_redirect" />
			<event-bean name="task" type="model.main.Task" />
			<notify listener="mainListener" method="processAdminLogin" />
		</event-handler>
		
		<event-handler event="admin.showAdmin" access="public">
			<event-arg name="pageTitle" value="Administrative Area" />
			<view-page name="admin.index" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showAdmin_redirect" access="private">
			<redirect event="admin.showAdmin" persist="true" />
		</event-handler>
		
		<event-handler event="admin.showNewsList" access="public">
			<event-arg name="pageTitle" value="Company News List" />
			<event-arg name="pageType" value="newsList" />
			<notify listener="mainListener" method="getNewsItems" resultArg="newsList" />
			<view-page name="admin.news.index" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showNewsList_redirect" access="private">
			<redirect event="admin.showNewsList" persist="true" />
		</event-handler>
		
		<event-handler event="admin.showNewsItem" access="public">
			<event-arg name="pageTitle" value="Company News Item" />
			<notify listener="mainListener" method="getNewsItem" resultArg="newsItem" />
			<view-page name="admin.news.form" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showNewsItem_redirect" access="private">
			<redirect event="admin.showNewsItem" persist="true" />
		</event-handler>
		
		<event-handler event="admin.processNewsItem" access="public">
			<event-mapping event="success" mapping="admin.showNewsList_redirect" />
			<event-mapping event="fail"  mapping="admin.showNewsItem_redirect" />
			<event-bean name="news" type="model.main.News" />
			<notify listener="mainListener" method="processNewsItem" />
			<cache-clear strategyNames="showHome_cache,showNews_cache" />
		</event-handler>
		
		<event-handler event="admin.showJobsList" access="public">
			<event-arg name="pageTitle" value="Career Opportunities List" />
			<notify listener="mainListener" method="getJobs" resultArg="jobsList" />
			<view-page name="admin.jobs.index" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showJobsList_redirect" access="private">
			<redirect event="admin.showJobsList" persist="true" />
		</event-handler>
		
		<event-handler event="admin.showJobItem" access="public">
			<event-arg name="pageTitle" value="Career Opportunity Item" />
			<notify listener="mainListener" method="getJobItem" resultArg="jobItem" />
			<view-page name="admin.jobs.form" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showJobItem_redirect" access="private">
			<redirect event="admin.showJobItem" persist="true" />
		</event-handler>
		
		<event-handler event="admin.processJobItem" access="public">
			<event-mapping event="success" mapping="admin.showJobsList_redirect" />
			<event-mapping event="fail"  mapping="admin.showJobItem_redirect" />
			<event-bean name="job" type="model.main.Job" />
			<notify listener="mainListener" method="processJobItem" />
			<cache-clear strategyNames="showHome_cache,showCareers_cache" />
		</event-handler>
		
		<event-handler event="admin.showQuotesList" access="public">
			<event-arg name="pageTitle" value="Request a Quote List" />
			<notify listener="mainListener" method="getQuotes" resultArg="quoteList" />
			<view-page name="admin.quote.index" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showQuotesList_redirect" access="private">
			<redirect event="admin.showQuotesList" persist="true" />
		</event-handler>
		
		<event-handler event="admin.showQuoteItem" access="public">
			<event-arg name="pageTitle" value="Request a Quote Item" />
			<notify listener="mainListener" method="getQuoteItem" resultArg="quoteItem" />
			<view-page name="admin.quote.view" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showQuoteItem_redirect" access="private">
			<redirect event="admin.showQuoteItem" persist="true" />
		</event-handler>
		
		<event-handler event="admin.processQuoteItem" access="public">
			<event-mapping event="success" mapping="admin.showQuotesList_redirect" />
			<event-mapping event="fail"  mapping="admin.showQuoteItem_redirect" />
			<event-bean name="quote" type="model.main.Quote" />
			<notify listener="mainListener" method="processQuoteItem" />
		</event-handler>
		
		<event-handler event="admin.showTaskOrderList" access="public">
			<event-arg name="pageTitle" value="Task Order List" />
			<notify listener="mainListener" method="getTaskOrders" resultArg="taskOrderList" />
			<view-page name="admin.taskOrders.index" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showTaskOrderList_redirect" access="private">
			<redirect event="admin.showTaskOrderList" persist="true" />
		</event-handler>
		
		<event-handler event="admin.showTaskOrderItem" access="public">
			<event-arg name="pageTitle" value="Task Order Item" />
			<notify listener="mainListener" method="getTaskOrderItem" resultArg="taskOrderItem" />
			<view-page name="admin.taskOrders.form" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showTaskOrderItem_redirect" access="private">
			<redirect event="admin.showTaskOrderItem" persist="true" />
		</event-handler>
		
		<event-handler event="admin.processTaskOrder" access="public">
			<event-mapping event="success" mapping="admin.showTaskOrderList_redirect" />
			<event-mapping event="fail"  mapping="admin.showTaskOrderItem_redirect" />
			<event-bean name="task" type="model.main.Task" />
			<notify listener="mainListener" method="processTaskOrder" />
		</event-handler>
		
		<event-handler event="admin.showPhotoAlbums" access="public">
			<event-arg name="pageTitle" value="All Photo Albums" />
			<notify listener="mainListener" method="getPicDirectories" resultArg="picDirectories" />
			<view-page name="admin.photoAlbum.index" contentArg="content"/>
			<execute subroutine="mainTemplate"/>
		</event-handler>
		
		<event-handler event="admin.showPhotoAlbums_redirect" access="private">
			<redirect event="admin.showPhotoAlbums" persist="true" />
		</event-handler>
		
		<event-handler event="admin.processPhotoAlbum" access="public">
			<event-mapping event="success" mapping="admin.showPhotoAlbums_redirect" />
			<event-mapping event="fail"  mapping="admin.showPhotoAlbums_redirect" />
			<notify listener="mainListener" method="processPic" />
		</event-handler>
		
		<event-handler event="clearPhotoAlbumCache" access="public">
			<cache-clear alias="showHome" />
			<cache-clear alias="showNews" />
			<redirect event="showNews" />
		</event-handler>
		<!--End Admin Area-->	
			
		<event-handler event="exception" access="private">
			<event-arg name="pageTitle" value="Error Encountered" />
			<view-page name="exception" contentArg="content" />
			<execute subroutine="mainTemplate"/>
		</event-handler>
	</event-handlers>
	                       
		
	<subroutines>
		<subroutine name="mainTemplate">
			<view-page name="layout.mainTemplate" />
		</subroutine>
	</subroutines>
	
	<!-- PAGE-VIEWS -->
	<page-views>
		<view-loader type="MachII.framework.viewLoaders.PatternViewLoader">
	        <parameters>
	           <parameter name="pattern" value="/views/**/*.cfm" />
	           <parameter name="throwIfNoMatches" value="true"/>
	        </parameters>
    	</view-loader>
	</page-views>
	
	<!-- PLUGINS -->
	<plugins>
		<plugin name="checkLoginStatus" type="plugins.CheckLoginStatus" />
	</plugins>
</mach-ii>