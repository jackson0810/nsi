<!---
Change following parameters value to "No" to show the serial number or supply the argument as part of URL.

Example: cfserverinfo.cfm?hideserialnumber=no
--->
<cfparam name="hideserialnumber" default="Yes">

<html>
<body bgcolor="#FFFFFF">

<cfoutput>
<br>
<H1>MyAccessAdmin Server Configuration Information</H1>

<HR>
<H4><B>ColdFusion Server Information</B></H4>
<B>Product Name</B>: #server.coldfusion.ProductName#
<BR>
<B>Product Version</B>: #server.coldfusion.productversion#
<BR>
<B>Product Level</B>: #server.coldfusion.productlevel#
<BR>

<B>Serial Number</B>:
	<cfif hideserialnumber EQ "NO"> 
		#server.coldfusion.serialNumber#
	<cfelse>
		<font color="red">The serial number is hidden by default, please check code to display serial number.</font>
	</cfif>
<BR>

<B>Supported Locales</B>: #server.coldfusion.SupportedLocales#
<BR><BR>
<H4><B>OS Variables</B></H4>

<B>Name</B>: #server.OS.Name#
<BR>
<B>AdditionalInformation</B>: #server.OS.AdditionalInformation#
<BR>
<B>Version</B>: #server.OS.Version#
<BR>
<B>BuildNumber</B>: #server.OS.BuildNumber#
<BR><BR>
<H4><b>Path</b></H4>
#GetDirectoryFromPath(GetTemplatePath())#

</cfoutput>
<HR>

<CENTER>Copyright 
<SCRIPT language="javascript">
var today = new Date()
document.write(today.getFullYear())
</SCRIPT>
<br>
<a href="http://www.aspiringgeek.com" target="top">AspiringGeek.com</CENTER>
</body>
</html>