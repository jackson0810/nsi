<ul>
<cfoutput query="newsItems">
	<li class="newsToggle">
		<a href="/views/news.cfm?nid=#newsItems.newsID#">#newsItems.title#</a>
		<div class="news#newsItems.newsID# more" style="display:none; font-size: 90%; padding 5px 0px 8px 15px;">#mid(newsItems.longDesc,1,300)#...<a href="news.cfm?nID=#newsItems.newsID#" class="moreLink">more</a></div>
	</li>
</cfoutput>
</ul>