# openFrameworks.kr 프로젝트

##**[openFrameworks](http://openFrameworks.cc) 페이지 렌더링 엔진이 멀티랭귀지를 지원하는 시스템으로 전환함에 따라, 이 저장소는 더이상 사용되지 않습니다. [openFrameworks 공식 gitHub 저장소](https://github.com/openframeworks/ofSite)를 사용해주시기 바랍니다.*

이 저장소는 [openFrameworks](http://openFrameworks.cc)웹사이트의 한글페이지를 생성하는 코드와 콘텐츠를 저장하는 곳입니다.

[openFrameworks 영문페이지](http://openFrameworks.cc)의 0.9.0버전 업데이트 이후 콘텐츠를 번역하는것을 목표로 하고 있습니다.

## 로컬상에서 페이지를 빌드하는 세팅법

참여하기 위해서는, 본 저장소를 fork하고 로컬에 다운받으시면 됩니다.
Python, lxml 그리고 [blogofile 0.8b1](http://blogofile.com/)을 필요로 합니다:

	easy_install lxml
	easy_install blogofile

사이트를 로컬상에서 생성하여 보고 싶다면, 아래와 같이 실행하면 됩니다 :

	blogofile build
	blogofile serve

http://localhost:8080/ 의 주소를 사용하여 로컬에서 접근할 수 있습니다.

이후부터는 편집이 바로 가능합니다. 로컬에서 변경된 내용을 확인하기 위해서는 확인전 반드시 build, 그리고 serve를 해줘야 합니다.

#### OS X에서 인스톨 하기:

맥 OSX상에서 설치 방법은 [문서작성 돕기 ](http://www.openframeworks.cc/tutorials/developers/003_contributing_to_the_documentation.html) 페이지에서 제공되고 있습니다.



#### Debian 환경에서 인스톨하기: 
아래의 명령어로 Debian(Jessie)의 저장소에서 blogofile을 설치할 수 있습니다.

    sudo sudo apt-get install -y blogofile python-lxml

Then inside the blogofile folder run (as root)

위 방법과 다르게, [패키지](http://pypi.python.org/packages/source/B/Blogofile/Blogofile-0.8b1.tar.gz)를 [프로젝트 페이지](http://www.blogofile.com/)에서 다운받을 수 있습니다. 이후 blogofile폴더안에서 아래의 명령어를 사용합니다(as root)

	python setup.py install
	
Your may also need to install [asciidoc](http://www.methods.co.nz/asciidoc/manpage.html)
또한 어쩌면(?; 필요시) [asciidoc](http://www.methods.co.nz/asciidoc/manpage.html)를 설치할 수도 있습니다.

#### Vanilla Ubuntu 12.04에서 인스톨하기:

	aptitude install build-essential gcc python-dev libxslt1-dev git python-setuptools python-pip 
	easy_install lxml

	git clone https://github.com/EnigmaCurry/blogofile
	cd blogofile
	checkout 0.8b1
	python setup.py install

	cd ..
	git clone https://github.com/openframeworks/ofSite.git
	blogofile build
	blogofile serve



#### blogofile build시`python ValueError: unknown locale: UTF-8` 오류가 발생할 경우

	해결방법으로 bash_profile에 export LC_ALL=en_US.UTF-8 ,export LANG=en_US.UTF-8 를 추가한다.
	*우분투의 경우는 .bash_profile이 아니라 .profile을 수정하세요*

`sudo nano ~/.bash_profile`

아래의 코드를 추가한다.

<pre>
export LC_ALL=en_US.UTF-8    
export LANG=en_US.UTF-8</pre>

#### blogfile build시 `ascii codec cannot decode byte 0xec in position..` 오류가 발생할 경우

	추측컨데 이 오류는 python에서의 한글 오류와 관련되어있습니다.
	구글링 및 테스트 결과 위 오류는 아래와 같은 방법으로 해결이 가능합니다.
	현재 이 저장소에 적용이 되어있습니다.

	폴더 상위의 _config.py를 `vi _config.py`로 열어 아래의 문구를 추가합니다.
	
<pre>
...
import inspect, os
import sys	# 이 라인을 추가하세요.
reload(sys) # 이 라인을 추가하세요
sys.setdefaultencoding('utf-8')	#이 라인을 추가하세요.
olderVersion = "0.8.4"
...	</pre>

## Documentation-style markdown

The documentation portion of the site is written in Markdown, a wiki-style syntax. See details on [Daringfireball](http://daringfireball.net/projects/markdown/). 

The easiest way to check the syntax is having a look at the many pages already on the site, but here are some useful tips:

To insert code snippets use four tildes followed by curly braces with ".cpp" inside, and ending with four tildes:

	~~~~{.cpp}
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	~~~~


Images are added using normal markdown format:

    ![Image Title](filename.png "alt text")

For a more complete description of how to contribute documentation, please see the [Contributing to the Documentation ](http://www.openframeworks.cc/tutorials/developers/003_contributing_to_the_documentation.html) tutorial.

## Useful Markdown Editors

An alternative to running blogofile locally is to use a Markdown editor that can show you a rendering as you work.

* Mac OSX: [Mou](http://mouapp.com/) (OSX 10.7) or [MarkEdit](http://keshiki.net/markdown-editor/) (OSX 10.6+)
* Windows: [MarkdownPad](http://www.markdownpad.com/)
* Linux: [Writr](http://antrix.net/pages/writr-markdown/), [ReText](http://sourceforge.net/p/retext/home/ReText/), & the [gedit-markdown](http://www.jpfleury.net/en/software/gedit-markdown.php) plugin
* Online: [Dillinger](http://dillinger.io/)

Note: The website utilizes some additions to Markdown itself, so specialized functions such as code syntax highlighting may not be available in the editor, even though it will work fine on the site.
