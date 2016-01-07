## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

라즈베리파이
============

<!-- ## What is the Raspberry Pi? -->
## 라즈베리파이가 뭐죠?

<!-- The [Raspberry Pi](http://www.raspberrypi.org/) is a small, inexpensive ARM-based computer that is often used with Linux. Compared to a modern Desktop computer the Raspberry Pi is limited in RAM and CPU power. However, its chipset supports modern technologies such as OpenGL ES2 and hardware accelerated audio/video processing. These capabilities make the Raspberry Pi an exceptional platform for multimedia applications. -->
[라즈베리파이](http://www.raspberrypi.org/)는 작고 값싼 ARM기반의 컴퓨터로, 주로 리눅스로 동작합니다. 현대적인 데스크탑 컴퓨터와 비교하여 라즈베리파이는 CPU 성능과 RAM용량이 제한적입니다만, OpenGL ES2 및 하드웨어가속 오디오/비디오처리 등 칩셋에서 최신 기술을 지원합니다. 이러한 특징때문에 라즈베리파이는 멀티미디어 어플리케이션으로 특별한 플랫폼입니다.

<!-- ## openFrameworks on the Raspberry Pi -->
## 라즈베리파이상에서의 오픈프레임웍스
<!-- Similiar to the desktop-based platforms, openFrameworks provides a common interface to create applications that incorporate real-time graphics, shaders, audio/video processing and networking. openFrameworks addons (commonly referred to as ofxAddons) provide a common pathway to many popular technologies like OpenCv, OSC. -->
데스크탑 기반의 플랫폼과 마찬가지로, 오픈프레임웍스는 실시간 그래픽, 쉐이더, 오디오/비디오 처리, 네트워크처리 등을 통합한 어플리케이션 제작을 위한 범용 인터페이스를 제공합니다. OpenCv, OSC와 같은 다양한 기술들을 추가할 수 있는 오픈프레임웍스 애드온(보통 ofxAddons라고 합니다)도 함께 제공합니다.

openFrameworks 0.9.0 supports the Raspberry Pi via the recommended Linux distribution Raspbian "Jessie" (hard float). Wheezy can be used with older versions of openFrameworks (0.84 recommended). [See here for the older versions of this guide that talk about Wheezy](Raspberry-Pi-Wheezy-index.html)
오픈프레임웍스 0.9.0에서는 라즈베리 지원을 위해 Raspbian "Jessie" (hard float) 리눅스 배포판을 추천합니다. Wheezy는 구 버전의 오픈프레임웍스 (0.84를 추천해드립니다)와 사용이 가능합니다. [Wheey를 위한 구 버전의 가이드는 이곳을 참고하세요](Raspberry-Pi-Wheezy-index.html)

<!-- If you are an existing openFrameworks/RPi user you may wish to read [what's different in 0.9.0](Raspberry-Pi-8-9-Transition-Notes.html)  -->
만약 이미 openFrameworks/RPi를 갖고 계신다면, [0.9.0에서 달라진점](Raspberry-Pi-8-9-Transition-Notes.html)을 읽어주십시오.

<!-- ## Getting Started -->
## 시작하기

* [라즈베리파이 워크플로우 개요](Raspberry-Pi-Workflow-Overview.html)
* [라즈베리파이 시작하기](Raspberry-Pi-Getting-Started.html)
* [라즈베리파이 문제해결](Raspberry-Pi-Troubleshooting.html)

## 고급

* [라즈베리파이 크로스컴파일 가이드](Raspberry-Pi-Cross-compiling-guide.html)

## 커뮤니티
* [오픈프레임웍스 ARM 포럼](http://forum.openframeworks.cc/c/arm)


### 오픈프례임웍스 + 라즈베리파이 = <3

'''}
