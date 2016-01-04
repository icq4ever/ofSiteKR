## -*- coding: utf-8 -*-
<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
  </head>
  <body>
    <div id="content" class="tutorial">
      ${self.header()}
      <div id="body-wrap">	
	    <div class="page-wide">        
	        <!--h1>튜토리얼</h1-->
            <h3>이 섹션에서는 openFrameworks에서의 특정한 작업에 관한 튜토리얼을 담고 있습니다.
튜토리얼 제작에 참여하고 싶으시다면, <a href="http://github.com/openframeworks/ofSite" target="blank">github의 ofSite 저장소</a>를 fork하셔서 여러분의 튜토리얼을 markdown이나 asciidoc 포맷으로 작성해 _tutorials 폴더에 넣어주십시오.<br/>
한국어 ofSite 저장소는 <a href="https://github.com/icq4ever/ofSiteKR" target="blank">이곳</a>에 있습니다. 번역을 도우실 분들이나 한국어 튜토리얼을 제작하여 공유하고 싶으시다면 마찬가지로 <a href="https://github.com/icq4ever/ofSiteKR" target="blank">ofSiteKR 저장소</a>를 fork하여 참여해 주십시오.
            </h3>
        </div><!-- End Page Wide -->  
		    
        % for category in categories:
            % if len(category["articles"]) > 0:
                <div class="page-wide sectiontitle">  
                        <h2>${category["category"]}</h2>
                    </div><!-- End Page Wide -->
                <div class="page-wide">  
                    <ul class="articles">
                    % for article in category["articles"]:
                         <li><a href="/tutorials/${category["category"]}/${article.file}">${article.title}</a></br>
                             <p>${article.summary}</p>
                         </li>
                    % endfor
                    </ul>
                </div><!-- End Page Wide -->
            % endif
        % endfor
          


        <div id="wishlist" class="page-wide sectiontitle">
          <h2>튜토리얼 제작이 필요한 분야 리스트</h2>
        </div>
        <div class="page-wide">
          <p>아래는 제작되기를 강력하게 기대하는 튜토리얼 입니다. 튜토리얼 제작에 참여하고 싶으시다면, <a href="http://github.com/openframeworks/ofSite">github의 ofSite 저장소</a>를 fork하셔서 여러분의 튜토리얼을 markdown이나 asciidoc 포맷으로 작성해 _tutorials 폴더에 넣어주십시오.
          한국어 ofSite 저장소는 <a href="https://github.com/icq4ever/ofSiteKR" target="blank">이곳</a>에 있습니다. 번역을 도우실 분들이나 한국어 튜토리얼을 제작하여 공유하고 싶으시다면 마찬가지로 <a href="https://github.com/icq4ever/ofSiteKR" target="blank">ofSiteKR 저장소</a>를 fork하여 참여해 주십시오.</p>
          <ul>
            <li>그래픽의 기초 - 어떻게 그릴것인가</li>
            <li>ofPixels, ofTexture, ofImage</li>
            <li>gl - 시작하기, ofFbo, ofVbo</li>
            <li>카메라 다루기 - ofEasyCam 기초, ofCamera</li>
            <li>std::map</li>
          </ul>
        </div>

      </div><!-- End Body Wrap -->
      
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>

<%def name="header()">
  <%include file="header.mako" args="active='tutorials'" />
</%def>


