# 구조

이 문서는 `제출자가 분석한 구조에 대해 설명하는 문서` 임.

## TL:DR

> 각 feature 별로 구분한 후, [GetX](https://pub.dev/packages/get) 기본 구조인 `UI-controller-binding` 으로 코드를 분리함.

## Details

각 기능 / 역할 별로 코드를 분리하여 추후 본인 혹은 타 개발자가 특정 기능에 대한 자세한 내용을 확인하고 싶을 때 쉽게 찾아갈 수 있도록 함.

[GetX](https://pub.dev/packages/get) 라 불리는 라이브러리를 이용하여, `State Management`, `Navigation`, `Dependency Injection` 을 처리하고 있음.
역할별로 코드를 아래와 같이 나누어 개발자의 이해를 도움. 그리고 이는 [GetX](https://pub.dev/packages/get) 를 사용할 때, 자주 사용하는 폴더 구조임.

```plaintext
.
├── pages
├── controllers
├── bindings
...
├── models (추가로 필요한 경우)
└── repositories (추가로 필요한 경우)
```

### 1. pages

화면 요소에 대한 코드를 모아둔 directory.
화면부에서 애플리케이션 로직에 접근해야하는 경우, 미리 [GetX](https://pub.dev/packages/get) 를 이용해 binding 해둔 [controller](#2-controllers) 을 불러와서 사용.

e.g. 와인 목록을 보여주는 화면은 `WinePage` 에 정의.

### 2. controllers

화면 요소에서 애플리케이션 로직에 접근할 수 있도록 하는 다리 역할의 `Controller` 를 모아둔 directory.

e.g. `WineController` 에서 와인 목록 조회를 화면에서 접근할 수 있도록 `fetchWine` 이라는 method 를 선언하고, `WineRepository` 의 와인 목록 조회를 연결.

### 3. bindings

특정 화면으로 이동할 때, 의존성(e.g. [controller](#2-controllers))을 묶어 주입하는 Binding 의 확장 클래스를 선언한 directory.

e.g. `WinePage` 라는 화면에서 `WineController` 라는 애플리케이션 로직 요소를 사용해야하기 때문에 `WineBinding` 이라는 요소를 선언하여 화면과 묶도록 설정하고, 이를 route 설정할 때 주입.

### 4. models

domain, 즉 사업이나 기능에 관련된 개념, 을 추상화한 model 클래스를 모아둔 directory.
model의 **immutability** 기능 및 **JSON ser/deserialization** 과정을 해주는 코드를 자동 생성하기 위해 [build_runner](https://pub.dev/packages/build_runner) / [freezed](https://pub.dev/packages/freezed) / [json_serializable](https://pub.dev/packages/json_serializable) 를 사용하였음.

e.g. 서비스의 핵심 기능인 와인 조회를 위해 와인에 대한 정보를 추상화한 `Wine` 클래스를 정의하고 있음.

### 5. repositories

외부에서 데이터를 받아오는 과정을 추상화한 `repository` 패턴 클래스를 모아둔 directory.
데이터를 가져오는 계약 혹은 약속을 interface 로 만들고 `~Impl` 이라는 이름의 클래스에서 구현하는 방식으로 되어 있음.

e.g. `WineRepository` 의 계약을 구현한 `WineRepositoryImpl` HTTP 통신을 통해 sampleapis 라는 곳에서 Wine 목록을 불러오도록 처리하고 있음.
