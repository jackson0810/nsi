<cfparam name="form.dir" default="/views/ourArchive_conf" />
<cfdirectory action="LIST" directory="#expandpath('#URLDecode(form.dir)#')#" name="qDir_unfiltered" sort="type, name" listinfo="all" recurse="no">
<cfquery name="qDir" dbtype="query">
	SELECT 	*
	FROM 	qDir_unfiltered
	WHERE 	LOWER(Name) <> 'archives.cfm'
	  AND	LOWER(Name) <> 'filetree.cfm'
</cfquery>
<ul class="jqueryFileTree" style="display: block;">
       <cfoutput query="qDir">
               <cfif type eq "dir">
                   <li class="directory collapsed"><a href="##" rel="#URLDecode(form.dir)##name#/">#name#</a></li>
               <cfelseif type eq "file">
               <li class="file ext_#listLast(name,'.')#"><a href="##" rel="#URLDecode(form.dir)##name#">#name# (#round(size/1024)#KB)</a></li>
               </cfif>
       </cfoutput>
</ul>