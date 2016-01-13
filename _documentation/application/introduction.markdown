<!-- ## Create windows, start the OF application and check info about it's state -->
## 윈도우를 생성하여, OF 어플리케이션을 시작하면서, 그것의 상태에 관한 정보를 체크하기

<!-- The main classes in this module are windows for each platform and settings classes that can be passed to openFrameworks when creating the window. In most projects you don't even need to use them explicitly as openFrameworks will use them under the hood, select the correct one in each case and start and end the infinite loop. -->
이 모듈의 메인 클래스들은 각 플랫폼을 위한 윈도우들과 윈도우를 생성할 때 오픈프레임웍스에 전달될 수 있는 세팅 클래스들 입니다. 대부분의 프로젝트들은 오픈프레임웍스가 내부적으로 이것들을 사용하기 때문에, 여러분이 꼭 사용할 필요는 없지만, 적절한 각 상황에서는 올바른 방법을 사용하여 시작하고 무한루프로 마칠 수 있습니다.

<!-- All this usually happens in the main.cpp of your application, you can check any example to see how that works. -->
이 모든것들은 평소에는 여러분의 어플리케이션의 main.cpp에서 벌어집니다. 아무 예제에서든 어떻게 동작하는지 확인할 수 있습니다.

<!-- In some cases you'll want to specify the settings of the window being created, for example if you want to use a specific version of openGL you'll have a main.cpp like: -->
특별한 경우 윈도우가 생성될때 특정한 세팅을 하고 싶을 경우가 잇습니다. 예를들어 openGL의 특정 버젼을 사용하고 싶다면, main.cpp에서 이렇게 할 수 있습니다:

```cpp
#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
	ofGLWindowSettings settings;
	settings.setGLVersion(3,2);
	ofCreateWindow(settings);

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(new ofApp());

}
```

<!-- which explicitly creates a window that uses openGL 3.2. -->
위의 경우 특별히 openGL 3.2를 사용하여 윈도우를 생성하라고 하는 경우입니다.

<!-- Also when creating multiple windows in one application you'll need to use the different window settings classes.  -->
또한 하나의 어플리케이션에서 여러 윈도우를 사용할 때에는, 각각 다른 윈도우 클래스를 사용하게 할 필요가 있습니다.

<!-- There's a base settings window that will work on any platform: [ofWindowSettings](ofWindowSettings.html) this allows to specify really basic settings like the size of the window or if we want a fullscreen application. -->
어떠한 플랫폼에서나 동작하는 윈도우의 기본 세팅이 있습니다: [ofWindowSettings](ofWindowSettings.html)을 사용하여 크기를 갖는 윈도우나 전체화면으로 어플리케이션을 구동하게끔 하는 아주 기본적인 세팅을 할 수 있습니다.

<!-- Then there's an specific GL window settings class for openGL based applications (almost everyone except for windowless apps right now), [ofGLWindowSettings](ofGLWindowSettings.html) for plain openGL and [ofGLESWindowSettings](ofGLESWindowSettings.html) for openGL ES, the flavour of openGL used in mobiles or linux arm boards like the rasperry. -->
openGL 기반 어플리케이션을 위해 특정 GL 윈도우 세팅클래스가 있습니다. 일반 openGL을 위한 [ofGLWindowSettings](ofGLWindowSettings.html), 그리고 모바일기기나 라즈베리파이와 같은 리눅스 arm보드에 알맞는openGL ES를 위한 [ofGLESWindowSettings](ofGLESWindowSettings.html)가 있습니다.

<!-- In the desktop since GLFW is the default windowing system, you can use [ofGLFWWindowSettings](ofGLFWWindowSettings.html) which allows to specify settings more specific to a desktop environment like if the window is 콘 when the application starts, it's position in the desktop or the monitor in which it should appear. -->
데스크탑에서는 GLFW가 기본 윈도우 시스템이므로, 데스크탑 환경에 보다 자세한 세팅을 할 수 있는 [ofGLFWWindowSettings](ofGLFWWindowSettings.html)를 사용할 수 있습니다. 윈도우가 최소화 상태로 시작하게 하거나, 창의 위치를 지정하거나 혹은 몇번째 모니터에서 보여질 것인지 하는 것들을 지정할 수 있습니다.

<!-- All these settings classes are used in the same way, you create an instance, set it's fields and pass it to [ofCreateWindow](ofAppRunner.html#ofCreateWindow) which creates a window, you can hold that window on a variable like: -->
이러한 모든 세팅클래스들은 같은방법으로 사용됩니다. 인스터스를 생성하고, 필드를 세팅하여 윈도우를 생성하는 [ofCreateWindow](ofAppRunner.html#ofCreateWindow)로 전달합니다. 아래처럼 이 윈도우를 배열의 형태로 가지고 있을 수 있거나:

```cpp
auto window = ofCreateWindow(settings);
```

<!-- or just ignore it if the application will only have one window. There's some examples on multiwindow applications in the examples/events folder. -->
혹은 어플리케이션이 하나의 윈도우만 가지게 될 경우 그냥 무시할 수 있습니다. examples/events 폴더에서 멀티윈도우 어플리케이션의 예제를 보실 수 있습니다.