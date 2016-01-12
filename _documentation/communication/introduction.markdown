<!-- ## Arduino and other serial devices communication. -->
## 아두이노와 다른 시리얼 장치 통신

<!-- The communication module has classes to communicate with other devices by now through the serial protocol. This mainly allows to communicate with devices like the Arduino. There's 2 classes in this module, [ofSerial](ofSerial.html) which allows to communicate with any device through the serial protocol. It can be used to send custom commands to for example an Arduino sketch that will receive them and do something in response like turn an LED on, move a motor... It also works the other way around, you can send messages from the Arduino (or any other serial device), for example the read from a temperature sensor to openFrameworks. -->
통신 모듈은 요즈음의 다른 장치들과 시리얼 프로토콜로 통신하는 클래스를 갖습니다. 이는 주로 아두이노와 같은 장치들과 통신을 할 수 있게 합니다. [ofSerial](ofSerial.html)은 시리얼 프로토콜을 통해 어떠한 장치와도 통신할 수 있게 합니다. 신호를 받아 LED를 켠다거나 모터를 움직이게 하는 등의 스케치를 작성하여 업로드된 아두이노에게 커스텀 명령을 전송할 수 있습니다. 또한 아두이노(혹은 다른 장치)로부터 메시지를 받을 수도 있는데, 예를 들자면 온도센서의 값을 읽어 오픈프레임웍스 받아올 수 있습니다.

<!-- The second class, [ofArduino](ofArduino), is specific to the arduino, it uses a protocol called firmata to send messages to and from the arduino that way you don't need to care about implementing the communication protocol from the Arduino sketch to openFrameworks and viceversa but instead you can just send and read values directly to and from any pin in the Arduino. -->
두번째 클래스인, [ofArduino](ofArduino.html)는 아두이노만을 위한 것으로, 펌웨어라 불리는 프로토콜을 사용하여 아두이노에게 메시지를 보내거나 받을 수 있습니다. 이 방법을 사용하면 아두이노 스케치와 오픈프레임 사이에 오고갈 통신 프로토콜을 구현할 필요가 없습니다. 그냥 아두이노의 핀에서 읽은 값을 
오픈프레임웍스로 받거나, 오픈프레임웍스로 아두이노의 특정핀에 값을 직접 보낼 수 있습니다.

<!-- You can check the examples in the examples/communication folder to understand better how this works. -->
examples/communication폴더에서 예제들을 확인하여 어떻게 동작하는지 더 살펴보시기 바랍니다.