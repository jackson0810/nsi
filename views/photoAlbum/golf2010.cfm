<cfsilent>
	<cfset thePics = event.getArg('picItems') />
	<cfset theDirectory = event.getArg("whichDirectory") />
	<cfset pageTitle = event.getArg("pageTitle") />
	
	<cfquery name="picList" dbtype="query">
		SELECT	*
		FROM	thePics
		WHERE	name LIKE '%.JPG'
		ORDER BY name
	</cfquery>
</cfsilent>


<cfoutput>

<!---BEGIN EDITABLE REGION--->
<link rel="stylesheet" href="/scripts/jquery/gallery/css/basic.css" type="text/css" />
<link rel="stylesheet" href="/scripts/jquery/gallery/css/galleriffic.css" type="text/css" />
<script type="text/javascript" src="/scripts/jquery/gallery/js/jquery.galleriffic.js"></script>
<div id="page">
	<div id="container">
		<h1 style="font-size: 19px; color: ##535353; font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; margin: 0 0 14px 0; line-height: 1.2em;">#pageTitle#</h1>
			
		<!-- Start Advanced Gallery Html Containers -->
		<div id="gallery" class="content">
			<div id="controls" class="controls"></div>
			<div id="loading" class="loader"></div>
			<div id="slideshow" class="slideshow"></div>
		</div>
		<div id="thumbs" class="navigation">
			<ul class="thumbs noscript">
				<cfloop query="picList"> 
					<cfset thumbPic = "#listFirst(Replace(picList.name,' ','','ALL'),'.')#_s.#listlast(picList.name,'.')#" />
					<cfset medPic = "#listFirst(Replace(picList.name,' ','','ALL'),'.')#_m.#listlast(picList.name,'.')#" />
					<li>
				    	<a class="thumb" href="/images/photoAlbum/#theDirectory#/display/#medPic#" title="Title #picList.name#">
				       		<img src="/images/photoAlbum/#theDirectory#/thumbs/#thumbPic#" alt="Title #picList.name#" />
				    	</a>
					</li>
				</cfloop>
			</ul>
		</div>
			
		<!-- End Advanced Gallery Html Containers -->
		<script type="text/javascript">
			// We only want these styles applied when javascript is enabled
			$('div.navigation').css({'width' : '300px', 'float' : 'left'});
			$('div.content').css('display', 'block');

			// Initially set opacity on thumbs and add
			// additional styling for hover effect on thumbs
			var onMouseOutOpacity = 0.67;
			$('##thumbs ul.thumbs li').css('opacity', onMouseOutOpacity)
				.hover(
					function () {
						$(this).not('.selected').fadeTo('fast', 1.0);
					}, 
					function () {
						$(this).not('.selected').fadeTo('fast', onMouseOutOpacity);
					}
				);

			$(document).ready(function() {
				// Initialize Advanced Galleriffic Gallery
				var galleryAdv = $('##gallery').galleriffic('##thumbs', {
					delay:                  3000,
					numThumbs:              12,
					preloadAhead:           10,
					enableTopPager:         false,
					enableBottomPager:      true,
					imageContainerSel:      '##slideshow',
					controlsContainerSel:   '##controls',
					captionContainerSel:    '##caption',
					loadingContainerSel:    '##loading',
					renderSSControls:       true,
					renderNavControls:      true,
					playLinkText:           'Play Slideshow',
					pauseLinkText:          'Pause Slideshow',
					prevLinkText:           '&lsaquo; Previous Photo',
					nextLinkText:           'Next Photo &rsaquo;',
					nextPageLinkText:       'Next &rsaquo;',
					prevPageLinkText:       '&lsaquo; Prev',
					enableHistory:          true,
					autoStart:              false,
					onChange:               function(prevIndex, nextIndex) {
						$('##thumbs ul.thumbs').children()
							.eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
							.eq(nextIndex).fadeTo('fast', 1.0);
					},
					onTransitionOut:        function(callback) {
						$('##caption').fadeOut('fast');
						$('##slideshow').fadeOut('fast', callback);
					},
					onTransitionIn:         function() {
						$('##slideshow, ##caption').fadeIn('fast');
					},
					onPageTransitionOut:    function(callback) {
						$('##thumbs ul.thumbs').fadeOut('fast', callback);
					},
					onPageTransitionIn:     function() {
						$('##thumbs ul.thumbs').fadeIn('fast');
					}
				});
			});
			</script>
		</div>
		</div>
<!---END EDITABLE REGION--->
</cfoutput>