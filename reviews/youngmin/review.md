# (주관적인) 개선하면 좋을 사항

본 문서는 제출자가 주관적으로 판단한 `개선하면 좋을 사항` 을 기술한 문서입니다.

## TL:DR

## Details

### 1. 코드 스타일 관점

#### 1) linter 에서 제시하는 경고 해결

> dart linter 가 정적 분석으로 미리 제시할 수 있는 `warning 해결` 하기.

##### (1) `prefer_const_constructors` 따르기

**❔ 이유:**

- (Widget 선언이 저부하 이긴 하지만) 성능 향상을 위하여 const 로 선언할 수 있는 widget 은 모두 const 로 선언.

**✅ 방법:**

- `const` 로 선언할 수 있는 모든 곳을 `const` 로 선언 하기.

---

##### (2) `constant_identifier_names` 따르거나, 따르지 않는 lint rule 로 선언하기

**❔ 이유:**

- Effective Dart(=code style guide for Dart) 을 보면, constant 이름 선언 스타일로 `lowerCamelCase` 을 추천하고 있음.
- 이는 다른 언어의 `SCREAMING_CAPS` 스타일과 다른데, 주요한 이유는
  1. `SCREAMING_CAPS`는 많은 경우, 예쁘지 않게 보임.
  2. `const` type의 변수는 종종 `final` 로 변경될 수 있는데, 이럴 때 이름변경을 해야함.

**✅ 방법:**

- `SCREAMING_CAPS` 로 선언된 변수의 이름을 `lowerCamelCase` 로 변경

```dart
// before
static const ROOT = '/';

// after
static const root = '/';
```

**🚧 문제?**

- 다른 언어에서 상수 선언하는 스타일과 달라, 이 변수가 상수인지 이름에서 알기 쉽지 않음.

**✔️ 대안:**

- `analysis_options.yaml` 에 `constant_identifier_names` lint rule 로 설정하고, (다른 개발자를 위해) lint rule 설정 이유를 주석을 남겨 두기.

```yaml
linter:
  rules:
    - constant_identifier_names: false # INFO: 다른 언어의 constant 와 같은 스타일을 가져가기 위함
```

[Effective Dart: constant](https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names) 참고

---

##### (3) `unnecessary_overrides` 경고 해결

**❔ 이유:**

- 아무것도 override 해서 사용하지 않음에도 코드에 남아있으면,
  1. 추후에 원하는 부분을 찾으려할 때 필요 없는 부분을 읽어야하는 경우가 생길 수 있음.
  2. 필요 없는 부분이 남아있으니, 코드가 잘 관리되지 않는다는 느낌을 줄 수도 있음.

**✅ 방법:**

- 중복되는 `override method` 제거하기.

```dart
// before
...
  @override
  void onReady() async {
    super.onReady();
  }

  // or
  @override
  void initState() {
    super.initState();
  }
...

// after
// - 제거
```

---

##### (4) relative import 대신 package import 로 변경하기

**❔ 이유:**

- relative import 와 absolute import 를 섞어서 사용하면 혼란스러워 보임.

**✅ 방법:**

- relative import 를 모두 `absolute import` 로 변경 하기

```dart
// before
import '../app/root/pages/root_page.dart';
import '../app/wine/bindings/wine_binding.dart';
import '../app/wine/pages/wine_page.dart';

// after
import 'package:epicone_review/lib/app/root/pages/root_page.dart';
import 'package:epicone_review/lib/app/wine/bindings/wine_binding.dart';
import 'package:epicone_review/lib/app/wine/pages/wine_page.dart';
// or
import 'app/root/pages/root_page.dart';
import 'app/wine/bindings/wine_binding.dart';
import 'app/wine/pages/wine_page.dart';
```

- `analysis_options.yaml` 에 `avoid_relative_lib_imports` 추가하기

```yaml
linter:
  rules:
    - avoid_relative_lib_imports
```

