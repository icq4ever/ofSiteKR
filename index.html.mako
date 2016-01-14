## -*- coding: utf-8 -*-
<%inherit file="_templates/home.mako" />

<div class="page-left-medium">
	<p>
		<!-- OF video -->
		<iframe src="http://player.vimeo.com/video/74124094?title=0&amp;byline=0&amp;portrait=0" width="700" height="393" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	</p>
</div>

<div class="page-right-narrow">
    <div class="home-links">
        <h2>openFrameworks는 창의적 코딩을 위한 오픈소스 C++ 툴킷입니다. </h2>

        <h3><a href="download/">다운로드</a></h3>
        <p>가장 최신의 릴리즈(${bf.config.currentVersion})를 받으시고, openFrameworks를 구동하기 위한 셋업 가이드를 따라주시기 바랍니다.</p>
        
	<h3><a href="documentation/">도큐먼트</a></h3>
	<p>openFrameworks의 클래스, 함수, 애드온의 레퍼런스입니다. 또한 <a href="http://openframeworks.kr/tutorials">튜토리얼</a>섹션을 살펴보실 수 있습니다.</p>
        
	<h3><a href="http://forum.openframeworks.cc/">포럼</a></h3>
	<p>오픈프레임웍스로 활동하는 다른 사람들을 만나볼 수 있는 포럼입니다. 여기서 여러분의 작업을 공유하거나 문제를 해결을 찾을 수 있습니다.</p>
    <p>오픈프레임웍스 한국어 포럼은 <a href="http://openframeworks-kr.slack.com/" target="_blank">이곳</a>입니다. 가입을 위해 <a href="http://slack-ofkr-auto-invite.herokuapp.com/" target="_blank">이 링크</a>를 사용해주시기 바랍니다.</p>
    </div>
</div>

<div class="sectiontext home">
    <h2>최신 이미지</h2>
</div>
<div class="gallery home">
    <div id="flickr"></div>
    <br class="clearboth">
</div>

<div class="sectiontext home">
    <h2>최신 글</h2>
</div>
<div class="social home">
    <div class="tweet">
        <h3>트위터</h3>
        <div id="tweets">
        <div class="tweets">
            <a data-chrome="noheader noscrollbar nofooter transparent"  data-show-replies="false" data-tweet-limit="4" data-link-color="#EE3987"  class="twitter-timeline" href="https://twitter.com/search?q=openframeworks" data-widget-id="367489340693176321">Tweets about "#openframeworks"</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </div>
        </div>
    </div>

    <div id="forum"></div>
    
    <div id="github"></div>

    <br class="clearboth">
</div>


