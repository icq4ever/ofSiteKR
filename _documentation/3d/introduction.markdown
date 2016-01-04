## 삼차원 그래픽 클래스및 함수 
어떠한 API(openGL, directX)를 사용하건, 3d상에 그리는것은 일반적으로 아래와 같은 것들이 고려됩니다:


- 그리길 원하는 기하학(geometry)의 표현. 이를 위해 오픈프레임웍스에서는 [ofMesh](ofMesh.html)이나 [3d primitives](of3dPrimitive.html)를 제공하고 있습니다.

- 3d 공간에 geometry를 위치시키기. 오픈프레임웍스는 [ofNode](ofNode.html) 클래스를 제공하는데,  이는 3d계에서의 변경(transformation)을 쉽게 할 수 있도록 해줍니다. 가령 위치, 회전, 크기변화 뿐만 아니라 어떤 오브젝트가 어떤 좌표나 다른 오브젝트를 바라볼 수 있도록 할 수도 있습니다. 이 모듈의 3d상에 위치시킬 수 있는 오브젝트들 또는 ofNode들(ofNode의 확장)은 [ofCamera](ofCamera.html) 또는 [ofLight](/documentation/gl/ofLight.html)가 있습니다.

- 씬을 바라볼 카메라의 종류 혹은 씬을 재현할때 시점변환을 지정하기. 오픈프레임웍스는 두가지 타입의 카메라를 사용하여 각각 다른 시점 세팅으로 씬을 그려낼 수 있습니다. [ofCamera](ofCamera.html)는 FOV(field of vision)과 같은 파타메터들을 조정하여 시점을 세팅할 수 있습니다. [ofNode](ofNode.html)는 아주 쉽게 시점을 3d공간에 위치키시거나 씬에서 다른 특정 오브젝트를 바라볼수 있도록 해줍니다. [ofEasyCam](ofEasyCam.html)은 씬에서의 카메라조작을 마우스로 가능하게 해줍니다.

오픈프레임웍스에서 3d geometry를 다룰때 ofNode를 사용할 수도 있지만, [of3dPrimitive](of3dPrimitive.html)를 사용하는것을 추천해드립니다. 이것으로 3d 공간에서 아주 쉽게 위치시킬 수 있습니다. [of3dPrimitive](of3dPrimitive.html)는 또한 geometry를 각 플랫폼에서 가장 빠르게 그려내는 최적화된 방법이기도 합니다.

위에서 언급한 방법이 뭔가를 아주 쉽게 그릴수 있음에도, 씬에 몇몇 오브젝트들을 위치시키길 원한다면, 이 모듈에서 위에서 언급한 클래스 이외에, 구, 원뿔, 박스 등과 같이 가장 많이 사용되는 기초 기하들을 빠르게 그려낼 수 있는 함수들도 갖고 있습니다. [of3dPrimitive](of3dPrimitive.html)를 사용하는것을 추천드립니다.