[Lint Rule](https://dart.dev/tools/linter-rules/avoid_relative_lib_imports) 참고

---

#### 2) Linter 가 찾지 못하는 잠재적 문제 줄이기

##### (1) Nullable 에러 처리

```dart
// lib/app/wine/pages/wine_page.dart
// line 127
...
                                  Text(item.rating!.average, // ! rating 은 null 이 될 수 있음.
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium),
...
```

**❔ 이유:**

- `Wine` 이라는 개념모델의 `Rating` 이라는 member 가 nullable 임에도 따로 처리하지 않아 프로그램 오류를 발생시킬 수 있음.

**✅ 방법:**

- `Wine` 의 `Rating` 이 null 인 경우, 다른 화면을 보여주도록 처리.
- `Rating` 이 null이 될 수 없는 경우에는, nullable 을 non-nullable 로 변경.

---

##### (2) Error 에 대해 Exception 처리하기

```dart
// lib/app/wine/repositories/wine_repository.dart
// line 15
class WineRepositoryImpl implements WineRepository {
  WineRepositoryImpl();

  @override
  Future<List<Wine>> fetchWine() async {
    Uri uri = Uri.parse('https://api.sampleapis.com/wines/rose');
    final result = await http.get(uri); // ! 만약 호출이 실패한다면?

    // ! 만약 역직렬화가 실패한다면?
    var data =
        (jsonDecode(result.body) as List).map((e) => Wine.fromJson(e)).toList();

    return data;
  }
}
```

**❔ 이유:**

- 에러가 발생하는 경우, 앱이 중단되어 사용자에게 나쁜 경험을 줌.

**✅ 방법:**

- `try-catch-throw` 를 통해 error 처리를 하고, 이에 맞춰서 화면에서도 error 내용을 알 수 있게 처리함.

---

##### (3) 관심사 분리를 더욱 엄격히 하기

```dart
// lib/app/wine/pages/wine_page.dart
// line 67
...
                          child: CupertinoTextField(
                            keyboardType: TextInputType.text,
                            placeholder: 'search',
                            onChanged: (value) {
                                // ! 입력값을 받아 처리하는 것은 화면의 논리가 아니라, 애플리케이션의 로직이라 판단함.
                              setState(() {
                                final regex = RegExp(value.toLowerCase());
                                _wines = _wineController.wines.where((p0) {
                                  return regex
                                          .hasMatch(p0.wine.toLowerCase()) ||
                                      regex.hasMatch(p0.winery.toLowerCase()) ||
                                      regex.hasMatch(p0.location.toLowerCase());
                                }).toList();
                              });
                            },
                            prefix: Padding(
                              padding: EdgeInsets.only(
                                  left: 9, top: 6, right: 9, bottom: 6),
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
...
```

**❔ 이유:**

- 화면과 애플리케이션 논리가 섞이게 되면, 추후에 코드를 수정하거나 할 때 어디를 찾아가야할지 헷갈리게 함.

**✅ 방법:**

- 현재 [GetX](https://pub.dev/packages/get) 의 `Controller` 를 사용하였기 때문에, 사용자 입력값을 처리할 수 있도록 Controller 생성하거나 기존의 `WineController` 를 활용.

##### (4) `~Page` 라는 클래스 이름 변경

**❔ 이유:**

- (공식 예제에도 ~Page 라는 이름을 많이 사용하지만) `Page` 라는 flutter framework 에는 동일이름의 Route 관련 클래스, 심지어 **Widget** 도 아닌 클래스가 있기 때문에 코드를 읽는 사람에게 잘못된 개념을 줄 수 있음.

**✅ 방법:**

- `~Screen` 이나, SwiftUI 에서 사용하는 `~View` 라는 용어를 사용.

```dart
// before
class WinePage extends StatefulWidget {
    ...
}

// after
class WineScreen extends StatefulWidget {
    ...
}
```

---

##### (5) `Controller` 클래스 이름 변경

**❔ 이유:**

- Controller, 즉 조정자, 라는 이름은 다소 추상적이어서 이름이 많은 의미를 전달하지 못하기 때문에 클래스 이름만 보고 어떤 역할을 할지 가늠할 수 없음.

**✅ 방법:**

- [GetX](https://pub.dev/packages/get) 의 `Controller` 를 상속하여 그 조어를 계속 사용해야하는 경우, 역할을 설명할 수 있는 상세한 이름을 추가.
  - e.g. `WineController` -> `WineFetchController` / `RootController` -> `ThemeModeController`

### 2. 구조의 관점

#### 1) 특정 패키지에 의존되지 않는 구조로 변경

**❔ 이유:**

- 앱의 특정부분이 [GetX](https://pub.dev/packages/get) 라는 패키지에 의존적인 구조임. (e.g. bindings / controllers)
- 만약 패키지를 변경하게 된다면 전체 구조를 변경해야할 일이 생길 수 있음.

**✅ 방법:**

- Application Logic 과 UI 를 연결하는 부분을 BLoC 패턴으로 구현. BLoC 의 상태가 변경 되었다는 클래스는 현재 나와있는 어떤 상태관리 패키지로 구현 가능하기 때문.
