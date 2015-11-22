<ul>
<cfoutput query="careerItems">
	<li class="newsToggle">
		<a href="/views/careerOpps.cfm?jobID=#careerItems.jobID#">#careerItems.title#</a>
	</li>
</cfoutput>
</ul>