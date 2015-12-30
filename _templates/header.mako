## -*- coding: utf-8 -*-
<%page args="active"/>

<div id="head">

		<div id="head-left">
			<a href="${bf.config.site.url}" class="nohover"><img src="${bf.config.site.url}/images/of-logo.svg" border="0" alt="openFrameworks" /></a>
		</div>

		<div id="head-right">
		<ul>
	        <li><a href="${bf.config.site.url}/about" class="${'active' if active=='소개' else ''}" >소개</a></li>
	        <li><a href="${bf.config.site.url}/download" class="${'active' if active=='다운로드' else ''}" >다운로드</a></li>
	        <li><a href="${bf.config.site.url}/documentation" class="${'active' if active=='도큐먼트' else ''}">도큐먼트</a></li>
	        <li><a href="${bf.config.site.url}/tutorials" class="${'active' if active=='튜토리얼' else ''}">튜토리얼</a></li>
	        <li><a href="${bf.config.site.url}/gallery" class="${'active' if active=='갤러리' else ''}">갤러리</a></li>
	        <li><a href="${bf.config.site.url}/community" class="${'active' if active=='커뮤니티' else ''}">커뮤니티</a></li> 
	        <li><a href="${bf.config.site.url}/development" class="${'active' if active=='개발' else ''}" >개발</a></li>
		</ul>
		
		<ul class="menu-externals">
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://forum.openframeworks.cc" target="_blank">포럼(EN)</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="https://openframeworks-kr.slack.com/" target="_blank">포럼(KR)</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://ofxaddons.com" target="_blank">애드온</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://github.com/openframeworks/openFrameworks" target="_blank">github</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://openframeworks.cc/list-info" target="_blank">메일링 리스트</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://webchat.freenode.net?channels=openframeworks&uio=MT1mYWxzZSY5PXRydWUmMTE9Mjk39" target="_blank">IRC</a></li>
			<li><span class="external-dot"> ></span>&nbsp;<a href="http://blog.openframeworks.cc/" target="_blank">블로그</a></li>
		</ul>
		
			<!--form method="get" id="searchform" action="/index.php">
			<input type="text" value="" name="s" id="s" class="search_input" /> <input type="submit" value="Search" class="search_button"/>
			</form-->
			<!--form method="post" action="http://scripts.dreamhost.com/add_list.cgi">
                <input type="hidden" name="list" value="list@openframeworks.cc" />
                <input type="hidden" name="domain" value="openframeworks.cc" />
                <input type="hidden" name="url" value="http://openframeworks.cc/list-info/subscribe.html"  />
                <input type="hidden" name="unsuburl" value="http://openframeworks.cc/list-info/unsubscribe.html" />
                <input type="hidden" name="alreadyonurl" value="http://openframeworks.cc/list-info/already.html" />
                <input type="hidden" name="notonurl" value="http://openframeworks.cc/list-info/not.html" />
                <input type="hidden" name="invalidurl" value="http://openframeworks.cc/list-info/invalid.html" />
                <input type="hidden" name="emailconfirmurl" value="http://openframeworks.cc/list-info/confirm.html" />
                <input type="hidden" name="emailit" value="1" />
                name: <input name="name" /> <br />
                email: <input name="email" /><br />
                <span class='but'><input type="submit" name="submit" value="subscribe" /></span> <br/ >
                <span class='but'><input type="submit" name="unsub" value="unsubscribe" /></span>
            </form-->
        <ul class="submenu">
            <li><a href="http://openframeworks.cc">english></a></li>
            <li>/</li>
            <li><a href="http://openframeworks.jp">japanese</a></li>
			<li>/</li>
			<li>korean</li>
        </ul>
		</div>
</div><!-- head -->

