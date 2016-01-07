## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/2.1.08/jquery.masonry.min.js"></script>
    <script src="${bf.config.site.url}/js/documentation_index.js"></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-71930909-1', 'auto');
      ga('send', 'pageview');

    </script>
  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap">	
	    <div class="page-wide">
	        <div class="page-left-split">
                <!--ul class="submenu">
                    <li><a href="/documentation">레퍼런스</a></li>
                    <li><a href="/tutorials">튜토리얼</a></li>
                </ul-->

                
                <h1 class="documentation">레퍼런스</h1> 
                <!--ul class="docsadvanced">
                    <li><a href="/documentation" class="active">basic</a></li> 
                    <li><a href="/doxygen/annotated.html">advanced</a></li> 
                </ul-->
            </div>  
		    <div class="page-right-narrow">
			    <p>이 페이지는 openFrameworks의 코어와 포함된 addon들에 대한 레퍼런스를 다루고 있습니다. 또한 <a href="http://ofxaddons.com/">contributed addons</a>도 있습니다. openFrameworks의 API는 꾸준히 진화하고 있습니다.
수정, 추가, 의견이 있으시다면 언제든지 환영입니다! </p>
                <p><a href="/tutorials/developers/003_contributing_to_the_documentation.html">도큐먼트 튜토리얼 제작설명서</a>를 읽어볼 수도 있고 GitHub를 통해 이 도큐멘트 제작에 참여하실 수도 있습니다.</p>
			    <p>이 문서는 가장 최근에 릴리즈된 <strong>${bf.config.currentVersion}</strong>버전을 따릅니다.</p>
		    </div>
	   </div>
	   
	    <div class="page-wide">
		    

		    <div class="page-right-narrow">
		        <!--p>
			        <strong>Show advanced?</strong><br />
				        <a href="documentation?adv=yes">yes</a> / no
		        </p-->
		        <!--div id="documentation-ebook">
		        <h2>다운로드</h2>
		        <p><a href="${bf.config.site.url}/epub/ofDocs.zip"><strong>html</strong></a></p>
		        <!--p><a href="${bf.config.site.url}/epub/ofReference.pdf"><strong>pdf</strong></a></p>
		        <p><a href="${bf.config.site.url}/epub/ofReference.epub"><strong>epub</strong></a></p>
		        <p><a href="${bf.config.site.url}/epub/ofReference.mobi"><strong>mobi (kindle)</strong></a></p-->
		        <!--/div-->
		    </div>

    	</div>


    	<div class="page-wide sectiontitle">
		    <h2>core</h2>
		    <a class="hide_core_functions">함수 숨기기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="collapse_core">모두 열기</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide core">
            % for module, classes in sorted(core.items(), key=lambda module: module):
                <%include file="documentation_index_block.mako" args="module=module, classes=classes, show_header=True, subtitle=module_subtitles[module]" />
            % endfor
        </div><!-- End Page Wide -->
        
    	<div class="page-wide">
        </div><!-- End Page Wide -->
        
    	<div class="page-wide sectiontitle">
		    <h2>addons</h2> <a class="hide_addons_functions">함수 숨기기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="collapse_addons">모두 열기</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide addons">
            % for module, classes in sorted(addons.items(), key=lambda module: module):
                <%include file="documentation_index_block.mako" args="module=module, classes=classes, show_header=True, subtitle=module_subtitles[module]" />
            % endfor
        </div><!-- End Page Wide -->
              
      </div><!-- End Body Wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%include file="header.mako" args="active='documentation'" />
</%def>


