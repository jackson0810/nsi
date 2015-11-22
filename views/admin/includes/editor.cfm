<cfparam name="theWidth" default="100%" />

<cfoutput>
	<cfscript>
		basePath = "/views/admin/includes/FCKEditor/";
		
		fckEditor = createObject("component", "#basePath#fckeditor");
		fckEditor.instanceName	= "#theInstanceName#";
		fckEditor.value			= '#theValue#';
		fckEditor.basePath		= basePath;
		fckEditor.width			= '#theWidth#';
		fckEditor.height		= '#theHeight#';
		fckEditor.ToolbarSet	= 'Basic';
		fckEditor.create(); // create the editor.
	</cfscript>
</cfoutput>