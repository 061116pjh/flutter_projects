# flutter_projects
studying flutter


## Widget
### 1. 위젯의 개념
- 위젯은 플러터 앱의 모든 시각적인 요소를 표현한다.
- 버튼, 텍스트, 이미지 등 사용자 인터페이스의 모든 요소는 위젯으로 표현된다.
- 플러터에서는 모든 것이 위젯이라고 할 수 있다.
### 2. 위젯의 종류
- 플러터에서는 크게 두 가지 종류의 위젯을 사용한다.
#### StatelessWidget
- 한 번 그려진 후에는 변경되지 않는 위젯이다.
- 예를 들어, 앱의 로고 이미지, 정적인 텍스트를 표시하는 데 사용된다.
```
  StatelessWidget
    Text
    Image
    Container
    Row
    Column
    ListView
    ...
```
이 상속 트리에서 StatelessWidget은 최상위 부모 클래스다.
<br>
StatelessWidget을 상속하는 다양한 클래스들이 있으며, 여기에는 Text, Image, Container, Row, Column, ListView 등의 클래스가 포함된다.
<br>
Text에 대해서 좀 더 자세히 보면 아래와 같다.
```
  Object
    Diagnosticable
      DiagnosticableTree
        Widget
          StatelessWidget
            Text
```
위에서 아래로 내려갈수록 상속 관계가 깊어지며, 가장 아래에 있는 Text가 최종적인 위젯이다.
- Object: 모든 플러터 객체의 기본 클래스이다.
- Diagnosticable: 진단 정보를 제공하기 위한 추상 클래스이다.
- Diagnosticable Tree: 진단 정보를 트리 구조로 제공하기 위한 추상 클래스이다.
- Widget: 플러터의 위젯을 나타내기 위한 추상 클래스이다.
- StatelessWidget: 상태를 가지지 않는 위젯을 나타내기 위한 추상 클래스이다.
- Text: 텍스트를 나타내는 위젯이며, 주어진 텍스트를 화면에 표시할 수 있다.

#### StatefulWidget
- 상태를 가지고 있으며, 상태가 변경될 때마다 UI가 업데이트된다. 예를 들어, 사용자의 입력에 따라 동적으로 변경되는 버튼이나 폼 필드 등에 사용된다.
```
  StatefulWidget
    TextButton
    IconButton
    Checkbox
    Radio
    TextFormField
    DropdownButton
    ...
```
이 상속 트리에서 StatefulWidget은 최상위 부모 클래스이다.
<br>
StatefulWidget을 상속하는 다양한 클래스들이 있으며, 여기에는 TextButton, IconButton, Checkbox, Radio, TextFormField, DropdownButton 등의 클래스 포함된다.
<br>
TextButton에 대해서 좀 더 자세하게 보면 아래와 같다.
```
  Object
    Diagnosticable
      DiagnosticableTree
        Widget
          StatefulWidget
            MaterialButton
              TextButton
```
위에서 아래로 내려올수록 상속 관계가 깊어지며, 가장 아래에 있는 TextButton이 최종적인 위젯이다.
- Object: 모든 플러터 객체의 기본 클래스이다.
- Diagnosticable: 진단 정보를 제공하기 위한 추상 클래스이다.
- DiagnosticableTree: 진단 정보를 트리 구조로 제공하기 위한 추상 클래스이다.
- Widget: 플러터의 위젯을 나타내기 위한 추상 클래스이다.
- StatefulWidget: 상태를 가지는 위젯을 나타내기 위한 추상클래스이고 내부적으로 객체를 가진다.
- MaterialButton: 머터리얼 디자인 스타일을 가지는 버튼 위젯을 나타낸다. TextButton은 MaterialButton의 하위 클래스이다.
- TextButton: 텍스트를 보여주고 사용자 입력에 반응하는 버튼 위젯이다. 일반적으로 눌렀을 떄 어떤 작업을 수행하기 위해 사용된다.

### 3. 위젯의 계층 구조
- 플러터 앱은 위젯의 계층 구조로 이루어져 있다.
- 각 위젯은 부모 위젯과 자식 위젯을 가질 수 있으며, 이를 통해 복잡한 UI를 구성할 수 있다.
- 부모 위젯은 자식 위젯을 가지고 있으며, 자식 위젯은 다시 자신의 부모가 될 수 있다.